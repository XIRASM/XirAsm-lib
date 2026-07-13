//! RISC-V source/text parser focused tests.
//! Keep parser tests outside src/ so encoder implementation files stay test-free.

const std = @import("std");
const rv = @import("xirasm_backend").riscv;

const api = rv.api;
const source = rv.source;
const types = rv.types;

const SourceError = source.SourceError;
const ExpressionResolver = source.ExpressionResolver;
const encodeInstructionText = source.encodeInstructionText;
const parseInstructionText = source.parseInstructionText;

test "RISC-V source parser encodes register and immediate operands" {
    const encoded = try encodeInstructionText("addi x1, x2, 42", 64, null);
    const expected = try api.encodeMnemonic("addi", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .imm = 42 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);
}

test "RISC-V source parser expands load offset base operands" {
    const encoded = try encodeInstructionText("lw x1, 32(x2)", 64, null);
    const expected = try api.encodeMnemonic("lw", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .imm = 32 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);
}

test "RISC-V source parser expands store offset base operands" {
    const encoded = try encodeInstructionText("sw x3, 32(x1)", 64, null);
    const expected = try api.encodeMnemonic("sw", 64, &.{
        .{ .reg = 3 },
        .{ .imm = 32 },
        .{ .reg = 1 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);
}

test "RISC-V source parser accepts zero offset base operands" {
    const encoded = try encodeInstructionText("lw x1, (x2)", 64, null);
    const expected = try api.encodeMnemonic("lw", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .imm = 0 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);
}

test "RISC-V source parser accepts ABI registers and comments" {
    const encoded = try encodeInstructionText("addi a0, sp, -16 # stack slot", 64, null);
    const expected = try api.encodeMnemonic("addi", 64, &.{
        .{ .reg = 10 },
        .{ .reg = 2 },
        .{ .imm = -16 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);
}

const TestResolverContext = struct {
    target: []const u8,
    value: i64,

    fn resolve(context: *anyopaque, text: []const u8) SourceError!?i64 {
        const self: *TestResolverContext = @ptrCast(@alignCast(context));
        if (std.mem.eql(u8, text, self.target)) return self.value;
        return null;
    }
};

test "RISC-V source parser resolves labels through callback" {
    var context: TestResolverContext = .{ .target = "target", .value = 16 };
    const resolver = ExpressionResolver{
        .context = &context,
        .resolveFn = TestResolverContext.resolve,
    };

    const branch = try encodeInstructionText("beq x1, x2, target", 64, resolver);
    const expected_branch = try api.encodeMnemonic("beq", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .imm = 16 },
    });
    try std.testing.expectEqual(expected_branch.word, branch.word);

    const jump = try encodeInstructionText("jal x1, target", 64, resolver);
    const expected_jump = try api.encodeMnemonic("jal", 64, &.{
        .{ .reg = 1 },
        .{ .imm = 16 },
    });
    try std.testing.expectEqual(expected_jump.word, jump.word);
}

test "RISC-V source parser accepts CSR names" {
    const encoded = try encodeInstructionText("csrrw x1, mstatus, x2", 64, null);
    const expected = try api.encodeMnemonic("csrrw", 64, &.{
        .{ .reg = 1 },
        .{ .imm = 0x300 },
        .{ .reg = 2 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);

    const immediate = try encodeInstructionText("csrrwi x1, fcsr, 31", 64, null);
    const expected_immediate = try api.encodeMnemonic("csrrwi", 64, &.{
        .{ .reg = 1 },
        .{ .imm = 0x003 },
        .{ .imm = 31 },
    });
    try std.testing.expectEqual(expected_immediate.word, immediate.word);
}

test "RISC-V source parser accepts CSR read and write aliases" {
    const read = try encodeInstructionText("csrr x5, misa", 64, null);
    const expected_read = try api.encodeMnemonic("csrr", 64, &.{
        .{ .reg = 5 },
        .{ .imm = 0x301 },
    });
    try std.testing.expectEqual(expected_read.word, read.word);

    const write = try encodeInstructionText("csrw mtvec, x6", 64, null);
    const expected_write = try api.encodeMnemonic("csrw", 64, &.{
        .{ .imm = 0x305 },
        .{ .reg = 6 },
    });
    try std.testing.expectEqual(expected_write.word, write.word);
}

test "RISC-V source parser accepts fence masks" {
    const encoded = try encodeInstructionText("fence rw, rw", 64, null);
    const expected = try api.encodeMnemonic("fence", 64, &.{
        .{ .imm = 0b0011 },
        .{ .imm = 0b0011 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);

    const full = try encodeInstructionText("fence iorw, ow", 64, null);
    const expected_full = try api.encodeMnemonic("fence", 64, &.{
        .{ .imm = 0b1111 },
        .{ .imm = 0b0101 },
    });
    try std.testing.expectEqual(expected_full.word, full.word);
}

test "RISC-V source parser accepts rounding mode names" {
    const encoded = try encodeInstructionText("fadd.s ft1, ft2, ft3, rne", 64, null);
    const expected = try api.encodeMnemonic("fadd.s", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .reg = 3 },
        .{ .imm = 0 },
    });
    try std.testing.expectEqual(expected.word, encoded.word);

    const dyn = try encodeInstructionText("fadd.d fa0, fa1, fa2, dyn", 64, null);
    const expected_dyn = try api.encodeMnemonic("fadd.d", 64, &.{
        .{ .reg = 10 },
        .{ .reg = 11 },
        .{ .reg = 12 },
        .{ .imm = 7 },
    });
    try std.testing.expectEqual(expected_dyn.word, dyn.word);
}

test "RISC-V source parser accepts floating CSR instructions" {
    const read = try encodeInstructionText("frcsr x5", 64, null);
    const expected_read = try api.encodeMnemonic("frcsr", 64, &.{
        .{ .reg = 5 },
    });
    try std.testing.expectEqual(expected_read.word, read.word);

    const write = try encodeInstructionText("fscsr x6, x7", 64, null);
    const expected_write = try api.encodeMnemonic("fscsr", 64, &.{
        .{ .reg = 6 },
        .{ .reg = 7 },
    });
    try std.testing.expectEqual(expected_write.word, write.word);
}

test "RISC-V source parser accepts no-operand system instructions" {
    inline for (.{ "ecall", "ebreak", "mret", "sret", "wfi", "fence.i", "fence.tso" }) |instruction_text| {
        const encoded = try encodeInstructionText(instruction_text, 64, null);
        const expected = try api.encodeMnemonic(instruction_text, 64, &.{});
        try std.testing.expectEqual(expected.word, encoded.word);
    }
}

test "RISC-V source parser accepts privileged fence register operands" {
    const sfence = try encodeInstructionText("sfence.vma x1, x2", 64, null);
    const expected_sfence = try api.encodeMnemonic("sfence.vma", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
    });
    try std.testing.expectEqual(expected_sfence.word, sfence.word);

    const hfence_gvma = try encodeInstructionText("hfence.gvma a0, a1", 64, null);
    const expected_hfence_gvma = try api.encodeMnemonic("hfence.gvma", 64, &.{
        .{ .reg = 10 },
        .{ .reg = 11 },
    });
    try std.testing.expectEqual(expected_hfence_gvma.word, hfence_gvma.word);

    const hfence_vvma = try encodeInstructionText("hfence.vvma s0, s1", 64, null);
    const expected_hfence_vvma = try api.encodeMnemonic("hfence.vvma", 64, &.{
        .{ .reg = 8 },
        .{ .reg = 9 },
    });
    try std.testing.expectEqual(expected_hfence_vvma.word, hfence_vvma.word);
}

test "RISC-V source parser expands floating load and store offset base operands" {
    const load = try encodeInstructionText("flw ft1, 16(sp)", 64, null);
    const expected_load = try api.encodeMnemonic("flw", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .imm = 16 },
    });
    try std.testing.expectEqual(expected_load.word, load.word);

    const store = try encodeInstructionText("fsw ft1, -8(sp)", 64, null);
    const expected_store = try api.encodeMnemonic("fsw", 64, &.{
        .{ .reg = 1 },
        .{ .imm = -8 },
        .{ .reg = 2 },
    });
    try std.testing.expectEqual(expected_store.word, store.word);

    const double_load = try encodeInstructionText("fld fa0, 24(s0)", 64, null);
    const expected_double_load = try api.encodeMnemonic("fld", 64, &.{
        .{ .reg = 10 },
        .{ .reg = 8 },
        .{ .imm = 24 },
    });
    try std.testing.expectEqual(expected_double_load.word, double_load.word);

    const double_store = try encodeInstructionText("fsd fa0, 24(s0)", 64, null);
    const expected_double_store = try api.encodeMnemonic("fsd", 64, &.{
        .{ .reg = 10 },
        .{ .imm = 24 },
        .{ .reg = 8 },
    });
    try std.testing.expectEqual(expected_double_store.word, double_store.word);
}

test "RISC-V source parser accepts atomic ordering suffixes" {
    const parsed = try parseInstructionText("lr.w.aqrl x1, x2", null);
    try std.testing.expectEqualStrings("lr.w", parsed.mnemonic);

    const lr = try encodeInstructionText("lr.w.aqrl x1, x2", 64, null);
    const expected_lr = try api.encodeMnemonic("lr.w", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .imm = 1 },
        .{ .imm = 1 },
    });
    try std.testing.expectEqual(expected_lr.word, lr.word);

    const sc = try encodeInstructionText("sc.w.rl x1, x3, x2", 64, null);
    const expected_sc = try api.encodeMnemonic("sc.w", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 3 },
        .{ .reg = 2 },
        .{ .imm = 0 },
        .{ .imm = 1 },
    });
    try std.testing.expectEqual(expected_sc.word, sc.word);

    const amo = try encodeInstructionText("amoswap.w.aq x1, x3, x2", 64, null);
    const expected_amo = try api.encodeMnemonic("amoswap.w", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 3 },
        .{ .reg = 2 },
        .{ .imm = 1 },
        .{ .imm = 0 },
    });
    try std.testing.expectEqual(expected_amo.word, amo.word);

    const lr64 = try encodeInstructionText("lr.d.aq x1, x2", 64, null);
    const expected_lr64 = try api.encodeMnemonic("lr.d", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .imm = 1 },
        .{ .imm = 0 },
    });
    try std.testing.expectEqual(expected_lr64.word, lr64.word);

    const sc64 = try encodeInstructionText("sc.d.aqrl x1, x3, x2", 64, null);
    const expected_sc64 = try api.encodeMnemonic("sc.d", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 3 },
        .{ .reg = 2 },
        .{ .imm = 1 },
        .{ .imm = 1 },
    });
    try std.testing.expectEqual(expected_sc64.word, sc64.word);

    const amo_add = try encodeInstructionText("amoadd.w.rl x1, x3, x2", 64, null);
    const expected_amo_add = try api.encodeMnemonic("amoadd.w", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 3 },
        .{ .reg = 2 },
        .{ .imm = 0 },
        .{ .imm = 1 },
    });
    try std.testing.expectEqual(expected_amo_add.word, amo_add.word);
}

test "RISC-V source parser accepts Zimop numeric mnemonic suffixes" {
    const parsed_r = try parseInstructionText("mop.r.31 x5, x6", null);
    try std.testing.expectEqualStrings("mop.r.n", parsed_r.mnemonic);
    try std.testing.expectEqual(@as(usize, 3), parsed_r.len);
    try std.testing.expectEqual(types.Operand{ .reg = 5 }, parsed_r.storage[0]);
    try std.testing.expectEqual(types.Operand{ .reg = 6 }, parsed_r.storage[1]);
    try std.testing.expectEqual(types.Operand{ .imm = 31 }, parsed_r.storage[2]);

    const encoded_r = try encodeInstructionText("mop.r.31 x5, x6", 64, null);
    const expected_r = try api.encodeMnemonic("mop.r.n", 64, &.{
        .{ .reg = 5 },
        .{ .reg = 6 },
        .{ .imm = 31 },
    });
    try std.testing.expectEqual(expected_r.word, encoded_r.word);

    const parsed_rr = try parseInstructionText("mop.rr.7 x5, x6, x7", null);
    try std.testing.expectEqualStrings("mop.rr.n", parsed_rr.mnemonic);
    try std.testing.expectEqual(@as(usize, 4), parsed_rr.len);
    try std.testing.expectEqual(types.Operand{ .reg = 5 }, parsed_rr.storage[0]);
    try std.testing.expectEqual(types.Operand{ .reg = 6 }, parsed_rr.storage[1]);
    try std.testing.expectEqual(types.Operand{ .reg = 7 }, parsed_rr.storage[2]);
    try std.testing.expectEqual(types.Operand{ .imm = 7 }, parsed_rr.storage[3]);

    const encoded_rr = try encodeInstructionText("mop.rr.7 x5, x6, x7", 64, null);
    const expected_rr = try api.encodeMnemonic("mop.rr.n", 64, &.{
        .{ .reg = 5 },
        .{ .reg = 6 },
        .{ .reg = 7 },
        .{ .imm = 7 },
    });
    try std.testing.expectEqual(expected_rr.word, encoded_rr.word);
}

test "RISC-V source parser accepts Zalasr load-acquire and store-release forms" {
    const load = try parseInstructionText("lb.aq x5, x6", null);
    try std.testing.expectEqualStrings("lb.aq", load.mnemonic);
    try std.testing.expectEqual(@as(usize, 3), load.len);
    try std.testing.expectEqual(types.Operand{ .reg = 5 }, load.storage[0]);
    try std.testing.expectEqual(types.Operand{ .reg = 6 }, load.storage[1]);
    try std.testing.expectEqual(types.Operand{ .imm = 0 }, load.storage[2]);

    const load_encoded = try encodeInstructionText("lb.aq x5, x6", 64, null);
    const load_expected = try api.encodeMnemonic("lb.aq", 64, &.{
        .{ .reg = 5 },
        .{ .reg = 6 },
        .{ .imm = 0 },
    });
    try std.testing.expectEqual(load_expected.word, load_encoded.word);

    const store = try parseInstructionText("sb.rl x7, x6", null);
    try std.testing.expectEqualStrings("sb.rl", store.mnemonic);
    try std.testing.expectEqual(@as(usize, 3), store.len);
    try std.testing.expectEqual(types.Operand{ .reg = 6 }, store.storage[0]);
    try std.testing.expectEqual(types.Operand{ .reg = 7 }, store.storage[1]);
    try std.testing.expectEqual(types.Operand{ .imm = 0 }, store.storage[2]);

    const store_encoded = try encodeInstructionText("sb.rl x7, x6", 64, null);
    const store_expected = try api.encodeMnemonic("sb.rl", 64, &.{
        .{ .reg = 6 },
        .{ .reg = 7 },
        .{ .imm = 0 },
    });
    try std.testing.expectEqual(store_expected.word, store_encoded.word);

    const load_aqrl = try encodeInstructionText("ld.aqrl x5, x6", 64, null);
    const load_aqrl_expected = try api.encodeMnemonic("ld.aq", 64, &.{
        .{ .reg = 5 },
        .{ .reg = 6 },
        .{ .imm = 1 },
    });
    try std.testing.expectEqual(load_aqrl_expected.word, load_aqrl.word);

    const store_aqrl = try encodeInstructionText("sd.aqrl x7, x6", 64, null);
    const store_aqrl_expected = try api.encodeMnemonic("sd.rl", 64, &.{
        .{ .reg = 6 },
        .{ .reg = 7 },
        .{ .imm = 1 },
    });
    try std.testing.expectEqual(store_aqrl_expected.word, store_aqrl.word);
}

test "RISC-V source parser accepts vector configuration vtype operands" {
    const vsetvli = try parseInstructionText("vsetvli x5, x6, e8,m1,ta,ma", null);
    try std.testing.expectEqualStrings("vsetvli", vsetvli.mnemonic);
    try std.testing.expectEqual(@as(usize, 3), vsetvli.len);
    try std.testing.expectEqual(types.Operand{ .reg = 5 }, vsetvli.storage[0]);
    try std.testing.expectEqual(types.Operand{ .reg = 6 }, vsetvli.storage[1]);
    try std.testing.expectEqual(types.Operand{ .imm = 0b1100_0000 }, vsetvli.storage[2]);

    const vsetvli_encoded = try encodeInstructionText("vsetvli x5, x6, e8,m1,ta,ma", 64, null);
    const vsetvli_expected = try api.encodeMnemonic("vsetvli", 64, &.{
        .{ .reg = 5 },
        .{ .reg = 6 },
        .{ .imm = 0b1100_0000 },
    });
    try std.testing.expectEqual(vsetvli_expected.word, vsetvli_encoded.word);

    const vsetivli = try parseInstructionText("vsetivli x5, 4, e16,m2,ta,mu", null);
    try std.testing.expectEqualStrings("vsetivli", vsetivli.mnemonic);
    try std.testing.expectEqual(@as(usize, 3), vsetivli.len);
    try std.testing.expectEqual(types.Operand{ .reg = 5 }, vsetivli.storage[0]);
    try std.testing.expectEqual(types.Operand{ .imm = 4 }, vsetivli.storage[1]);
    try std.testing.expectEqual(types.Operand{ .imm = 0b0100_1001 }, vsetivli.storage[2]);

    const vsetivli_encoded = try encodeInstructionText("vsetivli x5, 4, e16,m2,ta,mu", 64, null);
    const vsetivli_expected = try api.encodeMnemonic("vsetivli", 64, &.{
        .{ .reg = 5 },
        .{ .imm = 4 },
        .{ .imm = 0b0100_1001 },
    });
    try std.testing.expectEqual(vsetivli_expected.word, vsetivli_encoded.word);
}

test "RISC-V source parser accepts vector register mask operands" {
    const masked = try parseInstructionText("vadd.vv v5, v6, v7, v0.t", null);
    try std.testing.expectEqualStrings("vadd.vv", masked.mnemonic);
    try std.testing.expectEqual(@as(usize, 4), masked.len);
    try std.testing.expectEqual(types.Operand{ .reg = 5 }, masked.storage[0]);
    try std.testing.expectEqual(types.Operand{ .reg = 6 }, masked.storage[1]);
    try std.testing.expectEqual(types.Operand{ .reg = 7 }, masked.storage[2]);
    try std.testing.expectEqual(types.Operand{ .imm = 0 }, masked.storage[3]);

    const masked_encoded = try encodeInstructionText("vadd.vv v5, v6, v7, v0.t", 64, null);
    const masked_expected = try api.encodeMnemonic("vadd.vv", 64, &.{
        .{ .reg = 5 },
        .{ .reg = 6 },
        .{ .reg = 7 },
        .{ .imm = 0 },
    });
    try std.testing.expectEqual(masked_expected.word, masked_encoded.word);

    const unmasked = try parseInstructionText("vadd.vv v5, v6, v7", null);
    try std.testing.expectEqualStrings("vadd.vv", unmasked.mnemonic);
    try std.testing.expectEqual(@as(usize, 4), unmasked.len);
    try std.testing.expectEqual(types.Operand{ .imm = 1 }, unmasked.storage[3]);

    const unmasked_encoded = try encodeInstructionText("vadd.vv v5, v6, v7", 64, null);
    const unmasked_expected = try api.encodeMnemonic("vadd.vv", 64, &.{
        .{ .reg = 5 },
        .{ .reg = 6 },
        .{ .reg = 7 },
        .{ .imm = 1 },
    });
    try std.testing.expectEqual(unmasked_expected.word, unmasked_encoded.word);
}

test "RISC-V source parser rejects invalid operand syntax" {
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("addi x1, x2, not_found", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("addi x1, x2(x3), 4", 64, null));
    try std.testing.expectError(error.OperandCountMismatch, encodeInstructionText("addi x1, x2, 1, 2", 64, null));
    try std.testing.expectError(error.OperandCountMismatch, encodeInstructionText("addi.aq x1, x2, 1", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("fence rz, rw", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("csrr x1, not_a_csr", 64, null));
}

test "RISC-V source parser rejects malformed vector operands" {
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("vadd.vv v5, v6, v7, v1.t", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("vadd.vv v5, v6, v7, v0", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("vle8.v v5, 0(x6)", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("vle8.v v5, (x6), x7", 64, null));
}

test "RISC-V source parser rejects malformed special operands" {
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("fence rx, rw", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("fence , rw", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("fadd.s ft1, ft2, ft3, nearest", 64, null));
    try std.testing.expectError(error.InvalidOperand, encodeInstructionText("csrr x1, not_a_csr", 64, null));
}
