const std = @import("std");
const testing = std.testing;
const allocator = testing.allocator;

const codegen = @import("xirasm_backend");

// ─── RISC-V encoder ───

const rv = codegen.riscv;

test "rv: all R-type arithmetic instructions" {
    const cases = [_]struct { mnemonic: []const u8, expected: u32 }{
        .{ .mnemonic = "add", .expected = 0x000000B3 },
        .{ .mnemonic = "sub", .expected = 0x400000B3 },
        .{ .mnemonic = "sll", .expected = 0x000010B3 },
        .{ .mnemonic = "slt", .expected = 0x000020B3 },
        .{ .mnemonic = "sltu", .expected = 0x000030B3 },
        .{ .mnemonic = "xor", .expected = 0x000040B3 },
        .{ .mnemonic = "srl", .expected = 0x000050B3 },
        .{ .mnemonic = "sra", .expected = 0x400050B3 },
        .{ .mnemonic = "or", .expected = 0x000060B3 },
        .{ .mnemonic = "and", .expected = 0x000070B3 },
    };
    inline for (cases) |c| {
        const result = try rv.encodeMnemonic(c.mnemonic, 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .reg = 3 },
        });
        const word = c.expected | (@as(u32, 1) << 7) | (@as(u32, 2) << 15) | (@as(u32, 3) << 20);
        try testing.expectEqual(word, result.word);
    }
}

test "rv: all I-type arithmetic immediates" {
    const cases = [_]struct { mnemonic: []const u8, expected: u32 }{
        .{ .mnemonic = "addi", .expected = 0x00000013 },
        .{ .mnemonic = "slti", .expected = 0x00002013 },
        .{ .mnemonic = "sltiu", .expected = 0x00003013 },
        .{ .mnemonic = "xori", .expected = 0x00004013 },
        .{ .mnemonic = "ori", .expected = 0x00006013 },
        .{ .mnemonic = "andi", .expected = 0x00007013 },
    };
    inline for (cases) |c| {
        const result = try rv.encodeMnemonic(c.mnemonic, 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0x42 },
        });
        const word = c.expected | (@as(u32, 1) << 7) | (@as(u32, 2) << 15) | (@as(u32, 0x42) << 20);
        try testing.expectEqual(word, result.word);
    }
}

test "rv: shift immediates use shamt field" {
    const result = try rv.encodeMnemonic("slli", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 5 },
    });
    const word: u32 = 0x00001013 | (1 << 7) | (2 << 15) | (5 << 20);
    try testing.expectEqual(word, result.word);
}

test "rv: shift immediates 32-bit variant" {
    const result = try rv.encodeMnemonic("slliw", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 3 },
    });
    const word: u32 = 0x0000101B | (1 << 7) | (2 << 15) | (3 << 20);
    try testing.expectEqual(word, result.word);
}

test "rv: LUI and AUIPC" {
    const lui = try rv.encodeMnemonic("lui", 64, &.{
        .{ .reg = 1 }, .{ .imm = 0x12345 },
    });
    try testing.expectEqual(@as(u32, 0x12345 << 12) | (1 << 7) | 0x37, lui.word);

    const auipc = try rv.encodeMnemonic("auipc", 64, &.{
        .{ .reg = 1 }, .{ .imm = 0x1000 },
    });
    try testing.expectEqual(@as(u32, 0x1000 << 12) | (1 << 7) | 0x17, auipc.word);
}

test "rv: JAL and JALR" {
    const jal = try rv.encodeMnemonic("jal", 64, &.{
        .{ .reg = 1 }, .{ .imm = 0x100 },
    });
    try testing.expectEqual(@as(u32, 0x100000EF), jal.word);

    const jalr = try rv.encodeMnemonic("jalr", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0 },
    });
    try testing.expectEqual(@as(u32, 0x00000067 | (1 << 7) | (2 << 15)), jalr.word);
}

test "rv: load instructions" {
    const cases = [_]struct { mnemonic: []const u8, funct3: u32 }{
        .{ .mnemonic = "lb", .funct3 = 0 },
        .{ .mnemonic = "lh", .funct3 = 1 },
        .{ .mnemonic = "lw", .funct3 = 2 },
        .{ .mnemonic = "ld", .funct3 = 3 },
        .{ .mnemonic = "lbu", .funct3 = 4 },
        .{ .mnemonic = "lhu", .funct3 = 5 },
        .{ .mnemonic = "lwu", .funct3 = 6 },
    };
    inline for (cases) |c| {
        const result = try rv.encodeMnemonic(c.mnemonic, 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0x20 },
        });
        const base: u32 = 0x00000003;
        const word = base | (1 << 7) | (2 << 15) | (c.funct3 << 12) | (0x20 << 20);
        try testing.expectEqual(word, result.word);
    }
}

test "rv: store instructions" {
    const cases = [_]struct { mnemonic: []const u8, funct3: u32 }{
        .{ .mnemonic = "sb", .funct3 = 0 },
        .{ .mnemonic = "sh", .funct3 = 1 },
        .{ .mnemonic = "sw", .funct3 = 2 },
        .{ .mnemonic = "sd", .funct3 = 3 },
    };
    inline for (cases) |c| {
        const result = try rv.encodeMnemonic(c.mnemonic, 64, &.{
            .{ .reg = 3 }, .{ .imm = 0x20 }, .{ .reg = 1 },
        });
        const imm_lo: u32 = 0x00;
        const imm_hi: u32 = 0x20 >> 5;
        const base: u32 = 0x00000023;
        const word = base | (imm_lo << 7) | (1 << 15) | (3 << 20) | (c.funct3 << 12) | (imm_hi << 25);
        try testing.expectEqual(word, result.word);
    }
}

test "rv: branch instructions" {
    const cases = [_]struct { mnemonic: []const u8, funct3: u32 }{
        .{ .mnemonic = "beq", .funct3 = 0 },
        .{ .mnemonic = "bne", .funct3 = 1 },
    };
    inline for (cases) |c| {
        const result = try rv.encodeMnemonic(c.mnemonic, 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0x20 },
        });
        const base: u32 = 0x00000063;
        const word = base | (1 << 15) | (2 << 20) | (c.funct3 << 12) | (1 << 25);
        try testing.expectEqual(word, result.word);
    }
}

test "rv: M extension multiply" {
    const cases = [_]struct { mnemonic: []const u8, funct7: u32 }{
        .{ .mnemonic = "mul", .funct7 = 0x01 },
        .{ .mnemonic = "mulh", .funct7 = 0x01 },
        .{ .mnemonic = "mulhu", .funct7 = 0x01 },
        .{ .mnemonic = "div", .funct7 = 0x01 },
        .{ .mnemonic = "divu", .funct7 = 0x01 },
        .{ .mnemonic = "rem", .funct7 = 0x01 },
        .{ .mnemonic = "remu", .funct7 = 0x01 },
    };
    for (cases) |c| {
        const result = try rv.encodeMnemonic(c.mnemonic, 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .reg = 3 },
        });
        try testing.expect(result.word & 0xFE000000 == c.funct7 << 25);
    }
}

test "rv: M extension 64-bit multiply" {
    const result = try rv.encodeMnemonic("mulw", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .reg = 3 },
    });
    try testing.expectEqual(@as(u32, 0x1), result.word >> 25);
}

test "rv: F extension float loads" {
    const flw = try rv.encodeMnemonic("flw", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0x10 },
    });
    try testing.expectEqual(@as(u32, 0x01012087), flw.word);

    const fld = try rv.encodeMnemonic("fld", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0x10 },
    });
    try testing.expectEqual(@as(u32, 0x01013087), fld.word);
}

test "rv: F extension float arithmetic" {
    const fadds = try rv.encodeMnemonic("fadd.s", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .reg = 3 }, .{ .imm = 0 },
    });
    try testing.expectEqual(@as(u32, 0x003100D3), fadds.word);

    const faddd = try rv.encodeMnemonic("fadd.d", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .reg = 3 }, .{ .imm = 0 },
    });
    try testing.expectEqual(@as(u32, 0x023100D3), faddd.word);
}

test "rv: A extension atomic" {
    const lrw = try rv.encodeMnemonic("lr.w", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0 }, .{ .imm = 0 },
    });
    try testing.expectEqual(@as(u32, 0x100120AF), lrw.word);

    const scw = try rv.encodeMnemonic("sc.w", 64, &.{
        .{ .reg = 1 }, .{ .reg = 3 }, .{ .reg = 2 }, .{ .imm = 0 }, .{ .imm = 0 },
    });
    try testing.expectEqual(@as(u32, 0x183120AF), scw.word);
}

test "rv: immediate bounds reject out of range" {
    try testing.expectError(
        error.ImmediateOutOfRange,
        rv.encodeMnemonic("addi", 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 4096 },
        }),
    );
    try testing.expectError(
        error.ImmediateOutOfRange,
        rv.encodeMnemonic("addi", 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = -2049 },
        }),
    );
}

test "rv: immediate bounds accept edge values" {
    _ = try rv.encodeMnemonic("addi", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 2047 },
    });
    _ = try rv.encodeMnemonic("addi", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = -2048 },
    });
}

test "rv: branch offset alignment rejects odd" {
    try testing.expectError(
        error.ImmediateAlignment,
        rv.encodeMnemonic("beq", 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 3 },
        }),
    );
}

test "rv: unsupported xlen" {
    try testing.expectError(
        error.InvalidXLen,
        rv.encodeMnemonic("addi", 128, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0 },
        }),
    );
}

test "rv: unsupported mnemonic" {
    try testing.expectError(
        error.UnsupportedInstruction,
        rv.encodeMnemonic("made_up_instruction", 64, &.{}),
    );
}

test "rv: operand count mismatch" {
    try testing.expectError(
        error.OperandCountMismatch,
        rv.encodeMnemonic("add", 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 },
        }),
    );
    try testing.expectError(
        error.OperandCountMismatch,
        rv.encodeMnemonic("lui", 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 0 },
        }),
    );
}

test "rv: operand kind mismatch" {
    try testing.expectError(
        error.OperandKindMismatch,
        rv.encodeMnemonic("add", 64, &.{
            .{ .reg = 1 }, .{ .reg = 2 }, .{ .imm = 5 },
        }),
    );
}

test "rv: parse register all ABI names" {
    try testing.expectEqual(@as(u5, 0), try rv.parseRegister("zero"));
    try testing.expectEqual(@as(u5, 1), try rv.parseRegister("ra"));
    try testing.expectEqual(@as(u5, 2), try rv.parseRegister("sp"));
    try testing.expectEqual(@as(u5, 3), try rv.parseRegister("gp"));
    try testing.expectEqual(@as(u5, 4), try rv.parseRegister("tp"));
    try testing.expectEqual(@as(u5, 5), try rv.parseRegister("t0"));
    try testing.expectEqual(@as(u5, 6), try rv.parseRegister("t1"));
    try testing.expectEqual(@as(u5, 7), try rv.parseRegister("t2"));
    try testing.expectEqual(@as(u5, 8), try rv.parseRegister("s0"));
    try testing.expectEqual(@as(u5, 8), try rv.parseRegister("fp"));
    try testing.expectEqual(@as(u5, 9), try rv.parseRegister("s1"));
    try testing.expectEqual(@as(u5, 10), try rv.parseRegister("a0"));
    try testing.expectEqual(@as(u5, 11), try rv.parseRegister("a1"));
    try testing.expectEqual(@as(u5, 12), try rv.parseRegister("a2"));
    try testing.expectEqual(@as(u5, 13), try rv.parseRegister("a3"));
    try testing.expectEqual(@as(u5, 14), try rv.parseRegister("a4"));
    try testing.expectEqual(@as(u5, 15), try rv.parseRegister("a5"));
    try testing.expectEqual(@as(u5, 16), try rv.parseRegister("a6"));
    try testing.expectEqual(@as(u5, 17), try rv.parseRegister("a7"));
    try testing.expectEqual(@as(u5, 18), try rv.parseRegister("s2"));
    try testing.expectEqual(@as(u5, 19), try rv.parseRegister("s3"));
    try testing.expectEqual(@as(u5, 20), try rv.parseRegister("s4"));
    try testing.expectEqual(@as(u5, 21), try rv.parseRegister("s5"));
    try testing.expectEqual(@as(u5, 22), try rv.parseRegister("s6"));
    try testing.expectEqual(@as(u5, 23), try rv.parseRegister("s7"));
    try testing.expectEqual(@as(u5, 24), try rv.parseRegister("s8"));
    try testing.expectEqual(@as(u5, 25), try rv.parseRegister("s9"));
    try testing.expectEqual(@as(u5, 26), try rv.parseRegister("s10"));
    try testing.expectEqual(@as(u5, 27), try rv.parseRegister("s11"));
    try testing.expectEqual(@as(u5, 28), try rv.parseRegister("t3"));
    try testing.expectEqual(@as(u5, 29), try rv.parseRegister("t4"));
    try testing.expectEqual(@as(u5, 30), try rv.parseRegister("t5"));
    try testing.expectEqual(@as(u5, 31), try rv.parseRegister("t6"));
}

test "rv: parse register floating-point ABI" {
    try testing.expectEqual(@as(u5, 0), try rv.parseRegister("ft0"));
    try testing.expectEqual(@as(u5, 1), try rv.parseRegister("ft1"));
    try testing.expectEqual(@as(u5, 10), try rv.parseRegister("fa0"));
    try testing.expectEqual(@as(u5, 11), try rv.parseRegister("fa1"));
    try testing.expectEqual(@as(u5, 28), try rv.parseRegister("ft8"));
    try testing.expectEqual(@as(u5, 31), try rv.parseRegister("ft11"));
}

test "rv: parse register numeric x0-x31" {
    try testing.expectEqual(@as(u5, 0), try rv.parseRegister("x0"));
    try testing.expectEqual(@as(u5, 31), try rv.parseRegister("x31"));
    try testing.expectEqual(@as(u5, 15), try rv.parseRegister("x15"));
}

test "rv: parse register numeric f0-f31" {
    try testing.expectEqual(@as(u5, 0), try rv.parseRegister("f0"));
    try testing.expectEqual(@as(u5, 31), try rv.parseRegister("f31"));
    try testing.expectEqual(@as(u5, 8), try rv.parseRegister("f8"));
}

test "rv: parse register numeric v0-v31" {
    try testing.expectEqual(@as(u5, 0), try rv.parseRegister("v0"));
    try testing.expectEqual(@as(u5, 15), try rv.parseRegister("v15"));
    try testing.expectEqual(@as(u5, 31), try rv.parseRegister("v31"));
}

test "rv: parse register invalid name" {
    try testing.expectError(error.RegisterOutOfRange, rv.parseRegister("not_a_register"));
    try testing.expectError(error.RegisterOutOfRange, rv.parseRegister("x32"));
    try testing.expectError(error.RegisterOutOfRange, rv.parseRegister(""));
}

test "rv: encode lui large immediate" {
    const result = try rv.encodeMnemonic("lui", 64, &.{
        .{ .reg = 10 }, .{ .imm = 0xFFFFF },
    });
    const expected: u32 = (0xFFFFF << 12) | (10 << 7) | 0x37;
    try testing.expectEqual(expected, result.word);
}

test "rv: encode with auipc plus jarl pattern" {
    const auipc = try rv.encodeMnemonic("auipc", 64, &.{
        .{ .reg = 1 }, .{ .imm = 0x1000 },
    });
    const jalr = try rv.encodeMnemonic("jalr", 64, &.{
        .{ .reg = 0 }, .{ .reg = 1 }, .{ .imm = 0x10 },
    });
    try testing.expect((auipc.word & 0x7F) == 0x17);
    try testing.expect((jalr.word & 0x7F) == 0x67);
}

test "rv: asSlice returns correct length" {
    const result = try rv.encodeMnemonic("add", 64, &.{
        .{ .reg = 1 }, .{ .reg = 2 }, .{ .reg = 3 },
    });
    try testing.expectEqual(@as(usize, 4), result.asSlice().len);
    try testing.expectEqual(@as(u8, 4), result.len);
}

// ─── x86 encoder ───

const x86 = codegen.x86;

fn expectX86Bytes(expected: []const u8, encoded: anytype) !void {
    const bytes = try x86.materializeOutput(allocator, encoded.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, expected, bytes);
}

test "x86: encode mov rax imm64" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "rax", "0x123456789A" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x48, 0xB8, 0x9A, 0x78, 0x56, 0x34, 0x12, 0x00, 0x00, 0x00 }, bytes);
}

test "x86: mov rax small immediate uses accumulator imm32 encoding" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "rax", "0x42" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0xB8, 0x42, 0x00, 0x00, 0x00 }, bytes);
}

test "x86: encode mov r32 imm32" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "eax", "0x12345678" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0xB8, 0x78, 0x56, 0x34, 0x12 }, bytes);
}

test "x86: encode mov reg to reg 64-bit" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "rax", "rbx" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x48, 0x89, 0xD8 }, bytes);
}

test "x86: encode mov reg to reg 32-bit" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "eax", "ebx" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x89, 0xD8 }, bytes);
}

test "x86: push/pop 64-bit" {
    var result = try x86.encodeBuiltinUnits(allocator, "push", &.{"rax"}, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0x50}, result.units()[0].bytes);

    var result2 = try x86.encodeBuiltinUnits(allocator, "pop", &.{"rbx"}, x86.EncodeContext.init(64));
    defer result2.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0x5B}, result2.units()[0].bytes);
}

test "x86: push/pop 32-bit" {
    var result = try x86.encodeBuiltinUnits(allocator, "push", &.{"eax"}, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0x50}, result.units()[0].bytes);
}

test "x86: add/sub immediate 64-bit" {
    var result = try x86.encodeBuiltinUnits(allocator, "add", &.{ "rax", "0x10" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x48, 0x83, 0xC0, 0x10 }, bytes);
}

test "x86: sub rsp immediate" {
    var result = try x86.encodeBuiltinUnits(allocator, "sub", &.{ "rsp", "0x20" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x48, 0x83, 0xEC, 0x20 }, bytes);
}

test "x86: ret instruction" {
    var result = try x86.encodeBuiltinUnits(allocator, "ret", &.{}, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0xC3}, result.units()[0].bytes);
}

test "x86: xchg eax reg" {
    var result = try x86.encodeBuiltinUnits(allocator, "xchg", &.{ "eax", "ebx" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0x93}, result.units()[0].bytes);
}

test "x86: inc/dec 32-bit vs 64-bit" {
    var r32 = try x86.encodeBuiltinUnits(allocator, "inc", &.{"eax"}, x86.EncodeContext.init(32));
    defer r32.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0x40}, r32.units()[0].bytes);

    var r64 = try x86.encodeBuiltinUnits(allocator, "inc", &.{"eax"}, x86.EncodeContext.init(64));
    defer r64.deinit(allocator);
    try expectX86Bytes(&.{ 0xFF, 0xC0 }, &r64);
}

test "x86: nop" {
    var result = try x86.encodeBuiltinUnits(allocator, "nop", &.{}, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0x90}, result.units()[0].bytes);
}

test "x86: conditional branch short je" {
    var result = try x86.encodeBuiltinUnits(allocator, "je", &.{"0"}, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x74, 0xFE }, bytes);
}

test "x86: conditional branch short jne" {
    var result = try x86.encodeBuiltinUnits(allocator, "jne", &.{"0"}, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x75, 0xFE }, bytes);
}

test "x86: mov memory indirect" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "eax", "[ebx]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x8B, 0x03 }, bytes);
}

test "x86: mov immediate to memory" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "byte [ebx]", "0xAA" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0xC6, 0x03, 0xAA }, bytes);
}

test "x86: lea" {
    var result = try x86.encodeBuiltinUnits(allocator, "lea", &.{ "eax", "[ebx+ecx]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try testing.expectEqualSlices(u8, &.{0x8D}, result.units()[0].bytes[0..1]);
}

test "x86: and/or/xor" {
    var and_res = try x86.encodeBuiltinUnits(allocator, "and", &.{ "eax", "ebx" }, x86.EncodeContext.init(32));
    defer and_res.deinit(allocator);
    try expectX86Bytes(&.{ 0x21, 0xD8 }, &and_res);

    var or_res = try x86.encodeBuiltinUnits(allocator, "or", &.{ "ecx", "edx" }, x86.EncodeContext.init(32));
    defer or_res.deinit(allocator);
    try expectX86Bytes(&.{ 0x09, 0xD1 }, &or_res);

    var xor_res = try x86.encodeBuiltinUnits(allocator, "xor", &.{ "esi", "edi" }, x86.EncodeContext.init(32));
    defer xor_res.deinit(allocator);
    try expectX86Bytes(&.{ 0x31, 0xFE }, &xor_res);
}

test "x86: cmp and conditional jump" {
    var cmp = try x86.encodeBuiltinUnits(allocator, "cmp", &.{ "eax", "0" }, x86.EncodeContext.init(32));
    defer cmp.deinit(allocator);
    try expectX86Bytes(&.{ 0x83, 0xF8, 0x00 }, &cmp);
}

test "x86: mov with SIB addressing" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "eax", "[ebx+ecx*4]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x8B, 0x04, 0x8B }, bytes);
}

test "x86: mov with displacement" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "eax", "[ebx+0x10]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x8B, 0x43, 0x10 }, bytes);
}

test "x86: mov with large displacement" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "eax", "[ebx+0x1000]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x8B, 0x83, 0x00, 0x10, 0x00, 0x00 }, bytes);
}

test "x86: movzx" {
    var result = try x86.encodeBuiltinUnits(allocator, "movzx", &.{ "eax", "byte [ebx]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0xB6, 0x03 }, &result);
}

test "x86: movsx" {
    var result = try x86.encodeBuiltinUnits(allocator, "movsx", &.{ "eax", "byte [ebx]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0xBE, 0x03 }, &result);
}

test "x86: imul reg reg imm" {
    var result = try x86.encodeBuiltinUnits(allocator, "imul", &.{ "eax", "ebx", "0x7" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x6B, 0xC3, 0x07 }, bytes);
}

test "x86: shl/shr instructions" {
    var shl = try x86.encodeBuiltinUnits(allocator, "shl", &.{ "eax", "1" }, x86.EncodeContext.init(32));
    defer shl.deinit(allocator);
    try expectX86Bytes(&.{ 0xD1, 0xE0 }, &shl);

    var shr = try x86.encodeBuiltinUnits(allocator, "shr", &.{ "eax", "1" }, x86.EncodeContext.init(32));
    defer shr.deinit(allocator);
    try expectX86Bytes(&.{ 0xD1, 0xE8 }, &shr);
}

test "x86: not/neg instructions" {
    var not_res = try x86.encodeBuiltinUnits(allocator, "not", &.{"eax"}, x86.EncodeContext.init(32));
    defer not_res.deinit(allocator);
    try expectX86Bytes(&.{ 0xF7, 0xD0 }, &not_res);

    var neg_res = try x86.encodeBuiltinUnits(allocator, "neg", &.{"eax"}, x86.EncodeContext.init(32));
    defer neg_res.deinit(allocator);
    try expectX86Bytes(&.{ 0xF7, 0xD8 }, &neg_res);
}

test "x86: mul/div instructions" {
    var mul = try x86.encodeBuiltinUnits(allocator, "mul", &.{"ebx"}, x86.EncodeContext.init(32));
    defer mul.deinit(allocator);
    try expectX86Bytes(&.{ 0xF7, 0xE3 }, &mul);

    var div = try x86.encodeBuiltinUnits(allocator, "div", &.{"ebx"}, x86.EncodeContext.init(32));
    defer div.deinit(allocator);
    try expectX86Bytes(&.{ 0xF7, 0xF3 }, &div);
}

test "x86: call/ret" {
    var call = try x86.encodeBuiltinUnits(allocator, "call", &.{"0"}, x86.EncodeContext.init(32));
    defer call.deinit(allocator);
    const call_bytes = try x86.materializeOutput(allocator, call.units());
    defer allocator.free(call_bytes);
    try testing.expectEqualSlices(u8, &.{ 0xE8, 0xFB, 0xFF, 0xFF, 0xFF }, call_bytes);
}

test "x86: SSE movaps" {
    var result = try x86.encodeBuiltinUnits(allocator, "movaps", &.{ "xmm0", "xmm1" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0x28, 0xC1 }, &result);
}

test "x86: SSE2 movapd" {
    var result = try x86.encodeBuiltinUnits(allocator, "movapd", &.{ "xmm0", "xmm1" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x66, 0x0F, 0x28, 0xC1 }, &result);
}

test "x86: SSE2 paddq" {
    var result = try x86.encodeBuiltinUnits(allocator, "paddq", &.{ "xmm0", "xmm1" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x66, 0x0F, 0xD4, 0xC1 }, &result);
}

test "x86: SSSE3 pshufb" {
    var result = try x86.encodeBuiltinUnits(allocator, "pshufb", &.{ "xmm0", "xmm1" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x66, 0x0F, 0x38, 0x00, 0xC1 }, &result);
}

test "x86: SSE4.1 blendvps" {
    var result = try x86.encodeBuiltinUnits(allocator, "blendvps", &.{ "xmm0", "xmm1" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x66, 0x0F, 0x38, 0x14, 0xC1 }, &result);
}

test "x86: SSE4.2 crc32" {
    var result = try x86.encodeBuiltinUnits(allocator, "crc32", &.{ "eax", "byte [ebx]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0xF2, 0x0F, 0x38, 0xF0, 0x03 }, &result);
}

test "x86: AES instructions" {
    var aesenc = try x86.encodeBuiltinUnits(allocator, "aesenc", &.{ "xmm0", "xmm1" }, x86.EncodeContext.init(64));
    defer aesenc.deinit(allocator);
    try expectX86Bytes(&.{ 0x66, 0x0F, 0x38, 0xDC, 0xC1 }, &aesenc);

    var aesdec = try x86.encodeBuiltinUnits(allocator, "aesdec", &.{ "xmm0", "xmm1" }, x86.EncodeContext.init(64));
    defer aesdec.deinit(allocator);
    try expectX86Bytes(&.{ 0x66, 0x0F, 0x38, 0xDE, 0xC1 }, &aesdec);
}

test "x86: SHA instructions" {
    var sha1 = try x86.encodeBuiltinUnits(allocator, "sha1rnds4", &.{ "xmm0", "xmm1", "0" }, x86.EncodeContext.init(64));
    defer sha1.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0x3A, 0xCC, 0xC1, 0x00 }, &sha1);
}

test "x86: AVX vaddps" {
    var result = try x86.encodeBuiltinUnits(allocator, "vaddps", &.{ "xmm0", "xmm1", "xmm2" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0xC5, 0xF0, 0x58, 0xC2 }, bytes);
}

test "x86: AVX vsubsd" {
    var result = try x86.encodeBuiltinUnits(allocator, "vsubsd", &.{ "xmm0", "xmm1", "xmm2" }, x86.EncodeContext.init(64));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0xC5, 0xF3, 0x5C, 0xC2 }, bytes);
}

test "x86: BMI1 tzcnt" {
    var result = try x86.encodeBuiltinUnits(allocator, "tzcnt", &.{ "eax", "ebx" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0xF3, 0x0F, 0xBC, 0xC3 }, &result);
}

test "x86: BMI1 lzcnt" {
    var result = try x86.encodeBuiltinUnits(allocator, "lzcnt", &.{ "eax", "ebx" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0xF3, 0x0F, 0xBD, 0xC3 }, &result);
}

test "x86: POPCNT" {
    var result = try x86.encodeBuiltinUnits(allocator, "popcnt", &.{ "eax", "ebx" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0xF3, 0x0F, 0xB8, 0xC3 }, &result);
}

test "x86: MOVBE" {
    var result = try x86.encodeBuiltinUnits(allocator, "movbe", &.{ "eax", "[ebx]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0x38, 0xF0, 0x03 }, &result);
}

test "x86: segment override" {
    var result = try x86.encodeBuiltinUnits(allocator, "mov", &.{ "eax", "fs:[0]" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0x64, 0xA1, 0x00, 0x00, 0x00, 0x00 }, bytes);
}

test "x86: lock prefix" {
    var result = try x86.encodeBuiltinUnits(allocator, "xadd", &.{ "[ebx]", "eax" }, x86.EncodeContext.init(32).withLock(true));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0xF0, 0x0F, 0xC1, 0x03 }, bytes);
}

test "x86: rep prefix" {
    var result = try x86.encodeBuiltinUnits(allocator, "stosb", &.{}, x86.EncodeContext.init(64).withRepPrefix(.rep));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0xF3, 0xAA }, &result);
}

test "x86: error on unsupported mnemonic" {
    try testing.expectError(
        error.UnsupportedMnemonic,
        x86.encodeBuiltinUnits(allocator, "__bad_instruction__", &.{}, x86.EncodeContext.init(64)),
    );
}

test "x86: error on invalid operand syntax" {
    try testing.expectError(
        error.UnsupportedOperandSyntax,
        x86.encodeBuiltinUnits(allocator, "mov", &.{ "rax", "!!!" }, x86.EncodeContext.init(64)),
    );
}

test "x86: error on invalid integer" {
    try testing.expectError(
        error.InvalidIntegerLiteral,
        x86.encodeBuiltinUnits(allocator, "push", &.{"0x"}, x86.EncodeContext.init(64)),
    );
}

test "x86: error on invalid addressing scale" {
    try testing.expectError(
        error.InvalidMemoryScale,
        x86.encodeBuiltinUnits(allocator, "mov", &.{ "rax", "[rbx+rcx*3]" }, x86.EncodeContext.init(64)),
    );
}

test "x86: REX2 encoding preference emits APX prefix when accepted" {
    var result = try x86.encodeBuiltinUnits(allocator, "nop", &.{}, x86.EncodeContext.init(64).withEncodingPrefix(.rex2));
    defer result.deinit(allocator);
    const bytes = try x86.materializeOutput(allocator, result.units());
    defer allocator.free(bytes);
    try testing.expectEqualSlices(u8, &.{ 0xD5, 0x00, 0x90 }, bytes);
}

test "x86: CMPXCHG" {
    var result = try x86.encodeBuiltinUnits(allocator, "cmpxchg", &.{ "[ebx]", "eax" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0xB1, 0x03 }, &result);
}

test "x86: BSWAP" {
    var result = try x86.encodeBuiltinUnits(allocator, "bswap", &.{"eax"}, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0xC8 }, &result);
}

test "x86: XADD" {
    var result = try x86.encodeBuiltinUnits(allocator, "xadd", &.{ "[ebx]", "eax" }, x86.EncodeContext.init(32));
    defer result.deinit(allocator);
    try expectX86Bytes(&.{ 0x0F, 0xC1, 0x03 }, &result);
}

// ─── SPIR-V encoder ───

const spirv = codegen.spirv;
const Section = spirv.section.Section;
const spec = spirv.spec;

test "spirv: module header" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_capability, .{
        .capability = spec.Capability.shader,
    });
    try section.emit(allocator, .op_capability, .{
        .capability = spec.Capability.float64,
    });
    const result = section.toWords();
    try testing.expect(result.len >= 2);
    try testing.expectEqual((@as(u32, 2) << 16) | @intFromEnum(spec.Opcode.op_capability), result[0]);
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Capability.shader)), result[1]);
    try testing.expectEqual((@as(u32, 2) << 16) | @intFromEnum(spec.Opcode.op_capability), result[2]);
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Capability.float64)), result[3]);
}

test "spirv: type int" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_type_int, .{
        .id_result = @enumFromInt(1),
        .width = 32,
        .signedness = 0,
    });
    const result = section.toWords();
    try testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_type_int),
        @intFromEnum(@as(spec.Id, @enumFromInt(1))),
        32,
        0,
    }, result);
}

test "spirv: type float" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_type_float, .{
        .id_result = @enumFromInt(2),
        .width = 64,
    });
    const result = section.toWords();
    try testing.expectEqualSlices(u32, &.{
        (@as(u32, 3) << 16) | @intFromEnum(spec.Opcode.op_type_float),
        @intFromEnum(@as(spec.Id, @enumFromInt(2))),
        64,
    }, result);
}

test "spirv: type vector" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_type_vector, .{
        .id_result = @enumFromInt(3),
        .component_type = @enumFromInt(1),
        .component_count = 4,
    });
    const result = section.toWords();
    try testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_type_vector),
        @intFromEnum(@as(spec.Id, @enumFromInt(3))),
        @intFromEnum(@as(spec.Id, @enumFromInt(1))),
        4,
    }, result);
}

test "spirv: type pointer" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_type_pointer, .{
        .id_result = @enumFromInt(4),
        .storage_class = spec.StorageClass.function,
        .type = @enumFromInt(1),
    });
    const result = section.toWords();
    try testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_type_pointer),
        @intFromEnum(@as(spec.Id, @enumFromInt(4))),
        @intFromEnum(spec.StorageClass.function),
        @intFromEnum(@as(spec.Id, @enumFromInt(1))),
    }, result);
}

test "spirv: type void and type function" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_type_void, .{
        .id_result = @enumFromInt(5),
    });
    try section.emit(allocator, .op_type_function, .{
        .id_result = @enumFromInt(6),
        .return_type = @enumFromInt(5),
    });
    const result = section.toWords();
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Opcode.op_type_void)), result[0] & 0xFFFF);
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Opcode.op_type_function)), result[2] & 0xFFFF);
}

test "spirv: constant 32-bit" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_constant, .{
        .id_result_type = @enumFromInt(1),
        .id_result = @enumFromInt(10),
        .value = .{ .uint32 = 42 },
    });
    const result = section.toWords();
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Opcode.op_constant)), result[0] & 0xFFFF);
    try testing.expectEqual(@as(u32, @intFromEnum(@as(spec.Id, @enumFromInt(1)))), result[1]);
    try testing.expectEqual(@as(u32, @intFromEnum(@as(spec.Id, @enumFromInt(10)))), result[2]);
}

test "spirv: variable with storage class" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_variable, .{
        .id_result_type = @enumFromInt(4),
        .id_result = @enumFromInt(11),
        .storage_class = spec.StorageClass.function,
    });
    const result = section.toWords();
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Opcode.op_variable)), result[0] & 0xFFFF);
    try testing.expectEqual(@as(u32, @intFromEnum(spec.StorageClass.function)), result[3]);
}

test "spirv: function definition" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_function, .{
        .id_result_type = @enumFromInt(5),
        .id_result = @enumFromInt(12),
        .function_control = .{},
        .function_type = @enumFromInt(6),
    });
    const result = section.toWords();
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Opcode.op_function)), result[0] & 0xFFFF);
    try testing.expectEqual(@as(u32, 5), result[0] >> 16);
}

test "spirv: memory model" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_memory_model, .{
        .addressing_model = spec.AddressingModel.logical,
        .memory_model = spec.MemoryModel.glsl450,
    });
    const result = section.toWords();
    try testing.expectEqualSlices(u32, &.{
        (@as(u32, 3) << 16) | @intFromEnum(spec.Opcode.op_memory_model),
        @intFromEnum(spec.AddressingModel.logical),
        @intFromEnum(spec.MemoryModel.glsl450),
    }, result);
}

test "spirv: entry point" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_entry_point, .{
        .execution_model = spec.ExecutionModel.fragment,
        .entry_point = @enumFromInt(12),
        .name = "main",
    });
    const result = section.toWords();
    try testing.expect((result[0] & 0xFFFF) == @intFromEnum(spec.Opcode.op_entry_point));
    try testing.expect((result[0] >> 16) >= 4);
}

test "spirv: decoration" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_decorate, .{
        .target = @enumFromInt(3),
        .decoration = .block,
    });
    const result = section.toWords();
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Opcode.op_decorate)), result[0] & 0xFFFF);
}

test "spirv: multi-op sequence" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_capability, .{ .capability = spec.Capability.shader });
    try section.emit(allocator, .op_capability, .{ .capability = spec.Capability.float64 });
    try section.emit(allocator, .op_memory_model, .{
        .addressing_model = spec.AddressingModel.logical,
        .memory_model = spec.MemoryModel.glsl450,
    });
    try section.emit(allocator, .op_entry_point, .{
        .execution_model = spec.ExecutionModel.fragment,
        .entry_point = @enumFromInt(1),
        .name = "main",
    });
    const result = section.toWords();
    try testing.expect(result.len >= 8);
}

test "spirv: section can emit nop" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emitRaw(allocator, .op_nop, 0);
    const result = section.toWords();
    try testing.expectEqual(@as(u32, @intFromEnum(spec.Opcode.op_nop)), result[0] & 0xFFFF);
}

test "spirv: section can emit undef" {
    var section = Section{};
    defer section.deinit(allocator);

    try section.emit(allocator, .op_undef, .{
        .id_result_type = @enumFromInt(1),
        .id_result = @enumFromInt(2),
    });
    const result = section.toWords();
    try testing.expectEqualSlices(u32, &.{
        (@as(u32, 3) << 16) | @intFromEnum(spec.Opcode.op_undef),
        1,
        2,
    }, result);
}
