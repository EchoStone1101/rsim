#[allow(dead_code)]
#[allow(unused_variables)]

pub mod loader;
pub mod inst;

use colored::Colorize;
pub use loader::loader::{Loader, ELFArch};
pub use inst::inst::{InstCode, Inst, Stage};
use std::io;
use std::fmt;
use std::error::Error;
use std::collections::HashMap;


#[derive(Debug)]
/// Simulator Errors
pub enum SimError {
    IOError(io::Error),
    ArchError(String),
}

impl fmt::Display for SimError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:?}", *self)
    }
}

impl Error for SimError {}

/// A Virtual Memory Area, same as in Linux memory management, where
/// each individual program segment is mapped as one VMA for bound checks
/// and enforcing protection. This is a logical abstraction of the memory
/// layout, and could later be weaponized with actual MMU/caching related
/// simulations.
#[derive(Debug)]
pub struct VMA {
    pub lower_bound: u64,
    pub size: u64,
    pub readable: bool,
    pub writeble: bool,
    pub executable: bool,
    pub memory: Vec<u8>,
}

/// A set of RV64I registers, indexed by register ID (enum).
#[derive(Debug)]
pub struct RegisterFile {
    /// The register data
    pub registers: [Register; 32],

}

impl RegisterFile {
    pub fn read(&self, id: RegID) -> Option<u64> {
        self.registers[id.encode() as usize].read()
    }

    pub fn write(&mut self, id: RegID, val: u64) {
        self.registers[id.encode() as usize].write(val);
    }

    pub fn lock(&mut self, id: RegID) {
        self.registers[id.encode() as usize].lock();
    }

    pub fn unlock(&mut self, id: RegID) {
        self.registers[id.encode() as usize].unlock();
    }

    pub fn forward(&mut self, id: RegID, val: u64, stage: Stage) {
        self.registers[id.encode() as usize].forward(val, stage);
    }

    pub fn update_forward(&mut self) {
        for reg in self.registers.iter_mut() {
            reg.update_forward();
        }
    }
}

/// An RV64I register, with write lock and a forwarding stack for
/// detecting and solving data hazards, should we implement pipelining.
#[derive(Debug)]
pub struct Register {
    pub id: RegID,
    pub value: u64,
    /// How many inst. in flight will write to this register.
    write_cnt: usize,
    forward_values: Option<u64>,
    pub enable_forwarding: bool,
}

impl Register {
    pub fn new(id: RegID, enable_forwarding: bool) -> Self {
        Register {
            id,
            value: 0,
            write_cnt: 0,
            forward_values: None,
            enable_forwarding,
        }
    }

    /// Write `value` to register.
    pub fn write(&mut self, value: u64) {
        // Neglect writes to X0
        if !matches!(self.id, RegID::X0) {
            self.value = value;
        }
    }

    /// Read from register. If `write_cnt` is non-zero, will
    /// instead try reading from `forward_values`.
    pub fn read(&self) -> Option<u64> {
        if matches!(self.id, RegID::X0) {
            return Some(0u64);
        }
        if self.write_cnt == 0 {
            Some(self.value)
        }
        else {
            if self.enable_forwarding {
                self.forward_values
            }
            else {
                None
            }
        }
    }

    /// Increment `write_cnt` by one.
    pub fn lock(&mut self) {
        self.write_cnt += 1;
    }

    /// Decrement `write_cnt` by one.
    pub fn unlock(&mut self) {
        self.write_cnt = usize::checked_sub(self.write_cnt, 1)
            .expect(&format!("{} unlock mismatch at reg {:?}", "[Fatal]".red().bold(), self));
    }

    /// Insert a forwarded value
    pub fn forward(&mut self, value: u64, _stage: Stage) {
        if self.enable_forwarding {
            // assert!(self.forward_values[stage as usize].is_none());
            _ = self.forward_values.insert(value);
        }
    }

    /// Update the forwarded value queue
    pub fn update_forward(&mut self) {
        if !self.enable_forwarding {
            return;
        }
        self.forward_values = None;
    }
}

#[allow(unused)]
impl fmt::Display for RegisterFile {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        for reg in self.registers.iter() {
            write!(f, "{}\t: {:016x}  ", reg.id, reg.value);
            if reg.id.encode() % 2 == 1 {
                write!(f, "\n");
            }
        }
        Ok(())
    }
}

/// RV64I register ID
#[derive(PartialEq, Eq, Clone, Copy)]
pub enum RegID {
    X0,
    X1,
    X2,
    X3,
    X4,
    X5,
    X6,
    X7,
    X8,
    X9,
    X10,
    X11,
    X12,
    X13,
    X14,
    X15,
    X16,
    X17,
    X18,
    X19,
    X20,
    X21,
    X22,
    X23,
    X24,
    X25,
    X26,
    X27,
    X28,
    X29,
    X30,
    X31,
}

impl RegID {
    pub fn abi_name(&self) -> String {
        match self {
            RegID::X0 => String::from("zero"),
            RegID::X1 => String::from("ra"),
            RegID::X2 => String::from("sp"),
            RegID::X3 => String::from("gp"),
            RegID::X4 => String::from("tp"),
            RegID::X5 => String::from("t0"),
            RegID::X6 => String::from("t1"),
            RegID::X7 => String::from("t2"),
            RegID::X8 => String::from("s0"),
            RegID::X9 => String::from("s1"),
            RegID::X10 => String::from("a0"),
            RegID::X11 => String::from("a1"),
            RegID::X12 => String::from("a2"),
            RegID::X13 => String::from("a3"),
            RegID::X14 => String::from("a4"),
            RegID::X15 => String::from("a5"),
            RegID::X16 => String::from("a6"),
            RegID::X17 => String::from("a7"),
            RegID::X18 => String::from("s2"),
            RegID::X19 => String::from("s3"),
            RegID::X20 => String::from("s4"),
            RegID::X21 => String::from("s5"),
            RegID::X22 => String::from("s6"),
            RegID::X23 => String::from("s7"),
            RegID::X24 => String::from("s8"),
            RegID::X25 => String::from("s9"),
            RegID::X26 => String::from("s10"),
            RegID::X27 => String::from("s11"),
            RegID::X28 => String::from("t3"),
            RegID::X29 => String::from("t4"),
            RegID::X30 => String::from("t5"),
            RegID::X31 => String::from("t6"),
        }
    }

    pub fn description(&self) -> String {
        match self {
            RegID::X0 => String::from("hardwired zero"),
            RegID::X1 => String::from("return address"),
            RegID::X2 => String::from("stack pointer"),
            RegID::X3 => String::from("global pointer"),
            RegID::X4 => String::from("thread pointer"),
            RegID::X5 => String::from("temporary register 0"),
            RegID::X6 => String::from("temporary register 1"),
            RegID::X7 => String::from("temporary register 2"),
            RegID::X8 => String::from("saved register 0 / frame pointer"),
            RegID::X9 => String::from("saved register 1"),
            RegID::X10 => String::from("function argument 0 / return value 0"),
            RegID::X11 => String::from("function argument 1 / return value 1"),
            RegID::X12 => String::from("function argument 2"),
            RegID::X13 => String::from("function argument 3"),
            RegID::X14 => String::from("function argument 4"),
            RegID::X15 => String::from("function argument 5"),
            RegID::X16 => String::from("function argument 6"),
            RegID::X17 => String::from("function argument 7"),
            RegID::X18 => String::from("saved register 2"),
            RegID::X19 => String::from("saved register 3"),
            RegID::X20 => String::from("saved register 4"),
            RegID::X21 => String::from("saved register 5"),
            RegID::X22 => String::from("saved register 6"),
            RegID::X23 => String::from("saved register 7"),
            RegID::X24 => String::from("saved register 8"),
            RegID::X25 => String::from("saved register 9"),
            RegID::X26 => String::from("saved register 10"),
            RegID::X27 => String::from("saved register 11"),
            RegID::X28 => String::from("temporary register 3"),
            RegID::X29 => String::from("temporary register 4"),
            RegID::X30 => String::from("temporary register 5"),
            RegID::X31 => String::from("temporary register 6"),
        }
    }

    pub fn decode(encoding: u8) -> Self {
        match encoding {
            0 => RegID::X0,
            1 => RegID::X1,
            2 => RegID::X2,
            3 => RegID::X3,
            4 => RegID::X4,
            5 => RegID::X5,
            6 => RegID::X6,
            7 => RegID::X7,
            8 => RegID::X8,
            9 => RegID::X9,
            10 => RegID::X10,
            11 => RegID::X11,
            12 => RegID::X12,
            13 => RegID::X13,
            14 => RegID::X14,
            15 => RegID::X15,
            16 => RegID::X16,
            17 => RegID::X17,
            18 => RegID::X18,
            19 => RegID::X19,
            20 => RegID::X20,
            21 => RegID::X21,
            22 => RegID::X22,
            23 => RegID::X23,
            24 => RegID::X24,
            25 => RegID::X25,
            26 => RegID::X26,
            27 => RegID::X27,
            28 => RegID::X28,
            29 => RegID::X29,
            30 => RegID::X30,
            31 => RegID::X31,
            // Should not happen
            _ => RegID::X0,
        }
    }
    pub fn encode(&self) -> u8 {
        match self {
            RegID::X0 => 0,
            RegID::X1 => 1,
            RegID::X2 => 2,
            RegID::X3 => 3,
            RegID::X4 => 4,
            RegID::X5 => 5,
            RegID::X6 => 6,
            RegID::X7 => 7,
            RegID::X8 => 8,
            RegID::X9 => 9,
            RegID::X10 => 10,
            RegID::X11 => 11,
            RegID::X12 => 12,
            RegID::X13 => 13,
            RegID::X14 => 14,
            RegID::X15 => 15,
            RegID::X16 => 16,
            RegID::X17 => 17,
            RegID::X18 => 18,
            RegID::X19 => 19,
            RegID::X20 => 20,
            RegID::X21 => 21,
            RegID::X22 => 22,
            RegID::X23 => 23,
            RegID::X24 => 24,
            RegID::X25 => 25,
            RegID::X26 => 26,
            RegID::X27 => 27,
            RegID::X28 => 28,
            RegID::X29 => 29,
            RegID::X30 => 30,
            RegID::X31 => 31,
        }
    }
}

impl fmt::Display for RegID {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{}", self.abi_name())
    }
}

impl fmt::Debug for RegID {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{}", self.abi_name())
    }
}

pub const HLT_ADDR: u64 = 0xFFFFFFFFFFFFFFFEu64;

/// A running program loaded from an ELF. We explicitly choose to not support
/// multi-processing nor multi-threading to simplify things, hence it suffices
/// to keep one program counter, one set of registers and one view of memory 
/// (a list of VMAs).
#[derive(Debug)]
pub struct Program {
    pub entry_point: u64,
    pub program_counter: u64,
    pub registers: RegisterFile,
    pub vmas: Vec<VMA>,
    /// A minimal set of library functions that we simulate
    pub simulated_library_funcs: HashMap<u64, String>,

    pub funcs: Vec<(u64, usize, String)>, // (start, sz, name)
    pub pause: usize,
    pub breakpoints: Vec<u64>,
}

impl Program {
    /// Shim layer for memory access. Can be modified to simulate
    /// more involved traslations.
    
    /// Returns the (data_read, remaining_length) or None indicating error.
    /// `remaining_length` is for memory access across VMAs.
    pub fn mem_load(&self, addr: u64, sz: usize, execute: bool) -> Option<(&[u8], usize)> {
        let vma = self.vmas.iter()
            .find(|v| v.lower_bound <= addr && v.lower_bound+v.size > addr);
        
        if matches!(vma, None) {
            return None;
        }
        let vma = vma.unwrap();

        if !vma.readable && (!execute || vma.executable) {
            return None;
        }
        let end = std::cmp::min(
            vma.lower_bound + vma.size,
            addr + sz as u64,
        ) - vma.lower_bound;
        let start = addr - vma.lower_bound;

        Some((&vma.memory[start as usize..end as usize], sz - (end - start) as usize))
    }

    /// Returns the whether the store is successful.
    pub fn mem_store(&mut self, addr: u64, data: &[u8]) -> bool {
        let sz = data.len();
        let mut cur = 0usize;

        while cur < sz {

            let vma = self.vmas.iter_mut()
                .find(|v| v.lower_bound <= addr+cur as u64 && v.lower_bound+v.size > addr+cur as u64);
        
            if matches!(vma, None) {
                return false;
            }
            let vma = vma.unwrap();

            if !vma.writeble {
                return false;
            }

            let end = std::cmp::min(
                vma.lower_bound + vma.size,
                addr + sz as u64,
            ) - vma.lower_bound;
            let start = addr + cur as u64 - vma.lower_bound;
            let nxt = cur + (end - start) as usize;

            (&mut vma.memory[start as usize..end as usize]).copy_from_slice(&data[cur..nxt]);

            cur = nxt;
        }

        return true;
    }
}