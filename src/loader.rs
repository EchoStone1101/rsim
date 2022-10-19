#[allow(dead_code)]
#[allow(unused)]

pub mod loader {

    //! This module implements the loading of an RV64I ELF executable. 
    //! We leverage the output of `riscv-unknown-elf-readelf --segment`
    //! for loading instructions. 
    
    use std::{fmt, collections::HashMap};
    use std::io::{Read, Write};
    use std::process::Command;
    use std::fs::File;
    use colored::Colorize;
    use crate::{SimError, VMA, Program, RegisterFile, Register, RegID, HLT_ADDR};
    
    /// Pseudo-struct for the loading method.
    pub struct Loader {
        target_arch: ELFArch,
        path: String,
    }

    impl Loader {
        pub const STACK_BOTTOM: u64 = 0x4000000u64;
        pub const STACK_ALIGNMENT: usize = 16;

        pub fn new(target_arch: ELFArch, path: &str) -> Self {
            Loader {
                target_arch,
                path: String::from(path),
            }
        }

        pub fn load(&self) -> Result<Program, SimError> {

            let mut entry_point: u64 = 0;
            let mut vmas: Vec<VMA> = Vec::new();

            // File for storing information parsed from ELF
            let mut debug_file = File::create(String::from(&self.path) + ".d");
            if let Err(e) = debug_file {
                print!("{}", "[Fatal] ".red().bold());
                println!("Cannot create debug file.");
                return Err(SimError::IOError(e));
            }
            let mut debug_file = debug_file.unwrap();

            match File::open(&self.path) {
                Err(e) => return Err(SimError::IOError(e)),
                Ok(mut file) => {
                    // Read all the data in
                    let mut data = Vec::new();
                    let _ = file.read_to_end(&mut data);

                    match Command::new("riscv64-unknown-elf-readelf")
                    .args(["-A", self.path.as_str()])
                    .output() {
                        Ok(output) => {
                            debug_file.write("\n[rsim] Checking for architecture...\n".as_bytes());
                            if let Err(e) = debug_file.write(&output.stdout) {
                                print!("{}", "[Warning] ".green().bold());
                                println!("Cannot write to debug file.");
                            }

                            // Check for architecture
                            let output = String::from_utf8(output.stdout).unwrap();
                            for line in output.split('\n') {

                                if let Some(idx) = line.find(':') {
                                    let key = line[..idx].trim();
                                    let value = line[idx+1..].trim();

                                    match key {
                                        "Attribute Section" => {
                                            if !value.eq("riscv") {
                                                return Err(SimError::ArchError(String::from("Attribute section is ") + value));
                                            }
                                        },
                                        "Tag_RISCV_arch" => {
                                            if !self.target_arch.to_string().eq(value) {
                                                return Err(SimError::ArchError(
                                                    String::from("Expected arch ")+&self.target_arch.to_string()+", found " + value
                                                ));
                                            }
                                        },
                                        "Tag_RISCV_stack_align" => {
                                            if !value.starts_with(&Loader::STACK_ALIGNMENT.to_string()) {
                                                return Err(SimError::ArchError(String::from("Non 16-byte stack alignment")));
                                            }
                                        },
                                        _ => {}
                                    }
                                }
                            }
                        },
                        Err(e) => return Err(SimError::IOError(e)),
                    }

                    match Command::new("riscv64-unknown-elf-readelf")
                    .args(["--segments", self.path.as_str()])
                    .output() {
                        Ok(output) => {
                            debug_file.write("\n[rsim] Reading program headers...\n".as_bytes());
                            if let Err(e) = debug_file.write(&output.stdout) {
                                print!("{}", "[Warning] ".green().bold());
                                println!("Cannot write to debug file.");
                            }

                            // Get the loading instructions
                            let output = String::from_utf8(output.stdout).unwrap();

                            let mut seg_half = false;
                            let mut ofs = 0u64;
                            let mut va = 0u64;
                            let mut pa = 0u64;
                            let mut filesz = 0u64;
                            let mut memsz = 0u64;
                            let mut flags = String::new();

                            for line in output.split('\n') {

                                if seg_half {
                                    seg_half = false;
                                    let args: Vec<&str> = line.split_whitespace().collect();
                                    filesz = u64::from_str_radix(&args[0][2..], 16).unwrap();
                                    memsz = u64::from_str_radix(&args[1][2..], 16).unwrap();

                                    for &flag in args[2..].iter() {
                                        if flag.starts_with("0x") {
                                            break;
                                        }
                                        flags += flag;
                                    }

                                    // Can now make a new VMA
                                    let mut memory = Vec::from(&data[ofs as usize..(ofs+filesz) as usize]);
                                    memory.append(&mut [0u8].repeat((memsz - filesz) as usize));
                                    vmas.push(VMA {
                                        lower_bound: va,
                                        size: memsz,
                                        readable: flags.contains('R'),
                                        writeble: flags.contains('W'),
                                        executable: flags.contains('E'),
                                        memory,   
                                    });

                                    flags.clear();
                                    continue;
                                }


                                if line.starts_with("Elf file type") {
                                    if !line.starts_with("Elf file type is EXEC") {
                                        return Err(SimError::ArchError(String::from("Non executable")));
                                    }
                                }
                                else if line.starts_with("Entry point") {
                                    entry_point = u64::from_str_radix(&line[14..], 16).unwrap();
                                }
                                else if line.trim_start().starts_with("LOAD") {
                                    seg_half = true;
                                    let args: Vec<&str> = line.split_whitespace().collect();
                                    ofs = u64::from_str_radix(&args[1][2..], 16).unwrap();
                                    va = u64::from_str_radix(&args[2][2..], 16).unwrap();
                                    pa = u64::from_str_radix(&args[3][2..], 16).unwrap();
                                }
                            }
                        }
                        Err(e) => {
                            return Err(SimError::IOError(e));
                        }
                    }

                }
            }

            // For now, we do not support compressed instructions, which is pervasive in library code.
            // To run the code properly, we must start at `main()` instead of `_start()`. We achieve this
            // by looking up `main` in `riscv64-unknown-elf-readelf -s`.
            // For the same reason, we must also intercept all library function calls, and provide simulated
            // execution of these function. The addresses of library functions are registered here.
            let mut simulated_library_funcs = HashMap::<u64, String>::new();
            let mut funcs = Vec::new();
            match Command::new("riscv64-unknown-elf-readelf")
                .args(["-s", self.path.as_str()])
                .output() {
                Ok(output) => {
                    let output = String::from_utf8(output.stdout).unwrap();
                    for line in output.split('\n') {
                        let items: Vec<&str> = line.split_whitespace().collect();
                        // Find the main() function
                        if !items.is_empty() && items[3].eq("FUNC") {
                            if items.last().unwrap().trim().eq("main") {
                                entry_point = u64::from_str_radix(items[1], 16).unwrap();
                            }
                            else if items.last().unwrap().trim().eq("printf") {
                                let addr = u64::from_str_radix(items[1], 16).unwrap();
                                simulated_library_funcs.insert(addr, String::from("printf"));
                            }
                            else if items.last().unwrap().trim().eq("puts") {
                                let addr = u64::from_str_radix(items[1], 16).unwrap();
                                simulated_library_funcs.insert(addr, String::from("puts"));
                            }

                            let start = u64::from_str_radix(items[1], 16).unwrap();
                            let sz = usize::from_str_radix(items[2], 10).unwrap();
                            funcs.push((start, sz, String::from(items.last().unwrap().trim())));
                        }
                    }

                    debug_file.write("\n[rsim] Parsed FUNCs (start, length, name):\n".as_bytes());
                    if let Err(e) = debug_file.write(format!("{:#x?}", funcs).as_ref()) {
                        print!("{}", "[Warning] ".green().bold());
                        println!("Cannot write to debug file.");
                    }
                },
                Err(e) => {
                    return Err(SimError::ArchError(String::from("main() not found")));
                }
            }

            // Add stack to `vmas`
            vmas.push(VMA{
                // Use 1MB stack
                lower_bound: Loader::STACK_BOTTOM - 0x100000,
                size: 0x100000u64,
                readable: true,
                writeble: true,
                executable: false,
                memory: {
                    let mut data = vec![0u8; 0x100000];
                    data
                },
            });

            debug_file.write("\n\n\n[rsim] Load Summary:\n".as_bytes());
            debug_file.write(format!("entry point: {:#x} (main)\n", entry_point).as_ref());
            debug_file.write("vmas:\n".as_bytes());
            for (idx, vma) in vmas.iter().enumerate() {
                debug_file.write(format!("{}: {:#x} ~ {:#x}, readable = {}, writeable = {}, executable = {}\n",
                    idx, vma.lower_bound, vma.lower_bound+vma.size, vma.readable, vma.writeble, vma.executable).as_ref());
            }
            

            // Setup registers
            let mut registers: Vec<Register> = (0..32).into_iter()
                .map(|id| Register::new(RegID::decode(id as u8)))
                .collect();
            registers[RegID::X2.encode() as usize].write(Loader::STACK_BOTTOM);
            // Set a special return address to ra which triggers the simulator to halt.
            registers[RegID::X1.encode() as usize].write(HLT_ADDR);
                
            Ok(Program {
                entry_point,
                program_counter: entry_point,
                vmas,
                registers: RegisterFile { registers: registers.try_into().unwrap() },
                simulated_library_funcs,
                funcs,
                pause: 0,
                breakpoints: Vec::new(),
            })
        }
    }

    /// Arch attribute of the ELF executable
    pub enum ELFArch {
        Rv64I,
    }

    impl fmt::Display for ELFArch {
        fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
            match self {
                ELFArch::Rv64I => write!(f, "\"rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0\""),
                _ => Ok(()),
            }
        }
    }
}