#[allow(dead_code)]
#[allow(unused_variables)]
#[allow(unreachable_code)]
#[allow(unused_imports)]

pub mod inst {
    //! This module implements all supported RV64I instructions, 
    //! including their parsing and executing logic.
    
    use crate::{SimError, RegID, Program, HLT_ADDR};
    use quark::Signs;
    use std::convert::Into;
    use std::fmt;
    use colored::Colorize;

    /// All RV64I instructions. RV32/64C instructions are expanded at parsing.
    /// Floating-point related instructions are NOT supported, and will be
    /// treated as illegal.
    #[derive(Debug, Copy, Clone)]
    pub enum InstCode {
        // R-type: rd, rs1, rs2
        Add(RegID, RegID, RegID),
        Mul(RegID, RegID, RegID),
        Sub(RegID, RegID, RegID),
        Sll(RegID, RegID, RegID),
        Mulh(RegID, RegID, RegID),
        Slt(RegID, RegID, RegID),
        Sltu(RegID, RegID, RegID),
        Xor(RegID, RegID, RegID),
        Div(RegID, RegID, RegID),
        Srl(RegID, RegID, RegID),
        Sra(RegID, RegID, RegID),
        Or(RegID, RegID, RegID),
        Rem(RegID, RegID, RegID),
        And(RegID, RegID, RegID),
        Addw(RegID, RegID, RegID),
        Subw(RegID, RegID, RegID),
        Mulw(RegID, RegID, RegID),
        Divw(RegID, RegID, RegID),
        Sllw(RegID, RegID, RegID),
        Srlw(RegID, RegID, RegID),
        Sraw(RegID, RegID, RegID),
        Remw(RegID, RegID, RegID),
        // I-type: rd, rs1, imm
        Lb(RegID, RegID, i16),
        Lbu(RegID, RegID, i16),
        Lh(RegID, RegID, i16),
        Lhu(RegID, RegID, i16),
        Lw(RegID, RegID, i16),
        Lwu(RegID, RegID, i16),
        Ld(RegID, RegID, i16),
        Addi(RegID, RegID, i16),
        Slli(RegID, RegID, i16),
        Slliw(RegID, RegID, i16),
        Slti(RegID, RegID, i16),
        Sltiu(RegID, RegID, i16),
        Xori(RegID, RegID, i16),
        Srli(RegID, RegID, i16),
        Srliw(RegID, RegID, i16),
        Srai(RegID, RegID, i16),
        Sraiw(RegID, RegID, i16),
        Ori(RegID, RegID, i16),
        Andi(RegID, RegID, i16),
        Addiw(RegID, RegID, i16),
        Jalr(RegID, RegID, i16),
        Ecall,
        // S-type: rs1, rs2, imm
        Sb(RegID, RegID, i16),
        Sh(RegID, RegID, i16),
        Sw(RegID, RegID, i16),
        Sd(RegID, RegID, i16),
        // SB-type: rs1, rs2, imm
        Beq(RegID, RegID, i16),
        Bne(RegID, RegID, i16),
        Blt(RegID, RegID, i16),
        Bge(RegID, RegID, i16),
        Bltu(RegID, RegID, i16),
        Bgeu(RegID, RegID, i16),
        // U-type: rd, imm(20b)
        Auipc(RegID, i32),
        Lui(RegID, i32),
        // UJ-Type: rd, imm(20b)
        Jal(RegID, i32),
        // Not currently supported:
        Fence(u8, u8),
        FenceI,
        Csrrw(RegID, RegID, u16),
        Csrrs(RegID, RegID, u16),
        Csrrc(RegID, RegID, u16),
        Csrrwi(RegID, u16, u8),
        Csrrsi(RegID, u16, u8),
        Csrrci(RegID, u16, u8),
        Ebreak,
        Uret,
        Sret,
        Mret,
        Wfi,
        SfenceVma(RegID, RegID),
        // Invalid
        IllegalCf(u16),
        IllegalProlonged,
        Unknown(u32),
        UnknownC(u16),
        // Pseudo
        DivRem(RegID, RegID, RegID, RegID), // rdq, rdr, rs1, rs2
    }

    impl InstCode {
        /// Parse the instruction encoded as `raw` (does not
        /// support instructions longer than 32-bit). Returns 
        /// the `InstCode` and the length, to distinguish between
        /// normal and compressed instructions.
        pub fn parse(first: u16, second: u16) -> (Self, usize) {
            let is_compressed = (first & 0b11) != 0b11;
            let is_prolonged = (first & 0b11111) == 0b11111;
            if is_prolonged {
                return (InstCode::IllegalProlonged, 32);
            }
            if is_compressed {
                (InstCode::parse_compressed((first & 0xFFFF) as u16), 16)
            }
            else {
                let raw = ((second as u32) << 16) + first as u32;
                let opcode = raw & 0b1111111;
                match opcode {
                    0x33 | 0x3B => (InstCode::parse_normal_r(raw), 32),
                    0x3 | 0x13 | 0x1B | 0x67 | 0x73 => (InstCode::parse_normal_i(raw), 32),
                    0x23 => (InstCode::parse_normal_s(raw), 32),
                    0x63 => (InstCode::parse_normal_sb(raw), 32),
                    0x17 | 0x37 => (InstCode::parse_normal_u(raw), 32),
                    0x6f => (InstCode::parse_normal_uj(raw), 32),
                    0x0f => {
                        let func3 = (raw>>12) & 0b111;
                        let succ = ((raw>>20) & 0b1111) as u8;
                        let pred = ((raw>>24) & 0b1111) as u8;
                        match func3 {
                            0 => (InstCode::Fence(pred, succ), 32),
                            1 if pred == 0 && succ == 0 => (InstCode::FenceI, 32),
                            _ => (InstCode::Unknown(raw), 32),
                        }
                    }
                    _ => (InstCode::Unknown(raw), 32),
                }
            }
        }

        /// Parse a compressed instruction. !!!Unfinished!!!
        fn parse_compressed(raw: u16) -> Self {

            // Unfinished
            return InstCode::UnknownC(raw);

            let opcode = raw & 0b11;
            let func3 = raw>>13;
            // Compressed register code
            let rd = ((raw>>2) & 0b111) as u8 + 8;

            match (opcode, func3) {
                // c.addi4spn <==> addi rd',x2,nzuimm
                (0, 0) => {
                    let imm = (raw>>5) & 0b11111111;
                    let nzuimm = 
                        (((imm>>2)&0b1111)<<6) +
                        ((imm>>6)<<4) +
                        ((imm & 0b10)<<1) +
                        ((imm & 0b1)<<3);
                    InstCode::Addi(RegID::decode(rd), RegID::X2, nzuimm as i16)
                },
                // c.fld not supported
                (0, 1) => InstCode::IllegalCf(raw),
                // c.lw <==> lw rd',offset[6:2](rs1')
                (0, 2) => {
                    let rs1 = ((raw>>7) & 0b111) as u8 + 8;
                    let uimm = 
                        (((raw>>10)&0b111)<<3) +
                        (((raw>>5)&0b1)<<6) + 
                        (((raw>>6)&0b1)<<2);
                    InstCode::Lw(RegID::decode(rd), RegID::decode(rs1), uimm as i16)
                },
                // c.ld <===> ld rd', offset[7:3](rs1')
                (0, 3) => {
                    let rs1 = ((raw>>7) & 0b111) as u8 + 8;
                    let uimm = 
                        (((raw>>10)&0b111)<<3) +
                        (((raw>>5)&0b11)<<6);
                    InstCode::Ld(RegID::decode(rd), RegID::decode(rs1), uimm as i16)
                },
                // c.fsd not supported
                (0, 5) => InstCode::IllegalCf(raw),
                // c.sw <===> sw rs2',offset[6:2](rs1')
                (0, 6) => {
                    let rs1 = ((raw>>7) & 0b111) as u8 + 8;
                    let uimm = 
                        (((raw>>10)&0b111)<<3) +
                        (((raw>>5)&0b1)<<6) + 
                        (((raw>>6)&0b1)<<2);
                    InstCode::Sw(RegID::decode(rs1), RegID::decode(rd), uimm as i16)
                },
                // c.sd <===> sd rs2', offset[7:3](rs1')
                (0, 7) => {
                    let rs1 = ((raw>>7) & 0b111) as u8 + 8;
                    let uimm = 
                        (((raw>>10)&0b111)<<3) +
                        (((raw>>5)&0b11)<<6);
                    InstCode::Sd(RegID::decode(rs1), RegID::decode(rd), uimm as i16)
                }
                // c.nop <===> addi x0, x0, 0
                (1, 0) if raw == 1 => InstCode::Addi(RegID::X0, RegID::X0, 0),
                // c.addi <===> addi rs1, rs1, nzimm[5:0]
                (1, 0) if raw != 1 => {
                    let rs1 = ((raw>>7) & 0b11111) as u8;
                    let nzimm = ((((raw>>2)&0b11111) + (((raw>>12)&0b1)<<5)) as i16).sign_extend(10);
                    InstCode::Addi(RegID::decode(rs1), RegID::decode(rs1), nzimm)
                }
                // c.addiw <===> addiw rd,rd,imm[5:0]
                (1, 1) => {
                    let rs1 = ((raw>>7) & 0b11111) as u8;
                    let nzimm = ((((raw>>2)&0b11111) + (((raw>>12)&0b1)<<5)) as i16).sign_extend(10);
                    InstCode::Addiw(RegID::decode(rs1), RegID::decode(rs1), nzimm)
                }
                // c.li <===> addi rd,x0,imm[5:0]
                (1, 2) => {
                    let rd = ((raw>>7) & 0b11111) as u8;
                    let imm = ((((raw>>2)&0b11111) + (((raw>>12)&0b1)<<5)) as i16).sign_extend(10);
                    InstCode::Addi(RegID::decode(rd), RegID::X0, imm)
                }
                _ => InstCode::UnknownC(raw),
            }
            
        }

        /// Parse a R-type instruction
        fn parse_normal_r(raw: u32) -> Self {
            let opcode = raw & 0b1111111;
            let rd = ((raw>>7) & 0b11111) as u8;
            let func3 = (raw>>12) & 0b111;
            let rs1 = ((raw>>15) & 0b11111) as u8;
            let rs2 = ((raw>>20) & 0b11111) as u8;
            let func7 = (raw>>25) & 0b1111111;
            
            match opcode {
                0x33 => match (func3, func7) {
                    (0, 0x00) => InstCode::Add(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (0, 0x01) => InstCode::Mul(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (0, 0x20) => InstCode::Sub(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (1, 0x00) => InstCode::Sll(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (1, 0x01) => InstCode::Mulh(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (2, 0x00) => InstCode::Slt(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (3, 0x00) => InstCode::Sltu(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (4, 0x00) => InstCode::Xor(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (4, 0x01) => InstCode::Div(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (5, 0x00) => InstCode::Srl(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (5, 0x20) => InstCode::Sra(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (6, 0x00) => InstCode::Or(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (6, 0x01) => InstCode::Rem(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (7, 0x00) => InstCode::And(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    _ => InstCode::Unknown(raw),
                },
                0x3B => match (func3, func7) {
                    (0, 0x00) => InstCode::Addw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (0, 0x20) => InstCode::Subw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (0, 0x01) => InstCode::Mulw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (1, 0x00) => InstCode::Sllw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (5, 0x00) => InstCode::Srlw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (5, 0x20) => InstCode::Sraw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (4, 0x01) => InstCode::Divw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    (6, 0x01) => InstCode::Remw(RegID::decode(rd), RegID::decode(rs1), RegID::decode(rs2)),
                    _ => InstCode::Unknown(raw),
                },
                _ => unreachable!()
            }
        }

        /// Parse a I-type instruction
        fn parse_normal_i(raw: u32) -> Self {
            let opcode = raw & 0b1111111;
            let rd = ((raw>>7) & 0b11111) as u8;
            let func3 = (raw>>12) & 0b111;
            let rs1 = ((raw>>15) & 0b11111) as u8;
            let imm = ((raw>>20) as i16).sign_extend(4);
            let csr = (raw>>20) as u16;

            match opcode {
                0x03 => match func3 {
                    0 => InstCode::Lb(RegID::decode(rd), RegID::decode(rs1), imm),
                    1 => InstCode::Lh(RegID::decode(rd), RegID::decode(rs1), imm),
                    2 => InstCode::Lw(RegID::decode(rd), RegID::decode(rs1), imm),
                    3 => InstCode::Ld(RegID::decode(rd), RegID::decode(rs1), imm),
                    4 => InstCode::Lbu(RegID::decode(rd), RegID::decode(rs1), imm),
                    5 => InstCode::Lhu(RegID::decode(rd), RegID::decode(rs1), imm),
                    6 => InstCode::Lwu(RegID::decode(rd), RegID::decode(rs1), imm),
                    _ => InstCode::Unknown(raw),
                },
                0x13 => match func3 {
                    0 => InstCode::Addi(RegID::decode(rd), RegID::decode(rs1), imm),
                    1 if imm & 0b111110000000 == 0 => InstCode::Slli(RegID::decode(rd), RegID::decode(rs1), imm),
                    2 => InstCode::Slti(RegID::decode(rd), RegID::decode(rs1), imm),
                    3 => InstCode::Sltiu(RegID::decode(rd), RegID::decode(rs1), imm),
                    4 => InstCode::Xori(RegID::decode(rd), RegID::decode(rs1), imm),
                    5 if imm & 0b111110000000 == 0 => InstCode::Srli(RegID::decode(rd), RegID::decode(rs1), imm),
                    5 if imm & 0b111110000000 == 0b010000000000 => InstCode::Srai(RegID::decode(rd), RegID::decode(rs1), imm),
                    6 => InstCode::Ori(RegID::decode(rd), RegID::decode(rs1), imm),
                    7 => InstCode::Andi(RegID::decode(rd), RegID::decode(rs1), imm),
                    _ => InstCode::Unknown(raw),
                },
                0x1B => match func3 {
                    0 => InstCode::Addiw(RegID::decode(rd), RegID::decode(rs1), imm),
                    1 if imm & 0b111111100000 == 0 => InstCode::Slliw(RegID::decode(rd), RegID::decode(rs1), imm),
                    5 if imm & 0b111111100000 == 0 => InstCode::Srliw(RegID::decode(rd), RegID::decode(rs1), imm),
                    5 if imm & 0b111111100000 == 0b010000000000 => InstCode::Sraiw(RegID::decode(rd), RegID::decode(rs1), imm),
                    _ => InstCode::Unknown(raw),
                }
                0x67 => match func3 {
                    0 => InstCode::Jalr(RegID::decode(rd), RegID::decode(rs1), imm),
                    _ => InstCode::Unknown(raw),
                },
                0x73 => match func3 {
                    0 => match imm {
                        0 => InstCode::Ecall,
                        1 => InstCode::Ebreak,
                        2 => InstCode::Uret,
                        0x102 => InstCode::Sret,
                        0x302 => InstCode::Mret,
                        0x105 => InstCode::Wfi,
                        _ => {
                            if imm & 0b111111100000 == 0b00010_01_00000 {
                                let rs2 = ((raw>>20) & 0b11111) as u8;
                                InstCode::SfenceVma(RegID::decode(rs1), RegID::decode(rs2))
                            }
                            else {
                                InstCode::Unknown(raw)
                            }
                        }
                    },
                    1 => InstCode::Csrrw(RegID::decode(rd), RegID::decode(rs1), csr),
                    2 => InstCode::Csrrs(RegID::decode(rd), RegID::decode(rs1), csr),
                    3 => InstCode::Csrrc(RegID::decode(rd), RegID::decode(rs1), csr),
                    5 => InstCode::Csrrwi(RegID::decode(rd), csr, rs1),
                    6 => InstCode::Csrrsi(RegID::decode(rd), csr, rs1),
                    7 => InstCode::Csrrci(RegID::decode(rd), csr, rs1),
                    _ => InstCode::Unknown(raw),
                },
                _ => unreachable!(),
            }
        }

        /// Parse a S-type instruction
        fn parse_normal_s(raw: u32) -> Self {
            let opcode = raw & 0b1111111;
            let func3 = (raw>>12) & 0b111;
            let rs1 = ((raw>>15) & 0b11111) as u8;
            let rs2 = ((raw>>20) & 0b11111) as u8;

            let imm1 = ((raw>>7) & 0b11111) as u16;
            let imm2 = ((raw>>25) & 0b1111111) as u16;
            let imm = (((imm2<<5) + imm1) as i16).sign_extend(4);

            match opcode {
                0x23 => match func3 {
                    0 => InstCode::Sb(RegID::decode(rs1), RegID::decode(rs2), imm),
                    1 => InstCode::Sh(RegID::decode(rs1), RegID::decode(rs2), imm),
                    2 => InstCode::Sw(RegID::decode(rs1), RegID::decode(rs2), imm),
                    3 => InstCode::Sd(RegID::decode(rs1), RegID::decode(rs2), imm),
                    _ => InstCode::Unknown(raw),
                }
                _ => unreachable!(),
            }
        }

        /// Parse a SB-type instruction
        fn parse_normal_sb(raw: u32) -> Self {
            let opcode = raw & 0b1111111;
            let func3 = (raw>>12) & 0b111;
            let rs1 = ((raw>>15) & 0b11111) as u8;
            let rs2 = ((raw>>20) & 0b11111) as u8;

            let imm1 = ((raw>>8) & 0b1111) as u16;
            let imm2 = ((raw>>25) & 0b111111) as u16;
            let imm3 = ((raw>>7) & 0b1) as u16;
            let imm4 = (raw>>31) as u16;
            // {ofd, 1'b0}
            let imm = (((imm4<<12) + (imm3<<11) + (imm2<<5) + (imm1<<1)) as i16).sign_extend(3);

            match opcode {
                0x63 => match func3 {
                    0 => InstCode::Beq(RegID::decode(rs1), RegID::decode(rs2), imm),
                    1 => InstCode::Bne(RegID::decode(rs1), RegID::decode(rs2), imm),
                    4 => InstCode::Blt(RegID::decode(rs1), RegID::decode(rs2), imm),
                    5 => InstCode::Bge(RegID::decode(rs1), RegID::decode(rs2), imm),
                    6 => InstCode::Bltu(RegID::decode(rs1), RegID::decode(rs2), imm),
                    7 => InstCode::Bgeu(RegID::decode(rs1), RegID::decode(rs2), imm),
                    _ => InstCode::Unknown(raw),
                }
                _ => unreachable!(),
            }
        }

        /// Parse a U-type instruction
        fn parse_normal_u(raw: u32) -> Self {
            let opcode = raw & 0b1111111;
            let rd = ((raw>>7) & 0b11111) as u8;
            let imm = (raw & 0xFFFFF000) as i32;

            match opcode {
                0x17 => InstCode::Auipc(RegID::decode(rd), imm),
                0x37 => InstCode::Lui(RegID::decode(rd), imm),
                _ => unreachable!(),
            }
        }

        /// Parse a UJ-type instruction
        fn parse_normal_uj(raw: u32) -> Self {
            let opcode = raw & 0b1111111;
            let rd = ((raw>>7) & 0b11111) as u8;
            let imm1 = ((raw>>21) & 0b1111111111) as u32;
            let imm2 = ((raw>>20) & 0b1) as u32;
            let imm3 = ((raw>>12) & 0b11111111) as u32;
            let imm4 = ((raw>>31) & 0b1) as u32;
            let imm = (((imm4<<20) + (imm3<<12) + (imm2<<11) + (imm1<<1)) as i32).sign_extend(11);

            match opcode {
                0x6f => InstCode::Jal(RegID::decode(rd), imm),
                _ => unreachable!(),
            }
        }
    }

    /// Instruction stages.
    #[derive(Debug, Clone, PartialEq, Eq, Copy)]
    pub enum Stage {
        Fetch,
        Decode,
        Execute,
        Memory,
        Writeback,
    }

    impl Into<usize> for Stage {
        fn into(self) -> usize {
            match self {
                Stage::Fetch => 0,
                Stage::Decode => 1,
                Stage::Execute => 2,
                Stage::Memory => 3,
                Stage::Writeback => 4,
            }
        }
    }

    /// An inflight instruction, including the instruction code
    /// and intermediate states.
    #[derive(Debug, Clone, Copy)]
    pub struct Inst {
        /// Internal states
        code: InstCode,
        pc: u64,
        next_pc: u64,
        stage: Stage,
        progress: usize,    // Progress in current stage
        val1: u64,          // Value of R[rs1]
        val2: u64,          // Value of R[rs2]
        val_e: u64,         // Value produced in Execution
        val_m: u64,         // Value read from Memory
    }

    /// Instruction logic is implemented internally
    impl Inst {
        pub fn new() -> Self {
            Inst {
                code: InstCode::Unknown(0),
                pc: 0,
                next_pc: 0,
                stage: Stage::Fetch,
                progress: 0,
                val1: 0,
                val2: 0,
                val_e: 0,
                val_m: 0,
            }
        }

        pub fn code(&self) -> InstCode {
            self.code
        }

        pub fn next_pc(&self) -> u64 {
            self.next_pc
        }

        pub fn stage(&self) -> Stage {
            self.stage
        }

        pub fn progress(&self) -> usize {
            self.progress
        }

        pub fn pc(&self) -> u64 {
            self.pc
        }


        /// Advance this instruction by one cycle. Note that this method
        /// consumes `self`, transforming or dropping the instruction as
        /// appropriate. If control hazard is detected, the correct PC
        /// is also passed back.
        pub fn advance(mut self, prog: &mut Program) -> Result<Self, u64> {
            match self.stage {

                // Simply parse the instruction. However, may need to do
                // some extra transforms to handle special simulations.
                Stage::Fetch => {

                    // If PC == HLT_ADDR, stop fetching.
                    if prog.program_counter == HLT_ADDR {
                        return Err(HLT_ADDR);
                    }

                    // Try read from (PC, PC+4)
                    let mut bytes = Vec::new();
                    match prog.mem_load(prog.program_counter, 4, true) {
                        Some((data, rem)) => {
                            bytes.extend(data);
                            if rem != 0 {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Fetching from {:x} across VMAs", prog.program_counter);
                                return Err(HLT_ADDR);
                            }
                        },
                        None => {
                            print!("{}", "[Warning] ".yellow().bold());
                            println!("Cannot fetch from {:x}", prog.program_counter);
                            return Err(HLT_ADDR);
                        }
                    }
                    let raw = u32::from_le_bytes(bytes.as_slice().try_into().unwrap());

                    let (code, len) = InstCode::parse((raw & 0xFFFF) as u16, (raw >> 16) as u16);
                    self.code = code;
                    self.pc = prog.program_counter;
                    self.next_pc = prog.program_counter + (len as u64) / 8;

                    match code {
                        InstCode::Unknown(raw) => {
                            print!("{}", "[Warning] ".yellow().bold());
                            println!("Unknown instruction {:x}", raw);
                            return Err(HLT_ADDR);
                        },
                        InstCode::IllegalCf(raw) => {
                            print!("{}", "[Warning] ".yellow().bold());
                            println!("Floating point compressed instruction not supported: {:x}", raw);
                            return Err(HLT_ADDR);
                        },
                        InstCode::UnknownC(raw) => {
                            print!("{}", "[Warning] ".yellow().bold());
                            println!("Unknown compressed instruction {:x}", raw);
                            return Err(HLT_ADDR);
                        },
                        InstCode::IllegalProlonged => {
                            print!("{}", "[Warning] ".yellow().bold());
                            println!("Prolonged instruction not supported");
                            return Err(HLT_ADDR);
                        },
                        InstCode::Fence(_,_) | InstCode::FenceI | InstCode::Csrrw(_,_,_) | InstCode::Csrrs(_,_,_) |
                        InstCode::Csrrc(_,_,_) | InstCode::Csrrwi(_,_,_) | InstCode::Csrrsi(_,_,_) | InstCode::Csrrci(_,_,_) |
                        InstCode::Ebreak | InstCode::Uret | InstCode::Sret | InstCode::Mret | InstCode::Wfi |
                        InstCode::SfenceVma(_,_) => {
                            print!("{}", "[Warning] ".yellow().bold());
                            println!("{:?} is not currently supported", code);
                            return Err(HLT_ADDR);
                        }
                        // InstCode::Jal(_,_) | InstCode::Jalr(_,_,_) => self.next_pc = HLT_ADDR,
                        _ => {}
                    }
                    self.stage = Stage::Decode;
                    Ok(self)  
                },

                // Read from registers. Forwarding and stalling logic is implemented
                // in Registers.
                Stage::Decode => {
                    match self.code {
                        // R-type:
                        InstCode::Add(rd, rs1, rs2) |
                        InstCode::Mul(rd, rs1, rs2) |
                        InstCode::Sub(rd, rs1, rs2) |
                        InstCode::Sll(rd, rs1, rs2) |
                        InstCode::Mulh(rd, rs1, rs2) |
                        InstCode::Slt(rd, rs1, rs2) |
                        InstCode::Sltu(rd, rs1, rs2) |
                        InstCode::Xor(rd, rs1, rs2) |
                        InstCode::Div(rd, rs1, rs2) |
                        InstCode::Srl(rd, rs1, rs2) |
                        InstCode::Sra(rd, rs1, rs2) |
                        InstCode::Or(rd, rs1, rs2) |
                        InstCode::Rem(rd, rs1, rs2) |
                        InstCode::And(rd, rs1, rs2) |
                        InstCode::Addw(rd, rs1, rs2) |
                        InstCode::Subw(rd, rs1, rs2) |
                        InstCode::Mulw(rd, rs1, rs2) |
                        InstCode::Divw(rd, rs1, rs2) |
                        InstCode::Sllw(rd, rs1, rs2) |
                        InstCode::Srlw(rd, rs1, rs2) |
                        InstCode::Sraw(rd, rs1, rs2) |
                        InstCode::Remw(rd, rs1, rs2) => {
                            // Read from both rs1 and rs2. Also take the write lock
                            // of rd, to prevent data hazard.
                            let val1;
                            let val2;
                            match prog.registers.read(rs1) {
                                Some(val) => val1 = val,
                                None => return Ok(self), // Stall
                            }
                            match prog.registers.read(rs2) {
                                Some(val) => val2 = val,
                                None => return Ok(self), // Stall
                            }
                            self.val1 = val1;
                            self.val2 = val2;
                            prog.registers.lock(rd);
                            
                            self.stage = Stage::Execute;
                            Ok(self)
                        },

                        // I-type:
                        InstCode::Lb(rd, rs1, imm) |
                        InstCode::Lbu(rd, rs1, imm) |
                        InstCode::Lh(rd, rs1, imm) |
                        InstCode::Lhu(rd, rs1, imm) |
                        InstCode::Lw(rd, rs1, imm) |
                        InstCode::Lwu(rd, rs1, imm) |
                        InstCode::Ld(rd, rs1, imm) |
                        InstCode::Addi(rd, rs1, imm) |
                        InstCode::Slli(rd, rs1, imm) |
                        InstCode::Slliw(rd, rs1, imm) |
                        InstCode::Slti(rd, rs1, imm) |
                        InstCode::Sltiu(rd, rs1, imm) |
                        InstCode::Xori(rd, rs1, imm) |
                        InstCode::Srli(rd, rs1, imm) |
                        InstCode::Srliw(rd, rs1, imm) |
                        InstCode::Srai(rd, rs1, imm) |
                        InstCode::Sraiw(rd, rs1, imm) |
                        InstCode::Ori(rd, rs1, imm) |
                        InstCode::Andi(rd, rs1, imm) |
                        InstCode::Addiw(rd, rs1, imm) |
                        InstCode::Jalr(rd, rs1, imm) => {
                            let val1;
                            match prog.registers.read(rs1) {
                                Some(val) => val1 = val,
                                None => return Ok(self), // Stall
                            }
                            self.val1 = val1;

                            prog.registers.lock(rd);
                            
                            self.stage = Stage::Execute;
                            Ok(self)
                        },
                        InstCode::Ecall => {
                            // Read A0 and A1
                            let val1;
                            let val2;
                            let val_e;
                            match prog.registers.read(RegID::X10) {
                                Some(val) => val1 = val,
                                None => return Ok(self), // Stall
                            }
                            match prog.registers.read(RegID::X11) {
                                Some(val) => val2 = val,
                                None => return Ok(self), // Stall
                            }
                            // We now emulate Newlib syscalls, which uses A7 as function code
                            // For example, A7==93 <==> syscall::exit
                            match prog.registers.read(RegID::X17) {
                                Some(val) => val_e = val,
                                None => return Ok(self), // Stall
                            }
                            self.val1 = val1;
                            self.val2 = val2;
                            self.val_e = val_e;

                            self.stage = Stage::Execute;
    
                            Ok(self)
                        },

                        // S-type:
                        InstCode::Sb(rs1, rs2, imm) |
                        InstCode::Sh(rs1, rs2, imm) |
                        InstCode::Sw(rs1, rs2, imm) |
                        InstCode::Sd(rs1, rs2, imm) => {
                            let val1;
                            let val2;
                            match prog.registers.read(rs1) {
                                Some(val) => val1 = val,
                                None => return Ok(self), // Stall
                            }
                            match prog.registers.read(rs2) {
                                Some(val) => val2 = val,
                                None => return Ok(self), // Stall
                            }
                            self.val1 = val1;
                            self.val2 = val2;
                            
                            self.stage = Stage::Execute;
                            Ok(self)
                        },

                        // SB-type:
                        InstCode::Beq(rs1, rs2,_) | InstCode::Bne(rs1, rs2,_) |
                        InstCode::Blt(rs1, rs2,_) | InstCode::Bge(rs1, rs2,_) |
                        InstCode::Bltu(rs1, rs2,_) | InstCode::Bgeu(rs1, rs2,_) => {
                            let val1;
                            let val2;
                            match prog.registers.read(rs1) {
                                Some(val) => val1 = val,
                                None => return Ok(self), // Stall
                            }
                            match prog.registers.read(rs2) {
                                Some(val) => val2 = val,
                                None => return Ok(self), // Stall
                            }
                            self.val1 = val1;
                            self.val2 = val2;

                            self.stage = Stage::Execute;
                            Ok(self)
                        }

                        // U-type/UJ-type
                        InstCode::Auipc(rd, imm) |
                        InstCode::Lui(rd, imm) |
                        InstCode::Jal(rd, imm) => {
                            prog.registers.lock(rd);
                            
                            self.stage = Stage::Execute;
                            Ok(self)
                        },

                        // Unsupported
                        _ => unreachable!(),
                    }
                },

                // Instruction execution. May drop self if control hazard is detected.
                Stage::Execute => {
                    match self.code {
                        InstCode::Add(rd,_,_) => {
                            self.val_e = u64::wrapping_add(self.val1, self.val2);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Mul(rd,_,_) => {

                            if self.progress < 1 {
                                self.progress += 1;
                                return Ok(self);
                            }

                            self.val_e = i64::wrapping_mul(self.val1 as i64, self.val2 as i64) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sub(rd,_,_) => {
                            self.val_e = u64::wrapping_sub(self.val1, self.val2);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sll(rd,_,_) => {
                            self.val_e = u64::wrapping_shl(self.val1, (self.val2 & 0b111111) as u32);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Mulh(rd,_,_) => {
                            if self.progress < 1 {
                                self.progress += 1;
                                return Ok(self);
                            }

                            self.val_e = ((self.val1 as i128 * self.val2 as i128)>>64) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Slt(rd,_,_) => {
                            self.val_e = if (self.val1 as i64) < (self.val2 as i64) {1} else {0};
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sltu(rd,_,_) => {
                            self.val_e = if self.val1 < self.val2 {1} else {0};
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Xor(rd,_,_) => {
                            self.val_e = self.val1 ^ self.val2;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Div(rd,_,_) => {
                            if self.val2 == 0 {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Divide by 0 Execption");
                                prog.registers.unlock(rd);
                                return Err(HLT_ADDR);
                            }
                            if self.progress < 39 {
                                self.progress += 1;
                                return Ok(self);
                            }

                            self.val_e = i64::wrapping_div(self.val1 as i64, self.val2 as i64) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Srl(rd,_,_) => {
                            self.val_e = u64::wrapping_shr(self.val1, (self.val2 & 0b111111) as u32);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sra(rd,_,_) => {
                            self.val_e = i64::wrapping_shr(self.val1 as i64, (self.val2 & 0b111111) as u32) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Or(rd,_,_) => {
                            self.val_e = self.val1 | self.val2;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Rem(rd,_,_) => {
                            if self.val2 == 0 {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Reminder by 0 Execption");
                                prog.registers.unlock(rd);
                                return Err(HLT_ADDR);
                            }
                            if self.progress < 39 {
                                self.progress += 1;
                                return Ok(self);
                            }

                            self.val_e = i64::wrapping_rem(self.val1 as i64, self.val2 as i64) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::And(rd,_,_) => {
                            self.val_e = self.val1 & self.val2;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Addw(rd,_,_) => {
                            self.val_e = i32::wrapping_add(self.val1 as i32, self.val2 as i32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Subw(rd,_,_) => {
                            self.val_e = i32::wrapping_sub(self.val1 as i32, self.val2 as i32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Mulw(rd,_,_) => {
                            self.val_e = i32::wrapping_mul(self.val1 as i32, self.val2 as i32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Divw(rd,_,_) => {
                            if self.val2 == 0 {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Divide by 0 Execption");
                                prog.registers.unlock(rd);
                                return Err(HLT_ADDR);
                            }
                            if self.progress < 39 {
                                self.progress += 1;
                                return Ok(self);
                            }

                            self.val_e = i32::wrapping_div(self.val1 as i32, self.val2 as i32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sllw(rd,_,_) => {
                            self.val_e = i32::wrapping_shl(self.val1 as i32, (self.val2 & 0b11111) as u32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Srlw(rd,_,_) => {
                            self.val_e = u32::wrapping_shl(self.val1 as u32, (self.val2 & 0b11111) as u32) as i32 as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sraw(rd,_,_) => {
                            self.val_e = i32::wrapping_shl(self.val1 as i32, (self.val2 & 0b11111) as u32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Remw(rd,_,_) => {
                            if self.val2 == 0 {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Reminder by 0 Execption");
                                prog.registers.unlock(rd);
                                return Err(HLT_ADDR);
                            }
                            if self.progress < 39 {
                                self.progress += 1;
                                return Ok(self);
                            }

                            self.val_e = i32::wrapping_rem(self.val1 as i32, self.val2 as i32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },

                        InstCode::Lb(rd,_,imm) | InstCode::Lbu(rd,_,imm) |
                        InstCode::Lh(rd,_,imm) | InstCode::Lhu(rd,_,imm) |
                        InstCode::Lw(rd,_,imm) | InstCode::Lwu(rd,_,imm) |
                        InstCode::Ld(rd,_,imm) | InstCode::Sb(rd,_,imm) |
                        InstCode::Sh(rd,_,imm) | InstCode::Sw(rd,_,imm) |
                        InstCode::Sd(rd,_,imm) => {
                            self.val_e = (self.val1 as i64 + imm as i64) as u64;
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Addi(rd, _, imm) => {
                            self.val_e = i64::wrapping_add(self.val1 as i64, imm as i64) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Slli(rd, _, imm) => {
                            self.val_e = u64::wrapping_shl(self.val1 as u64, imm as u32);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Slliw(rd, _, imm) => {
                            self.val_e = i32::wrapping_shl(self.val1 as i32, imm as u32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Slti(rd, _, imm) => {
                            self.val_e = if (self.val1 as i64) < (imm as i64) {1} else {0};
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sltiu(rd, _, imm) => {
                            self.val_e = if self.val1 < ((imm as i64) as u64) {1} else {0};
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Xori(rd, _, imm) => {
                            self.val_e = self.val1 ^ (imm as i64 as u64);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Srli(rd, _, imm) => {
                            self.val_e = u64::wrapping_shr(self.val1, imm as u32);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Srliw(rd, _, imm) => {
                            self.val_e = u32::wrapping_shr(self.val1 as u32, imm as u32) as i32 as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Srai(rd, _, imm) => {
                            self.val_e = i64::wrapping_shr(self.val1 as i64, imm as u32) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Sraiw(rd, _, imm) => {
                            self.val_e = i32::wrapping_shr(self.val1 as i32, imm as u32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Ori(rd, _, imm) => {
                            self.val_e = self.val1 | (imm as i64 as u64);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Andi(rd, _, imm) => {
                            self.val_e = self.val1 & (imm as i64 as u64);
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Addiw(rd, _, imm) => {
                            self.val_e = i32::wrapping_add(self.val1 as i32, imm as i32) as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Jalr(rd, _, imm) => {
                            self.val_e = self.pc + 4;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            // Set next_pc
                            self.next_pc = (((self.val1 as i64) + (imm as i64)) as u64) & (!1);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Ecall => {
                            match self.val_e {
                                57 => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("ecall (a7=57) is close(), not simulated...");
                                    return Err(HLT_ADDR);
                                },
                                80 => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("ecall (a7=62) is fstat(), not simulated...");
                                    return Err(HLT_ADDR);
                                },
                                62 => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("ecall (a7=62) is lseek(), not simulated...");
                                    return Err(HLT_ADDR);
                                },
                                214 => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("ecall (a7=214) is sbrk(), not simulated...");
                                    return Err(HLT_ADDR);
                                },
                                64 => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("ecall (a7=64) is write(), not simulated...");
                                    return Err(HLT_ADDR);
                                },
                                63 => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("ecall (a7=63) is read(), not simulated...");
                                    return Err(HLT_ADDR);
                                },
                                93 => {
                                    print!("{}", "[Debug] ".green());
                                    println!("ecall (a7=93) is exit(), exiting...");
                                    return Err(HLT_ADDR);
                                },
                                _ => {},
                            }

                            if self.val1 == 10 {
                                // exit()
                                print!("{}", "[Debug] ".green());
                                println!("ecall (a0=10), exiting...");
                                return Err(HLT_ADDR);
                            }
                            else if self.val1 == 1 {
                                print!("{}", "[Debug] ".green());
                                println!("ecall (a0=1), print a1 = {:#x}", self.val2);
                            }
                            else {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("ecall (a7={}) is unknown function, aborting...", self.val_e);
                                return Err(HLT_ADDR);
                            }
                            
                            self.stage = Stage::Memory;
                            Ok(self)
                        },

                        InstCode::Beq(_, _, ofs) => {
                            if self.val1 == self.val2 {
                                // Should have jumped
                                return Err((self.pc as i64 + ofs as i64) as u64);
                            }
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Bne(_, _, ofs) => {
                            if self.val1 != self.val2 {
                                // Should have jumped
                                return Err((self.pc as i64 + ofs as i64) as u64);
                            }
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Blt(_, _, ofs) => {
                            if (self.val1 as i64) < (self.val2 as i64) {
                                // Should have jumped
                                return Err((self.pc as i64 + ofs as i64) as u64);
                            }
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Bltu(_, _, ofs) => {
                            if self.val1 < self.val2 {
                                // Should have jumped
                                return Err((self.pc as i64 + ofs as i64) as u64);
                            }
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Bge(_, _, ofs) => {
                            if (self.val1 as i64) >= (self.val2 as i64) {
                                // Should have jumped
                                return Err((self.pc as i64 + ofs as i64) as u64);
                            }
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Bgeu(_, _, ofs) => {
                            if self.val1 >= self.val2 {
                                // Should have jumped
                                return Err((self.pc as i64 + ofs as i64) as u64);
                            }
                            self.stage = Stage::Memory;
                            Ok(self)
                        },

                        InstCode::Auipc(rd, imm) => {
                            self.val_e = ((self.pc as i64) + imm as i64) as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },
                        InstCode::Lui(rd, imm) => {
                            self.val_e = imm as i64 as u64;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            self.stage = Stage::Memory;
                            Ok(self)
                        },

                        InstCode::Jal(rd, imm) => {
                            self.val_e = self.pc + 4;
                            // Forward
                            prog.registers.forward(rd, self.val_e, Stage::Memory);
                            // Set next_pc
                            self.next_pc = ((self.pc as i64) + (imm as i64)) as u64;
                            self.stage = Stage::Memory;
                            Ok(self)
                        },

                        _ => unreachable!(),
                    }
                },

                // Access memory
                Stage::Memory => {
                    match self.code {
                        InstCode::Lb(rd, _, _) | InstCode::Lbu(rd, _, _) => {
                            match prog.mem_load(self.val_e, 1, false) {
                                None => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("Cannot access memory at {:x}", self.val_e);
                                    prog.registers.unlock(rd);
                                    Err(HLT_ADDR)
                                },
                                Some((data, rem)) => {
                                    if rem != 0 {
                                        print!("{}", "[Warning] ".yellow().bold());
                                        println!("Access memory at {:x} across VMAs", self.val_e);
                                        prog.registers.unlock(rd);
                                        return Err(HLT_ADDR);
                                    }

                                    if matches!(self.code, InstCode::Lb(_,_,_)) {
                                        self.val_m = data[0] as i8 as i64 as u64;
                                    }
                                    else {
                                        self.val_m = data[0] as u64;
                                    }
                                    // Forward
                                    prog.registers.forward(rd, self.val_m, Stage::Writeback);
                                    self.stage = Stage::Writeback;
                                    Ok(self)
                                }
                            }
                        },
                        InstCode::Lh(rd, _, _) | InstCode::Lhu(rd, _, _) => {
                            match prog.mem_load(self.val_e, 2, false) {
                                None => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("Cannot access memory at {:x}", self.val_e);
                                    prog.registers.unlock(rd);
                                    Err(HLT_ADDR)
                                },
                                Some((data, rem)) => {
                                    if rem != 0 {
                                        print!("{}", "[Warning] ".yellow().bold());
                                        println!("Access memory at {:x} across VMAs", self.val_e);
                                        prog.registers.unlock(rd);
                                        return Err(HLT_ADDR);
                                    }

                                    if matches!(self.code, InstCode::Lh(_,_,_)) {
                                        self.val_m = i16::from_le_bytes(data.try_into().unwrap()) as i64 as u64;
                                    }
                                    else {
                                        self.val_m = u16::from_le_bytes(data.try_into().unwrap()) as u64;
                                    }
                                    
                                    // Forward
                                    prog.registers.forward(rd, self.val_m, Stage::Writeback);
                                    self.stage = Stage::Writeback;
                                    Ok(self)
                                }
                            }
                        },
                        InstCode::Lw(rd, _, _) | InstCode::Lwu(rd, _, _) => {
                            match prog.mem_load(self.val_e, 4, false) {
                                None => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("Cannot access memory at {:x}", self.val_e);
                                    prog.registers.unlock(rd);
                                    Err(HLT_ADDR)
                                },
                                Some((data, rem)) => {
                                    if rem != 0 {
                                        print!("{}", "[Warning] ".yellow().bold());
                                        println!("Access memory at {:x} across VMAs", self.val_e);
                                        prog.registers.unlock(rd);
                                        return Err(HLT_ADDR);
                                    }

                                    if matches!(self.code, InstCode::Lw(_,_,_)) {
                                        self.val_m = i32::from_le_bytes(data.try_into().unwrap()) as i64 as u64;
                                    }
                                    else {
                                        self.val_m = u32::from_le_bytes(data.try_into().unwrap()) as u64;
                                    }
                                    
                                    // Forward
                                    prog.registers.forward(rd, self.val_m, Stage::Writeback);
                                    self.stage = Stage::Writeback;
                                    Ok(self)
                                }
                            }
                        },
                        InstCode::Ld(rd, _, _) => {
                            match prog.mem_load(self.val_e, 8, false) {
                                None => {
                                    print!("{}", "[Warning] ".yellow().bold());
                                    println!("Cannot access memory at {:x}", self.val_e);
                                    prog.registers.unlock(rd);
                                    Err(HLT_ADDR)
                                },
                                Some((data, rem)) => {
                                    if rem != 0 {
                                        print!("{}", "[Warning] ".yellow().bold());
                                        println!("Access memory at {:x} across VMAs", self.val_e);
                                        prog.registers.unlock(rd);
                                        return Err(HLT_ADDR);
                                    }

                                    self.val_m = u64::from_le_bytes(data.try_into().unwrap());
                                    
                                    // Forward
                                    prog.registers.forward(rd, self.val_m, Stage::Writeback);
                                    self.stage = Stage::Writeback;
                                    Ok(self)
                                }
                            }
                        },
                        InstCode::Sb(_, _, _) => {
                            if !prog.mem_store(self.val_e, &self.val2.to_le_bytes()[..1]) {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Cannot access memory at {:x}", self.val_e);
                                Err(HLT_ADDR)
                            }
                            else {
                                self.stage = Stage::Writeback;
                                Ok(self)
                            }
                        },
                        InstCode::Sh(_, _, _) => {
                            if !prog.mem_store(self.val_e, &self.val2.to_le_bytes()[..2]) {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Cannot access memory at {:x}", self.val_e);
                                Err(HLT_ADDR)
                            }
                            else {
                                self.stage = Stage::Writeback;
                                Ok(self)
                            }
                        },
                        InstCode::Sw(_, _, _) => {
                            if !prog.mem_store(self.val_e, &self.val2.to_le_bytes()[..4]) {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Cannot access memory at {:x}", self.val_e);
                                Err(HLT_ADDR)
                            }
                            else {
                                self.stage = Stage::Writeback;
                                Ok(self)
                            }
                        },
                        InstCode::Sd(_, _, _) => {
                            if !prog.mem_store(self.val_e, &self.val2.to_le_bytes()[..8]) {
                                print!("{}", "[Warning] ".yellow().bold());
                                println!("Cannot access memory at {:x}", self.val_e);
                                Err(HLT_ADDR)
                            }
                            else {
                                self.stage = Stage::Writeback;
                                Ok(self)
                            }
                        },

                        // The rest do not access memory
                        _ => {
                            self.stage = Stage::Writeback;
                            Ok(self)
                        }
                    }
                },

                // Write value into register, *unlocks* it, then drop self.
                Stage::Writeback => {
                    match self.code {
                        InstCode::Add(rd,_,_) | InstCode::Sub(rd,_,_) |
                        InstCode::Mul(rd,_,_) | InstCode::Sll(rd,_,_) |
                        InstCode::Mulh(rd,_,_) | InstCode::Slt(rd,_,_) |
                        InstCode::Sltu(rd,_,_) | InstCode::Xor(rd,_,_) |
                        InstCode::Div(rd,_,_) | InstCode::Srl(rd,_,_) |
                        InstCode::Sra(rd,_,_) | InstCode::Or(rd,_,_) |
                        InstCode::Rem(rd,_,_) | InstCode::And(rd,_,_) |
                        InstCode::Addw(rd,_,_) | InstCode::Subw(rd,_,_) |
                        InstCode::Mulw(rd,_,_) | InstCode::Divw(rd,_,_) |
                        InstCode::Sllw(rd,_,_) | InstCode::Srlw(rd,_,_) |
                        InstCode::Sraw(rd,_,_) | InstCode::Remw(rd,_,_) |
                        InstCode::Addi(rd,_,_) | InstCode::Slli(rd,_,_) | 
                        InstCode::Slliw(rd,_,_) | InstCode::Slti(rd,_,_) | 
                        InstCode::Sltiu(rd,_,_) | InstCode::Xori(rd,_,_) | 
                        InstCode::Srli(rd,_,_) | InstCode::Srliw(rd,_,_) | 
                        InstCode::Srai(rd,_,_) | InstCode::Sraiw(rd,_,_) | 
                        InstCode::Ori(rd,_,_) | InstCode::Andi(rd,_,_) | 
                        InstCode::Addiw(rd,_,_) | InstCode::Jalr(rd,_,_) | 
                        InstCode::Jal(rd,_) | InstCode::Auipc(rd,_) | 
                        InstCode::Lui(rd,_) => {
                            prog.registers.write(rd, self.val_e);
                            prog.registers.unlock(rd);
                        },
                        InstCode::Lb(rd,_,_) | InstCode::Lbu(rd,_,_) |
                        InstCode::Lh(rd,_,_) | InstCode::Lhu(rd,_,_) |
                        InstCode::Lw(rd,_,_) | InstCode::Lwu(rd,_,_) |
                        InstCode::Ld(rd,_,_) => {
                            prog.registers.write(rd, self.val_m);
                            prog.registers.unlock(rd);
                        },
                        // The rest do not write back
                        _ => {}
                    }

                    // Always drop self
                    Err(self.next_pc)
                },
            }
            
        }
    }


}