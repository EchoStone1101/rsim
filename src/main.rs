#[allow(dead_code)]
#[allow(unused)]

use rsim_pipe::{Loader, ELFArch, SimError, RegID, InstCode, Inst, HLT_ADDR, Program, Stage};
use colored::Colorize;
use clap::Parser;
use std::io;
use std::io::Write;
use std::process;

/// Clap command line settings
#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Cli {
    /// Target ELF file
    elf: String,

    /// Interactive mode
    #[arg(short, long)]
    interactive: bool,

    /// Quiet mode
    #[arg(short, long)]
    quiet: bool,

    /// Count CPI from main()
    #[arg(short, long)]
    count_from_main: bool,

    /// Enable forwarding
    #[arg(short, long)]
    forward: bool,

    /// Use multi-cycle SEQ simulator instead of PIPE
    #[arg(short, long)]
    sequential: bool,
}


/// Simulate the execution of `prog`, starting at _start() function.
/// We only support:
/// - All RV32I/64I Instructions (but those concerning memory atomicity)
/// - Part of RV64M Instructions
/// - Simulated `puts()` for printing string
/// We do not support:
/// - `printf()` (restricted by Rust)
/// - Other library functions that uses `ecall`.
#[allow(unused)]
fn sim_seq(prog: &mut Program, quiet: bool, interactive: bool, count_from_main: bool) {
    if !quiet {
        print!("{}", "[Debug] ".green());
        println!("entry point: {:#x}, sp = {:#x}", prog.entry_point, prog.registers.read(RegID::X2).unwrap());
    }

    let mut next_program_counter = prog.program_counter;
    let start_pc = if count_from_main { 
        let main = prog.funcs.iter().find(|(_,_,name)| name.eq("main"));
        match main {
            Some(&(addr,_,_)) => addr,
            None => prog.entry_point,
        }
    }
    else { prog.entry_point };

    let mut cycles: u8;
    let mut cpi = Vec::new();
    let mut start_cpi_collection = false;
    loop {
        cycles = 0;

        // Update PC
        
        // Simulate library calls.
        if let Some(key) = prog.simulated_library_funcs.get(&next_program_counter) {
            match key.as_str() {
                "puts" => {
                    let arg0 = prog.registers.read(RegID::X10).unwrap();
                    let str = string_from_memory(prog, arg0);
                    if str.is_none() {
                        print!("{}", "[Warning] ".yellow().bold());
                        println!("Cannot access memory at {:x}", arg0);
                        prog.program_counter = HLT_ADDR - 4;
                    }
                    else {
                        println!("{} {}", "puts():".green(), str.unwrap());
                    }
                },
                _ => unreachable!(),
            }
            // Skip the actual control transfer and fall back to next instruction
            next_program_counter = prog.program_counter + 4;
        }

        prog.program_counter = next_program_counter;

        if prog.program_counter == HLT_ADDR {
            println!("{} {}", "[Debug]".green(), "Halt from fetching HLT_ADDR");
            break;
        }

        // Interactive debugging
        if interactive {
            if prog.breakpoints.contains(&prog.program_counter) {
                print!("{}", "[Debug] ".green());
                println!("Hit breakpoint at {:#x}", prog.program_counter);
                prog.pause = 0;
            }
            if prog.pause == 0 {
                interactive_cli(prog);
            }
            else {
                prog.pause -= 1;
            }
        }

        if start_pc == prog.program_counter {
            start_cpi_collection = true;
        }

        let inst = Inst::new();
        // Fetch
        let inst = inst.advance(prog);
        cycles += 1;
        if let Err(next_pc) = inst {
            //println!("\t==> {:x}", next_pc);
            next_program_counter = next_pc;
            cpi.push(cycles);
            continue;
        }
        let inst = inst.unwrap();
        if !quiet {println!("{:x}:\t {:x?}", prog.program_counter, inst.code())}

        // Decode ~ Writeback
        let mut loop_inst = Some(inst);
        loop {
            let inst = loop_inst.take().unwrap().advance(prog);
            cycles += 1;
            if let Err(next_pc) = inst {
                //println!("\t==> {:x}", next_pc);
                next_program_counter = next_pc;
                break;
            }
            _ = loop_inst.insert(inst.unwrap());
        }
        if start_cpi_collection {
            cpi.push(if cycles < 5 {5} else {cycles});
        }
    }

    if !quiet {
        print!("{}", "[Debug] ".green());
        println!("Registers:\n{}", prog.registers);
        print!("{}", "[Debug] ".green());
        let sum = cpi.iter().map(|&c| c as u64).sum::<u64>();
        println!("CPI: {} ({} instructions, {} cycles)", sum as f64 / cpi.len() as f64, cpi.len(), sum);
    }
}


/// Simulate the execution of `prog`, starting at _start() function, in pipeline.
/// The pipeline simulation is in fact done by keeping multiple `Inst`s, calling
/// `advance()` method from rear to front. 
/// Data hazards are handled internally in `advance()`, where the returned `Inst`
/// remains the same until forwarding can be done, approximating "stalling".
/// Control hazards are handled here, when the returned `Inst` is `Err(correctPC)`.
/// The pipeline is emptied ("bubbling"), then we start from the correct PC. 
#[allow(unused)]
fn sim_pipeline(prog: &mut Program, quiet: bool, interactive: bool, count_from_main: bool) {
    if !quiet {
        print!("{}", "[Debug] ".green());
        println!("entry point: {:#x}, sp = {:#x}", prog.entry_point, prog.registers.read(RegID::X2).unwrap());
    }

    let mut next_program_counter = prog.program_counter;
    let start_pc = if count_from_main { 
        let main = prog.funcs.iter().find(|(_,_,name)| name.eq("main"));
        match main {
            Some(&(addr,_,_)) => addr,
            None => prog.entry_point,
        }
    }
    else { prog.entry_point };

    let mut cycles = 0u64;
    let mut instructions = 0u64;
    let mut data_hazards = 0u64;
    let mut control_hazards = 0u64;
    let mut start_cpi_collection = false;

    let mut pipeline = [Option::<Inst>::None; 5];
    // Extra slot for pipelining 2-cycle multiplications
    let mut execute_mult = Option::<Inst>::None;
    let mut empty = false;

    while !empty {
        empty = true;
        prog.registers.update_forward();

        // Simulate one cycle. Advance instructions from rear to front.
        // Writeback
        if let Some(mut inst) = pipeline[Stage::Writeback as usize].take() {
            empty = false;
            let pc = inst.pc();
            match inst.advance(prog) {
                Ok(inst) => {
                    // Writeback should not stall
                    unreachable!();
                },
                Err(_) => {
                    // Instruction retired
                    if start_pc == pc {
                        start_cpi_collection = true;
                    }
                    if start_cpi_collection {
                        instructions += 1;
                    }
                },
            }
        }
        // Memory
        if let Some(mut inst) = pipeline[Stage::Memory as usize].take() {
            empty = false;
            match inst.advance(prog) {
                Ok(inst) => {
                    if inst.stage() == Stage::Writeback {
                        // Writeback never stalls, so it should now be empty
                        _ = pipeline[Stage::Writeback as usize].insert(inst);
                    }
                    else {
                        // For now, memory access should not stall
                        unreachable!();
                    }
                },
                Err(_) => {
                    // Bad memory access
                    next_program_counter = HLT_ADDR;
                    // Bubble all later instructions
                    for bubble in pipeline[..Stage::Memory as usize].iter_mut() {
                        _ = bubble.take();
                    }
                    _ = execute_mult.take();
                    if start_cpi_collection {
                        instructions += 1;
                    }
                },
            }
        }
        // Execute-Mult
        if let Some(mut inst) = execute_mult.take() {
            empty = false;
            if pipeline[Stage::Memory as usize].is_none() {
                match inst.advance(prog) {
                    Ok(inst) => {
                        if inst.stage() == Stage::Memory {
                            _ = pipeline[Stage::Memory as usize].insert(inst);
                        }
                        else {
                            // Phase-II multiplication does not stall
                            unreachable!();
                        }
                    },
                    Err(_) => {
                        // Multiplication does not fail
                        unreachable!();
                    },
                }
            }
            else {
                // Stall otherwise
                _ = execute_mult.insert(inst);
            }
        }
        // Execute
        if let Some(mut inst) = pipeline[Stage::Execute as usize].take() {
            empty = false;
            match inst.code() {
                InstCode::Mul(_,_,_) | InstCode::Mulh(_,_,_) => {
                    // Multiplication goes to phase II
                    if execute_mult.is_none() {
                        match inst.advance(prog) {
                            Ok(inst) => {
                                if inst.stage() == Stage::Execute && inst.progress() == 1 {
                                    _ = execute_mult.insert(inst);
                                }
                                else { unreachable!() }
                            },
                            Err(_) => {
                                // Multiplication does not fail
                                unreachable!();
                            },
                        }
                    }
                    else {
                        // Stall otherwise
                        _ = pipeline[Stage::Execute as usize].insert(inst);
                    }
                },
                InstCode::Div(_,_,_) | InstCode::Divw(_,_,_) |
                InstCode::Rem(_,_,_) | InstCode::Remw(_,_,_) => {
                    // Division blocks here
                    if inst.progress() <= 38 || pipeline[Stage::Memory as usize].is_none() {
                        match inst.advance(prog) {
                            Ok(inst) => {
                                if inst.stage() == Stage::Memory {
                                    _ = pipeline[Stage::Memory as usize].insert(inst);
                                }
                                else { 
                                    // Blocks at Execute
                                    _ = pipeline[Stage::Execute as usize].insert(inst);
                                }
                            },
                            Err(_) => {
                                // Divide by zero
                                next_program_counter = HLT_ADDR;
                                // Bubble all later instructions
                                for bubble in pipeline[..Stage::Execute as usize].iter_mut() {
                                    _ = bubble.take();
                                }
                                if start_cpi_collection {
                                    instructions += 1;
                                }
                            },
                        }
                    }
                    else {
                        // Stall otherwise
                        _ = pipeline[Stage::Execute as usize].insert(inst);
                    }
                },
                _ => {
                    // Other instructions are expected to go to Memory
                    if pipeline[Stage::Memory as usize].is_none() {
                        match inst.advance(prog) {
                            Ok(inst) => {
                                if inst.stage() == Stage::Memory {
                                    _ = pipeline[Stage::Memory as usize].insert(inst);
                                    if matches!(inst.code(), InstCode::Jal(_,_)) || matches!(inst.code(), InstCode::Jalr(_,_,_)) {
                                        // Should have taken branch
                                        next_program_counter = inst.next_pc();
                                        // Bubble all later instructions
                                        for bubble in pipeline[..Stage::Execute as usize].iter_mut() {
                                            _ = bubble.take();
                                        }
                                        if start_cpi_collection {
                                            control_hazards += 1;
                                        }
                                    }
                                }
                                else { unreachable!() }
                            },
                            Err(branch) => {
                                // Should have taken branch
                                next_program_counter = branch;
                                // Bubble all later instructions
                                for bubble in pipeline[..Stage::Execute as usize].iter_mut() {
                                    _ = bubble.take();
                                }
                                if start_cpi_collection {
                                    control_hazards += 1;
                                    instructions += 1;
                                }
                            },
                        }
                    }
                    else {
                        // Stall otherwise
                        _ = pipeline[Stage::Execute as usize].insert(inst);
                    }

                }
            }
        }
        // Decode
        if let Some(mut inst) = pipeline[Stage::Decode as usize].take() {
            empty = false;
            if pipeline[Stage::Execute as usize].is_none() {
                match inst.advance(prog) {
                    Ok(inst) => {
                        if inst.stage() == Stage::Execute {
                            _ = pipeline[Stage::Execute as usize].insert(inst);
                        }
                        else {
                            // Waiting for locked register
                            _ = pipeline[Stage::Decode as usize].insert(inst);
                            if start_cpi_collection {
                                data_hazards += 1;
                            }
                        }
                    },
                    Err(_) => {
                        // Decode never fails
                        unreachable!();
                    },
                }
            }
            else {
                // Stall otherwise
                _ = pipeline[Stage::Decode as usize].insert(inst)
            }
        }

        // Update PC and Fetch
        if let Some(key) = prog.simulated_library_funcs.get(&next_program_counter) {
            // Simulate library calls. 
            empty = false;
            let mut stall = false;
            match key.as_str() {
                "puts" => {
                    let arg0 = prog.registers.read(RegID::X10);
                    if arg0.is_none() {
                        // Data hazard from reading Reg::A0. Stall.
                        stall = true;
                    }
                    else {
                        let arg0 = arg0.unwrap();
                        let str = string_from_memory(prog, arg0);
                        if str.is_none() {
                            print!("{}", "[Warning] ".yellow().bold());
                            println!("Cannot access memory at {:x}", arg0);
                            prog.program_counter = HLT_ADDR - 4;
                        }
                        else {
                            println!("{} {}", "puts():".green(), str.unwrap());
                        }
                    }
                },
                _ => unreachable!(),
            }
            if !stall {
                // Skip the actual control transfer and fall back to next instruction
                next_program_counter = prog.program_counter + 4;
            }
            else {
                if start_cpi_collection {
                    cycles += 1;
                    data_hazards += 1;
                }
                // Keep fetching from this special address
                continue;
            }
        }
        prog.program_counter = next_program_counter;

        if prog.program_counter == HLT_ADDR {
            println!("{} {}", "[Debug]".green(), "Fetching from HLT_ADDR");
        }
        if interactive {
            if prog.breakpoints.contains(&prog.program_counter) {
                print!("{}", "[Debug] ".green());
                println!("Hit breakpoint at {:#x}", prog.program_counter);
                prog.pause = 0;
            }
            if prog.pause == 0 {
                interactive_cli(prog);
            }
            else {
                prog.pause -= 1;
            }
        }
        if prog.program_counter != HLT_ADDR && pipeline[Stage::Decode as usize].is_none() {
            let inst = Inst::new();
            let inst = inst.advance(prog);
            match inst {
                Ok(inst) => {
                    assert!(inst.stage() == Stage::Decode);
                    empty = false;
                    next_program_counter = inst.next_pc();
                    if !quiet { println!("{:x}:\t {:x?}", prog.program_counter, inst.code()) }
                    _ = pipeline[Stage::Decode as usize].insert(inst);
                },
                Err(_) => {
                    // Invalid instruction
                    next_program_counter = HLT_ADDR;
                }
            }
        }
        else { /* Stall otherwise */ }

        if start_cpi_collection {
            cycles += 1;
        }
    }

    if !quiet {
        print!("{}", "[Debug] ".green());
        println!("Registers:\n{}", prog.registers);
        print!("{}", "[Debug] ".green());
        println!("CPI: {} ({} instructions, {} cycles)", cycles as f64 / instructions as f64, instructions, cycles);
        print!("{}", "[Debug] ".green());
        println!("Data hazards (stall in Decode): {}", data_hazards);
        print!("{}", "[Debug] ".green());
        println!("Control hazards (insert bubbles): {}", control_hazards);
    }
}

/// Read a C-style string stored in program memory.
fn string_from_memory(prog: &mut Program, addr: u64) -> Option<String> {
    let mut bytes = Vec::new();
    let mut addr = addr;
    loop {
        match prog.mem_load(addr, 1, false) {
            Some((data, rem)) => {
                if rem != 0 {
                    return None;
                }
                bytes.push(data[0]);
                addr += 1;
                if data[0] == 0u8 {
                    break;
                }
            },
            None => return None,
        }
    }
    Some(String::from_utf8(bytes).unwrap())
}

/// Disassemble function.
fn disassemble(name: &str, addr: u64, sz: usize, prog: &mut Program) {
    println!("\nDisassembly of <{}>:", name);
    let mut cur = 0usize;

    while cur < sz {
        let pc = addr + cur as u64;
        match prog.mem_load(pc, 4, true) {
            Some((data, rem)) if rem == 0  => {
                let raw = u32::from_le_bytes(data.try_into().unwrap());
                let (code, len) = InstCode::parse((raw & 0xFFFF) as u16, (raw >> 16) as u16);
                if pc == prog.program_counter {
                    print!("===>");
                }
                println!("\t{:x}:\t {:x?}", pc, code);
                cur += len / 8;
            },
            _ => {
                println!("Cannot access memory at {:#x}", pc);
                return;
            }
        }
    }
}

/// Print usage.
fn print_usage() {
    println!("h                    - Show this message.");
    println!("pc                   - Print the program counter.");
    println!("p reg                - Print the value of register reg.");
    println!("pa                   - Dump the register file.");
    println!("x/n addr             - Dump n bytes starting from (hex) addr.");
    println!("disass (func)        - Disassembly current or the given function.");
    println!("si (n)               - Step by 1 or n step.");
    println!("c                    - Continue until pauses.");
    println!("b addr/func          - Insert breakpoint at (hex) addr or function.");
    println!("ib                   - Show all breakpoints.");
    println!("d n                  - Delete n-th breakpoint.");
    println!("q                    - Quit rsim.");
}

/// Interactive debugging
fn interactive_cli(prog: &mut Program) {
    let mut line = String::new();
    let prompt = "(rsim) ";

    loop {
        print!("{}", prompt);
        io::stdout().flush().unwrap();

        line.clear();
        if let Err(e) = io::stdin().read_line(&mut line) {
            print!("{}", "[Fatal] ".red().bold());
            println!("IO error: {:?}", e);
            process::exit(-1);
        }

        let tokens: Vec<&str> = line.split_whitespace().collect();

        if tokens.is_empty() {
            return;
        }
        
        if tokens[0].starts_with("h") {
            print_usage();
        }
        else if tokens[0].starts_with("pc") {
            let pc = prog.program_counter;
            match prog.mem_load(pc, 4, true) {
                Some((data, rem)) if rem == 0  => {
                    let raw = u32::from_le_bytes(data.try_into().unwrap());
                    let (code, _) = InstCode::parse((raw & 0xFFFF) as u16, (raw >> 16) as u16);
                    println!("\t{:#x} ==> {:x?}", pc, code);
                },
                _ => {
                    println!("\t{:#x} ==> Cannot access memory", pc);
                }
            }
        }
        else if tokens[0].starts_with("pa") {
            println!("{}", prog.registers);
        }
        else if tokens[0].starts_with("q") {
            process::exit(0);
        }
        else if tokens[0].starts_with("p") {
            if tokens.len() >= 2 {
                let reg = prog.registers.registers
                    .iter().find(|reg| tokens[1].eq_ignore_ascii_case(reg.id.abi_name().as_str()));
                if let Some(reg) = reg {
                    println!("\t{}\t: {:016x}", reg.id.abi_name(), reg.value);
                }
                else {
                    println!("Unknown register name.");
                }
            }
            else {
                println!("No register specified.");
            }
        }
        else if tokens[0].starts_with("x") {
            let split: Vec<&str> = tokens[0].split("/").collect();
            let len = usize::from_str_radix(split.last().unwrap(), 10);
            if let Err(_) = len {
                println!("Bad length.");
                continue;
            }
            let sz = len.unwrap();
            if tokens.len() <= 1 {
                println!("No address specified");
                continue;
            }
            let addr = u64::from_str_radix(tokens[1].to_lowercase().trim_start_matches("0x"), 16);
            if let Err(_) = addr {
                println!("Bad address format.");
                continue;
            }
            let addr = addr.unwrap();

            match prog.mem_load(addr, sz, false) {
                Some((data, rem)) if rem == 0 => {
                    for (idx, byte) in data.iter().enumerate() {
                        if idx % 16 == 0 {
                            print!("{:x}:\t", addr);
                        }
                        print!("{:02x} ", *byte);
                        if idx % 16 == 7 {
                            print!(" ");
                        }
                        if idx % 16 == 15 {
                            println!();
                        }
                    }
                    println!();
                },
                _ => {
                    println!("Cannot access memory at {:#x}", addr);
                }
            }
        }
        else if tokens[0].starts_with("si") {
            let mut steps = 1;
            if tokens.len() >= 2 {
                let n = usize::from_str_radix(tokens[1], 10);
                if let Err(_) = n {
                    println!("Bad number.");
                    continue;
                }
                steps = std::cmp::max(n.unwrap(), 1);
            }
            prog.pause = steps - 1;
            return;
        }
        else if tokens[0].starts_with("c") {
            prog.pause = usize::MAX;
            return;
        }
        else if tokens[0].starts_with("b") {
            if tokens.len() >= 2 {
                // b func
                if let Some((addr,_,_)) = prog.funcs.iter().find(|(_,_,name)| name.eq(tokens[1])) {
                    prog.breakpoints.push(*addr);
                    println!("Breakpoint {} at {:#x}", prog.breakpoints.len(), *addr);
                    continue;
                }

                // b addr
                let addr = u64::from_str_radix(tokens[1].to_lowercase().trim_start_matches("0x"), 16);
                if let Err(_) = addr {
                    println!("Bad address.");
                    continue;
                }
                let addr = addr.unwrap();
                prog.breakpoints.push(addr);
                println!("Breakpoint {} at {:#x}", prog.breakpoints.len(), addr);
            }
        }
        else if tokens[0].starts_with("ib") {
            println!("Breakpoints:");
            for (idx, addr) in prog.breakpoints.iter().enumerate() {
                println!(" {} - {:#x}", idx, addr);
            }
        }
        else if tokens[0].starts_with("disass") {
            if tokens.len() <= 1 {
                // disassemble current
                if let Some((addr, sz, name)) = prog.funcs
                    .iter().find(|(addr, sz, _)| {
                        prog.program_counter >= *addr &&
                        prog.program_counter < *addr + (*sz) as u64
                    }) 
                {
                    disassemble(name.clone().as_str(), *addr, *sz, prog);
                }
            }
            else {
                // disassemble named function
                if let Some((addr, sz, name)) = prog.funcs
                    .iter().find(|(_, _, name)| name.eq(tokens[1])) 
                {
                    disassemble(name.clone().as_str(), *addr, *sz, prog);
                }
                else {
                    println!("Bad function name.");
                }
            }
        }
        else if tokens[0].starts_with("d") {
            if tokens.len() >= 2 {
                let n = usize::from_str_radix(tokens[1], 10);
                if let Err(_) = n {
                    println!("Bad number.");
                    continue;
                }
                let n = n.unwrap();
                if n < prog.breakpoints.len() {
                    prog.breakpoints.remove(n);
                }
            }
            else {
                println!("No breakpoint specified.");
            }
        }
    }
}


fn main() {

    let cli = Cli::parse();
    let elf = cli.elf;
    let quiet = cli.quiet;
    let interactive = cli.interactive;
    let count_from_main = cli.count_from_main;
    let sequential = cli.sequential;
    let forward = cli.forward;

    let loader = Loader::new(ELFArch::Rv64I, elf.as_str());
    match loader.load() {
        Ok(mut prog) => {
            if sequential {
                // Run SEQuential simulation
                sim_seq(&mut prog, quiet, interactive, count_from_main);
            }
            else {
                // Run PIPElined simulation
                for reg in prog.registers.registers.iter_mut() {
                    reg.enable_forwarding = forward;
                }
                sim_pipeline(&mut prog, quiet, interactive, count_from_main);
            }
        },
        Err(e) => {
            print!("{}", "[Fatal] ".red().bold());
            println!("{:?}", e);
        }
    }
}
