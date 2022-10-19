#[allow(dead_code)]
#[allow(unused)]

use rsim_seq::{Loader, ELFArch, SimError, RegID, InstCode, Inst, HLT_ADDR, Program};
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


/// Simulate the execution of `prog`, starting at main() function.
/// Since compressed instructions are not yet supported, library calls
/// and routines like _start(), __libc_init_array() are not invoked.
/// As such, we only support:
/// - All RV32I/64I Instructions (but those concerning memory atomicity)
/// - Part of RV64M Instructions
/// - Simulated `puts()` for printing string
/// We do not support:
/// - `printf()` (restricted by Rust)
/// - Basically any other library functions containing RVC instructions
/// - Usage of global variables, because `gp` is not set properly.
/// We hope to get rid of most of the restrictions above by expanding RVC
/// instructions, which is work in progress.
fn sim(prog: &mut Program, quiet: bool, interactive: bool) {
    if !quiet {
        print!("{}", "[Debug] ".green());
        println!("entry point: {:#x}, sp = {:#x}", prog.entry_point, prog.registers.read(RegID::X2).unwrap());
    }
    
    let mut next_program_counter = prog.program_counter;
    loop {
        // Update PC
        if let Some(key) = prog.simulated_library_funcs.get(&next_program_counter) {
            match key.as_str() {
                "printf" => {
                    print!("{}", "[Warning] ".yellow().bold());
                    println!("printf() is not simulated. Aborting...");
                    prog.program_counter = HLT_ADDR - 4;
                },
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

        let inst = Inst::new();
        // Fetch
        let inst = inst.advance(prog);
        if let Err(next_pc) = inst {
            //println!("\t==> {:x}", next_pc);
            next_program_counter = next_pc;
            continue;
        }
        let inst = inst.unwrap();
        if !quiet {println!("{:x}:\t {:x?}", prog.program_counter, inst.code())}

        // Decode
        let inst = inst.advance(prog);
        if let Err(next_pc) = inst {
            //println!("\t==> {:x}", next_pc);
            next_program_counter = next_pc;
            continue;
        }
        let inst = inst.unwrap();

        // Execute
        let inst = inst.advance(prog);
        if let Err(next_pc) = inst {
            //println!("\t==> {:x}", next_pc);
            next_program_counter = next_pc;
            continue;
        }
        let inst = inst.unwrap();

        // Memory
        let inst = inst.advance(prog);
        if let Err(next_pc) = inst {
            //println!("\t==> {:x}", next_pc);
            next_program_counter = next_pc;
            continue;
        }
        let inst = inst.unwrap();

        // Writeback
        let inst = inst.advance(prog);
        assert!(inst.is_err());
        if let Err(next_pc) = inst {
            //println!("\t==> {:x}", next_pc);
            next_program_counter = next_pc;
            continue;
        }
    }

    if !quiet {
        print!("{}", "[Debug] ".green());
        println!("Registers:\n{}", prog.registers);
    }
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

    let loader = Loader::new(ELFArch::Rv64I, elf.as_str());
    match loader.load() {
        Ok(mut prog) => {
            sim(&mut prog, quiet, interactive);
        },
        Err(e) => {
            print!("{}", "[Fatal] ".red().bold());
            println!("{:?}", e);
        }
    }
}
