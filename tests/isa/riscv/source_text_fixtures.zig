//! Generated file. Do not edit.
//! Do not edit by hand.
//! This checks native RISC-V source/text parsing against the public encoder API.

const std = @import("std");
const rv = @import("xirasm_backend").riscv;

const Operand = rv.Operand;

const Fixture = struct {
    label: []const u8,
    text: []const u8,
    mnemonic: []const u8,
    xlen: u8,
    operands: []const Operand,
};

const operands_0 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_1 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_2 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_3 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_4 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_5 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_6 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_7 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_8 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_9 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_10 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_11 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_12 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_13 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_14 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_15 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_16 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_17 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_18 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_19 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_20 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_21 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_22 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_23 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_24 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_25 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_26 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_27 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_28 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_29 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_30 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_31 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_32 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_33 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_34 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_35 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_36 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_37 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_38 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_39 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_40 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_41 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_42 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 1 } };
const operands_43 = [_]Operand{.{ .imm = 16 }};
const operands_44 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 16 } };
const operands_45 = [_]Operand{.{ .imm = 32 }};
const operands_46 = [_]Operand{.{ .imm = 1 }};
const operands_47 = [_]Operand{};
const operands_48 = [_]Operand{};
const operands_49 = [_]Operand{};
const operands_50 = [_]Operand{};
const operands_51 = [_]Operand{};
const operands_52 = [_]Operand{};
const operands_53 = [_]Operand{};
const operands_54 = [_]Operand{};
const operands_55 = [_]Operand{};
const operands_56 = [_]Operand{};
const operands_57 = [_]Operand{};
const operands_58 = [_]Operand{};
const operands_59 = [_]Operand{};
const operands_60 = [_]Operand{};
const operands_61 = [_]Operand{};
const operands_62 = [_]Operand{};
const operands_63 = [_]Operand{.{ .imm = 16 }};
const operands_64 = [_]Operand{.{ .imm = 16 }};
const operands_65 = [_]Operand{.{ .reg = 9 }};
const operands_66 = [_]Operand{.{ .reg = 9 }};
const operands_67 = [_]Operand{.{ .reg = 9 }};
const operands_68 = [_]Operand{.{ .reg = 9 }};
const operands_69 = [_]Operand{.{ .reg = 9 }};
const operands_70 = [_]Operand{.{ .reg = 9 }};
const operands_71 = [_]Operand{.{ .reg = 9 }};
const operands_72 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 } };
const operands_73 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 } };
const operands_74 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 } };
const operands_75 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 } };
const operands_76 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 4096 } };
const operands_77 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 8 }, .{ .reg = 10 } };
const operands_78 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 4 }, .{ .reg = 10 } };
const operands_79 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 }, .{ .reg = 10 } };
const operands_80 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 8 }, .{ .reg = 10 } };
const operands_81 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 2 }, .{ .reg = 10 } };
const operands_82 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 2 }, .{ .reg = 10 } };
const operands_83 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 4 }, .{ .reg = 10 } };
const operands_84 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_85 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_86 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_87 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_88 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_89 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_90 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_91 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_92 = [_]Operand{ .{ .reg = 9 }, .{ .reg = 10 } };
const operands_93 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 8 } };
const operands_94 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 4 } };
const operands_95 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 8 } };
const operands_96 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 4 } };
const operands_97 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 } };
const operands_98 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 } };
const operands_99 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 1 } };
const operands_100 = [_]Operand{ .{ .imm = 4 }, .{ .imm = 0 } };
const operands_101 = [_]Operand{ .{ .imm = 4 }, .{ .imm = 0 } };
const operands_102 = [_]Operand{ .{ .imm = 4 }, .{ .imm = 0 } };
const operands_103 = [_]Operand{ .{ .imm = 4 }, .{ .imm = 0 } };
const operands_104 = [_]Operand{.{ .reg = 9 }};
const operands_105 = [_]Operand{.{ .reg = 9 }};
const operands_106 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 16 } };
const operands_107 = [_]Operand{ .{ .reg = 9 }, .{ .imm = 16 } };
const operands_108 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 8 }, .{ .reg = 9 } };
const operands_109 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 4 }, .{ .reg = 9 } };
const operands_110 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 1 }, .{ .reg = 9 } };
const operands_111 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 8 }, .{ .reg = 9 } };
const operands_112 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 2 }, .{ .reg = 9 } };
const operands_113 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 4 }, .{ .reg = 9 } };
const operands_114 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 8 } };
const operands_115 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 4 } };
const operands_116 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 8 } };
const operands_117 = [_]Operand{ .{ .reg = 10 }, .{ .imm = 4 } };
const operands_118 = [_]Operand{ .{ .imm = 0 }, .{ .imm = 1 } };
const operands_119 = [_]Operand{ .{ .imm = 0 }, .{ .imm = 1 } };
const operands_120 = [_]Operand{ .{ .imm = 3 }, .{ .imm = 3 } };
const operands_121 = [_]Operand{.{ .imm = 74565 }};
const operands_122 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 1 }, .{ .imm = 0 } };
const operands_123 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 1 }, .{ .imm = 0 } };
const operands_124 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 31 } };
const operands_125 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 7 } };
const operands_126 = [_]Operand{};
const operands_127 = [_]Operand{};
const operands_128 = [_]Operand{};
const operands_129 = [_]Operand{};
const operands_130 = [_]Operand{};
const operands_131 = [_]Operand{};
const operands_132 = [_]Operand{};
const operands_133 = [_]Operand{};
const operands_134 = [_]Operand{};
const operands_135 = [_]Operand{};
const operands_136 = [_]Operand{};
const operands_137 = [_]Operand{};
const operands_138 = [_]Operand{};
const operands_139 = [_]Operand{};
const operands_140 = [_]Operand{};
const operands_141 = [_]Operand{};
const operands_142 = [_]Operand{};
const operands_143 = [_]Operand{};
const operands_144 = [_]Operand{};
const operands_145 = [_]Operand{};
const operands_146 = [_]Operand{};
const operands_147 = [_]Operand{};
const operands_148 = [_]Operand{};
const operands_149 = [_]Operand{};
const operands_150 = [_]Operand{};
const operands_151 = [_]Operand{};
const operands_152 = [_]Operand{};
const operands_153 = [_]Operand{.{ .imm = 16 }};
const operands_154 = [_]Operand{.{ .imm = 16 }};
const operands_155 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 } };
const operands_156 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 } };
const operands_157 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 } };
const operands_158 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 } };
const operands_159 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 } };
const operands_160 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_161 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_162 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_163 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_164 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_165 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_166 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_167 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_168 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_169 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_170 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_171 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_172 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_173 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_174 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_175 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_176 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_177 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_178 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_179 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_180 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_181 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_182 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_183 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_184 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_185 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_186 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_187 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_188 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_189 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_190 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_191 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_192 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_193 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_194 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_195 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_196 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_197 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_198 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_199 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_200 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_201 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_202 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_203 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_204 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_205 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_206 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_207 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_208 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_209 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_210 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_211 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_212 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_213 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_214 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_215 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_216 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_217 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_218 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_219 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_220 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_221 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_222 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_223 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_224 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_225 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_226 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_227 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_228 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_229 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_230 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_231 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_232 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_233 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_234 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_235 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_236 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_237 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_238 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_239 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_240 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_241 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_242 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_243 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_244 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_245 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_246 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_247 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_248 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_249 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_250 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_251 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_252 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_253 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_254 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_255 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_256 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_257 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_258 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_259 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_260 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_261 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_262 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_263 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_264 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_265 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_266 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_267 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_268 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_269 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_270 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_271 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_272 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_273 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_274 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_275 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_276 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_277 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_278 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_279 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_280 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_281 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_282 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_283 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_284 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_285 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_286 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_287 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_288 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_289 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_290 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_291 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_292 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_293 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_294 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_295 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_296 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_297 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_298 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_299 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_300 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_301 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_302 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_303 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_304 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_305 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_306 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_307 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_308 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_309 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_310 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_311 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_312 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_313 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_314 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_315 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_316 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_317 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_318 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_319 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_320 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_321 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_322 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_323 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_324 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_325 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_326 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_327 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_328 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_329 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_330 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_331 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_332 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_333 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_334 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_335 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_336 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_337 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_338 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_339 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_340 = [_]Operand{ .{ .imm = 1 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_341 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 3 } };
const operands_342 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 3 } };
const operands_343 = [_]Operand{ .{ .imm = 1 }, .{ .imm = 3 } };
const operands_344 = [_]Operand{.{ .reg = 5 }};
const operands_345 = [_]Operand{.{ .reg = 5 }};
const operands_346 = [_]Operand{.{ .reg = 5 }};
const operands_347 = [_]Operand{.{ .reg = 5 }};
const operands_348 = [_]Operand{.{ .reg = 5 }};
const operands_349 = [_]Operand{.{ .reg = 5 }};
const operands_350 = [_]Operand{.{ .reg = 5 }};
const operands_351 = [_]Operand{.{ .reg = 5 }};
const operands_352 = [_]Operand{.{ .reg = 5 }};
const operands_353 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 768 } };
const operands_354 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_355 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 74565 } };
const operands_356 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 74565 } };
const operands_357 = [_]Operand{.{ .reg = 5 }};
const operands_358 = [_]Operand{ .{ .reg = 1 }, .{ .imm = 16 } };
const operands_359 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_360 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_361 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_362 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_363 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_364 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_365 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_366 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_367 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_368 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_369 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_370 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_371 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_372 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_373 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_374 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_375 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_376 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_377 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_378 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_379 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_380 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_381 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_382 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_383 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .reg = 7 } };
const operands_384 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_385 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_386 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_387 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_388 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_389 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_390 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_391 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_392 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_393 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_394 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_395 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_396 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_397 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_398 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_399 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_400 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_401 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_402 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_403 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_404 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 2 }, .{ .imm = 3 } };
const operands_405 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_406 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_407 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_408 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_409 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_410 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_411 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_412 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_413 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_414 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_415 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_416 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_417 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_418 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_419 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_420 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_421 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_422 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_423 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_424 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_425 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_426 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_427 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_428 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_429 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_430 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_431 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_432 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_433 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_434 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_435 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_436 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_437 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_438 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_439 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_440 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_441 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_442 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_443 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_444 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_445 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_446 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_447 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_448 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_449 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_450 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_451 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_452 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_453 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_454 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_455 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_456 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_457 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_458 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_459 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_460 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_461 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_462 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 1 } };
const operands_463 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 10 } };
const operands_464 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 11 } };
const operands_465 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 12 } };
const operands_466 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 13 } };
const operands_467 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 14 } };
const operands_468 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 15 } };
const operands_469 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_470 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 17 } };
const operands_471 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 18 } };
const operands_472 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 19 } };
const operands_473 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 2 } };
const operands_474 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 20 } };
const operands_475 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 21 } };
const operands_476 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 22 } };
const operands_477 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 23 } };
const operands_478 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 24 } };
const operands_479 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 25 } };
const operands_480 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 26 } };
const operands_481 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 27 } };
const operands_482 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 28 } };
const operands_483 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 29 } };
const operands_484 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_485 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 30 } };
const operands_486 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 31 } };
const operands_487 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 4 } };
const operands_488 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 5 } };
const operands_489 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 6 } };
const operands_490 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 7 } };
const operands_491 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 8 } };
const operands_492 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 9 } };
const operands_493 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_494 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_495 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_496 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_497 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_498 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_499 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_500 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_501 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_502 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_503 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_504 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_505 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_506 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_507 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_508 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_509 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_510 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_511 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_512 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_513 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_514 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_515 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_516 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_517 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_518 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_519 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_520 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_521 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_522 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_523 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_524 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 768 }, .{ .reg = 6 } };
const operands_525 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 768 }, .{ .reg = 6 } };
const operands_526 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 768 }, .{ .reg = 6 } };
const operands_527 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_528 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_529 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_530 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_531 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_532 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_533 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_534 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_535 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_536 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_537 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_538 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_539 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_540 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_541 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_542 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_543 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_544 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_545 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_546 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_547 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_548 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_549 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_550 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_551 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_552 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_553 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_554 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_555 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_556 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_557 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_558 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_559 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_560 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_561 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_562 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_563 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_564 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_565 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_566 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_567 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_568 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_569 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_570 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_571 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_572 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_573 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_574 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_575 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_576 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_577 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_578 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_579 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_580 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_581 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_582 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_583 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_584 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_585 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_586 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_587 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_588 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_589 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_590 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_591 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_592 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_593 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_594 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_595 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_596 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_597 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_598 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_599 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_600 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_601 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_602 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_603 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_604 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_605 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_606 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_607 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_608 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 2 } };
const operands_609 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_610 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_611 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_612 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_613 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_614 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_615 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_616 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_617 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_618 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_619 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_620 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_621 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_622 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_623 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_624 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_625 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_626 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_627 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_628 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_629 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_630 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_631 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_632 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_633 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_634 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_635 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_636 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_637 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_638 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_639 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_640 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_641 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_642 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_643 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_644 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_645 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_646 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_647 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_648 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_649 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_650 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_651 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_652 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_653 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_654 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_655 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_656 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_657 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_658 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_659 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_660 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_661 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_662 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_663 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_664 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_665 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_666 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_667 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_668 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_669 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_670 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_671 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_672 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_673 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_674 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_675 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_676 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_677 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_678 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_679 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_680 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_681 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_682 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_683 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_684 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_685 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_686 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_687 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_688 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_689 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_690 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_691 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_692 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_693 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_694 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_695 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_696 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_697 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_698 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_699 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_700 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_701 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_702 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_703 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_704 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_705 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_706 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_707 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_708 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_709 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_710 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_711 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_712 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_713 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_714 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_715 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_716 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_717 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_718 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 1 } };
const operands_719 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 2 } };
const operands_720 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 3 } };
const operands_721 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 4 } };
const operands_722 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 5 } };
const operands_723 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 6 } };
const operands_724 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 7 } };
const operands_725 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_726 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_727 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_728 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_729 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_730 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_731 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_732 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_733 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_734 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_735 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_736 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_737 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_738 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_739 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_740 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_741 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_742 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_743 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_744 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_745 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_746 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_747 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_748 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_749 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_750 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_751 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_752 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_753 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_754 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_755 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_756 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_757 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_758 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_759 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_760 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_761 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_762 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_763 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_764 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_765 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_766 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_767 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_768 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_769 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_770 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_771 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_772 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_773 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_774 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_775 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_776 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_777 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_778 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_779 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_780 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_781 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_782 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_783 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_784 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_785 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_786 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_787 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_788 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_789 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_790 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_791 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_792 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_793 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_794 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_795 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_796 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_797 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_798 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_799 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_800 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_801 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_802 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_803 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_804 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_805 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_806 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_807 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_808 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_809 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_810 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_811 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_812 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_813 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_814 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_815 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_816 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_817 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_818 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_819 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_820 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_821 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_822 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_823 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_824 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_825 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_826 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_827 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_828 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_829 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_830 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_831 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_832 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_833 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_834 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_835 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_836 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_837 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_838 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_839 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_840 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_841 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_842 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_843 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_844 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_845 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_846 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_847 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_848 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_849 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_850 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_851 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_852 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_853 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_854 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_855 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_856 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_857 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_858 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_859 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_860 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_861 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_862 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_863 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_864 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_865 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_866 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_867 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_868 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_869 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_870 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_871 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_872 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_873 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_874 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_875 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_876 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_877 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_878 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_879 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_880 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_881 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_882 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_883 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_884 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_885 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_886 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_887 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_888 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_889 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_890 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_891 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_892 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_893 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_894 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_895 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_896 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_897 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_898 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_899 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_900 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_901 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_902 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_903 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_904 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_905 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_906 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_907 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_908 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_909 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_910 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_911 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_912 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_913 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_914 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_915 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_916 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_917 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_918 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_919 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_920 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_921 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_922 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_923 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_924 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_925 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_926 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_927 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_928 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_929 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_930 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_931 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_932 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_933 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_934 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_935 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_936 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_937 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_938 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_939 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_940 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_941 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_942 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_943 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_944 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_945 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_946 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_947 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_948 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_949 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_950 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_951 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_952 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_953 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_954 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_955 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_956 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_957 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_958 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_959 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_960 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_961 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_962 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_963 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_964 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_965 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_966 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_967 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_968 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_969 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_970 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_971 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_972 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_973 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_974 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_975 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_976 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_977 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_978 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_979 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_980 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_981 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_982 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_983 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_984 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_985 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_986 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_987 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_988 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_989 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_990 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_991 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_992 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_993 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_994 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_995 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_996 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_997 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_998 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_999 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1000 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1001 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1002 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1003 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1004 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1005 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1006 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1007 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1008 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1009 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1010 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1011 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1012 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1013 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1014 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1015 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1016 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1017 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1018 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1019 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1020 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1021 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1022 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1023 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1024 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1025 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1026 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1027 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1028 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1029 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1030 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1031 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1032 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1033 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1034 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1035 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1036 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1037 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1038 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1039 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1040 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1041 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1042 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1043 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1044 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1045 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1046 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1047 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1048 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1049 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1050 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1051 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1052 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1053 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1054 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1055 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1056 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1057 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1058 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1059 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1060 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1061 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1062 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1063 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1064 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1065 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1066 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1067 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1068 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1069 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1070 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1071 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1072 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1073 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 1 } };
const operands_1074 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 1 } };
const operands_1075 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 1 } };
const operands_1076 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 1 } };
const operands_1077 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 1 } };
const operands_1078 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 1 } };
const operands_1079 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1080 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1081 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1082 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1083 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1084 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1085 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1086 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1087 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1088 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1089 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1090 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1091 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1092 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1093 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1094 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1095 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1096 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1097 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1098 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1099 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1100 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1101 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1102 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1103 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1104 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1105 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1106 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1107 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1108 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1109 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1110 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .reg = 8 }, .{ .imm = 0 } };
const operands_1111 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1112 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1113 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1114 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1115 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1116 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1117 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1118 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1119 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1120 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1121 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1122 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1123 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1124 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1125 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1126 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1127 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1128 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1129 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1130 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1131 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1132 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1133 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1134 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1135 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1136 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1137 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1138 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1139 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1140 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1141 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1142 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1143 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1144 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1145 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1146 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1147 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1148 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1149 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1150 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1151 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1152 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 192 } };
const operands_1153 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 } };
const operands_1154 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 } };
const operands_1155 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 3 } };
const operands_1156 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 3 } };
const operands_1157 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 3 } };
const operands_1158 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 3 } };
const operands_1159 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 3 } };
const operands_1160 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1161 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1162 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1163 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1164 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1165 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 3 } };
const operands_1166 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 3 } };
const operands_1167 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 4 }, .{ .imm = 73 } };
const operands_1168 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 768 }, .{ .imm = 3 } };
const operands_1169 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 768 }, .{ .imm = 3 } };
const operands_1170 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 768 }, .{ .imm = 3 } };
const operands_1171 = [_]Operand{.{ .reg = 6 }};
const operands_1172 = [_]Operand{.{ .reg = 6 }};
const operands_1173 = [_]Operand{.{ .reg = 6 }};
const operands_1174 = [_]Operand{.{ .reg = 6 }};
const operands_1175 = [_]Operand{.{ .reg = 6 }};
const operands_1176 = [_]Operand{.{ .reg = 6 }};
const operands_1177 = [_]Operand{ .{ .imm = 768 }, .{ .reg = 6 } };
const operands_1178 = [_]Operand{ .{ .imm = 768 }, .{ .reg = 6 } };
const operands_1179 = [_]Operand{ .{ .imm = 768 }, .{ .reg = 6 } };
const operands_1180 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 16 } };
const operands_1181 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 16 } };
const operands_1182 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1183 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1184 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1185 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1186 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 32 } };
const operands_1187 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 32 } };
const operands_1188 = [_]Operand{ .{ .reg = 6 }, .{ .imm = 32 } };
const operands_1189 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1190 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1191 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1192 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1193 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1194 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1195 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1196 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1197 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1198 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1199 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1200 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1201 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1202 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1203 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1204 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1205 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1206 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1207 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1208 = [_]Operand{ .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1209 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1210 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1211 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1212 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1213 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1214 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1215 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1216 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 }, .{ .reg = 6 } };
const operands_1217 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1218 = [_]Operand{ .{ .reg = 7 }, .{ .imm = 16 } };
const operands_1219 = [_]Operand{ .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1220 = [_]Operand{ .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1221 = [_]Operand{ .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1222 = [_]Operand{ .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 16 } };
const operands_1223 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 1 }, .{ .imm = 1 } };
const operands_1224 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 }, .{ .reg = 6 }, .{ .imm = 1 }, .{ .imm = 1 } };
const operands_1225 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1226 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1227 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1228 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1229 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1230 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1231 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1232 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1233 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1234 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1235 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1236 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1237 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1238 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1239 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1240 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1241 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1242 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1243 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1244 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1245 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1246 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1247 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1248 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1249 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1250 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1251 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1252 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1253 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1254 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1255 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1256 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1257 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1258 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1259 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1260 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1261 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1262 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1263 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1264 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1265 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1266 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1267 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1268 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1269 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1270 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1271 = [_]Operand{ .{ .reg = 5 }, .{ .imm = -1 } };
const operands_1272 = [_]Operand{ .{ .reg = 5 }, .{ .imm = 0 } };
const operands_1273 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 7 } };
const operands_1274 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1275 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1276 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1277 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1278 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1279 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1280 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1281 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1282 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1283 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1284 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1285 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1286 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1287 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1288 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1289 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1290 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1291 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1292 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1293 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1294 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1295 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1296 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1297 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1298 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1299 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1300 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1301 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1302 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1303 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1304 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1305 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1306 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1307 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1308 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1309 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1310 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1311 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1312 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1313 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1314 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1315 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1316 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1317 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1318 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1319 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1320 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1321 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1322 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1323 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1324 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1325 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1326 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1327 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1328 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1329 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1330 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1331 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1332 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1333 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1334 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1335 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1336 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1337 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1338 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1339 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1340 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1341 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1342 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1343 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1344 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1345 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1346 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1347 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1348 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1349 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1350 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1351 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1352 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1353 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1354 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1355 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1356 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1357 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1358 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1359 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1360 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1361 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1362 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1363 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1364 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1365 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1366 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1367 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1368 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1369 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1370 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1371 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1372 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1373 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1374 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1375 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1376 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1377 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1378 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1379 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1380 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1381 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1382 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1383 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1384 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1385 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1386 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1387 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1388 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1389 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1390 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1391 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1392 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1393 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1394 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1395 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1396 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1397 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1398 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1399 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1400 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1401 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1402 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1403 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1404 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1405 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1406 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1407 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1408 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1409 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1410 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1411 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1412 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1413 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 } };
const operands_1414 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 } };
const operands_1415 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 } };
const operands_1416 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 } };
const operands_1417 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1418 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1419 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1420 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1421 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1422 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1423 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1424 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1425 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1426 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1427 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1428 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1429 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = -1 }, .{ .imm = 0 } };
const operands_1430 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1431 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1432 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1433 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1434 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1435 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1436 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1437 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1438 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1439 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1440 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1441 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1442 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1443 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1444 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1445 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1446 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1447 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1448 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1449 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1450 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1451 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1452 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1453 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1454 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1455 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1456 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1457 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1458 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1459 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1460 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1461 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1462 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1463 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1464 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1465 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1466 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1467 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1468 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1469 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1470 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1471 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1472 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1473 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1474 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1475 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1476 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1477 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1478 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1479 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 } };
const operands_1480 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1481 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1482 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1483 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1484 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1485 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1486 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1487 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1488 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1489 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1490 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1491 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1492 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1493 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1494 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1495 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1496 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1497 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1498 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1499 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1500 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 } };
const operands_1501 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1502 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1503 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1504 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1505 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1506 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1507 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1508 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1509 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1510 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1511 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1512 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1513 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1514 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1515 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1516 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1517 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1518 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1519 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1520 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1521 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1522 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1523 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1524 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1525 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1526 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1527 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1528 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1529 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1530 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1531 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1532 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1533 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1534 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1535 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1536 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1537 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1538 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1539 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1540 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1541 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1542 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1543 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1544 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1545 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1546 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1547 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1548 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1549 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1550 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1551 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1552 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1553 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1554 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1555 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1556 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1557 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1558 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1559 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1560 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1561 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1562 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1563 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1564 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1565 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1566 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1567 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1568 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1569 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1570 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1571 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1572 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1573 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1574 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1575 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1576 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1577 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1578 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1579 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1580 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1581 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1582 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1583 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1584 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1585 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1586 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1587 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1588 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1589 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1590 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1591 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1592 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1593 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1594 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1595 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1596 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1597 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1598 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1599 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1600 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1601 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1602 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1603 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1604 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1605 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1606 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1607 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1608 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1609 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1610 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1611 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1612 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1613 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1614 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1615 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1616 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1617 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1618 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1619 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1620 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1621 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1622 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1623 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1624 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1625 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1626 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1627 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1628 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1629 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1630 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1631 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1632 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1633 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1634 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1635 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1636 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1637 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1638 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1639 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 } };
const operands_1640 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1641 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1642 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1643 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 } };
const operands_1644 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1645 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1646 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1647 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1648 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1649 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1650 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1651 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1652 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1653 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1654 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1655 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1656 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 3 }, .{ .imm = 0 } };
const operands_1657 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 17 }, .{ .imm = 0 } };
const operands_1658 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1659 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1660 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1661 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1662 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1663 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 } };
const operands_1664 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1665 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1666 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1667 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1668 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1669 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1670 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1671 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1672 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1673 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1674 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1675 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1676 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1677 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1678 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1679 = [_]Operand{ .{ .reg = 5 }, .{ .reg = 6 }, .{ .reg = 7 }, .{ .imm = 0 }, .{ .imm = 0 } };
const operands_1680 = [_]Operand{ .{ .imm = 768 }, .{ .imm = 3 } };
const operands_1681 = [_]Operand{ .{ .imm = 768 }, .{ .imm = 3 } };
const operands_1682 = [_]Operand{ .{ .imm = 768 }, .{ .imm = 3 } };

const fixtures = [_]Fixture{
    .{
        .label = "amo:amoadd_b:64",
        .text = "amoadd.b.rl x5, x7, x6",
        .mnemonic = "amoadd.b",
        .xlen = 64,
        .operands = &operands_0,
    },
    .{
        .label = "amo:amoadd_d:64",
        .text = "amoadd.d.rl x5, x7, x6",
        .mnemonic = "amoadd.d",
        .xlen = 64,
        .operands = &operands_1,
    },
    .{
        .label = "amo:amoadd_h:64",
        .text = "amoadd.h.rl x5, x7, x6",
        .mnemonic = "amoadd.h",
        .xlen = 64,
        .operands = &operands_2,
    },
    .{
        .label = "amo:amoadd_w:64",
        .text = "amoadd.w.rl x5, x7, x6",
        .mnemonic = "amoadd.w",
        .xlen = 64,
        .operands = &operands_3,
    },
    .{
        .label = "amo:amoand_b:64",
        .text = "amoand.b.rl x5, x7, x6",
        .mnemonic = "amoand.b",
        .xlen = 64,
        .operands = &operands_4,
    },
    .{
        .label = "amo:amoand_d:64",
        .text = "amoand.d.rl x5, x7, x6",
        .mnemonic = "amoand.d",
        .xlen = 64,
        .operands = &operands_5,
    },
    .{
        .label = "amo:amoand_h:64",
        .text = "amoand.h.rl x5, x7, x6",
        .mnemonic = "amoand.h",
        .xlen = 64,
        .operands = &operands_6,
    },
    .{
        .label = "amo:amoand_w:64",
        .text = "amoand.w.rl x5, x7, x6",
        .mnemonic = "amoand.w",
        .xlen = 64,
        .operands = &operands_7,
    },
    .{
        .label = "amo:amocas_b:64",
        .text = "amocas.b.rl x5, x7, x6",
        .mnemonic = "amocas.b",
        .xlen = 64,
        .operands = &operands_8,
    },
    .{
        .label = "amo:amocas_d:64",
        .text = "amocas.d.rl x5, x7, x6",
        .mnemonic = "amocas.d",
        .xlen = 64,
        .operands = &operands_9,
    },
    .{
        .label = "amo:amocas_h:64",
        .text = "amocas.h.rl x5, x7, x6",
        .mnemonic = "amocas.h",
        .xlen = 64,
        .operands = &operands_10,
    },
    .{
        .label = "amo:amocas_q:64",
        .text = "amocas.q.rl x5, x7, x6",
        .mnemonic = "amocas.q",
        .xlen = 64,
        .operands = &operands_11,
    },
    .{
        .label = "amo:amocas_w:64",
        .text = "amocas.w.rl x5, x7, x6",
        .mnemonic = "amocas.w",
        .xlen = 64,
        .operands = &operands_12,
    },
    .{
        .label = "amo:amomax_b:64",
        .text = "amomax.b.rl x5, x7, x6",
        .mnemonic = "amomax.b",
        .xlen = 64,
        .operands = &operands_13,
    },
    .{
        .label = "amo:amomax_d:64",
        .text = "amomax.d.rl x5, x7, x6",
        .mnemonic = "amomax.d",
        .xlen = 64,
        .operands = &operands_14,
    },
    .{
        .label = "amo:amomax_h:64",
        .text = "amomax.h.rl x5, x7, x6",
        .mnemonic = "amomax.h",
        .xlen = 64,
        .operands = &operands_15,
    },
    .{
        .label = "amo:amomax_w:64",
        .text = "amomax.w.rl x5, x7, x6",
        .mnemonic = "amomax.w",
        .xlen = 64,
        .operands = &operands_16,
    },
    .{
        .label = "amo:amomaxu_b:64",
        .text = "amomaxu.b.rl x5, x7, x6",
        .mnemonic = "amomaxu.b",
        .xlen = 64,
        .operands = &operands_17,
    },
    .{
        .label = "amo:amomaxu_d:64",
        .text = "amomaxu.d.rl x5, x7, x6",
        .mnemonic = "amomaxu.d",
        .xlen = 64,
        .operands = &operands_18,
    },
    .{
        .label = "amo:amomaxu_h:64",
        .text = "amomaxu.h.rl x5, x7, x6",
        .mnemonic = "amomaxu.h",
        .xlen = 64,
        .operands = &operands_19,
    },
    .{
        .label = "amo:amomaxu_w:64",
        .text = "amomaxu.w.rl x5, x7, x6",
        .mnemonic = "amomaxu.w",
        .xlen = 64,
        .operands = &operands_20,
    },
    .{
        .label = "amo:amomin_b:64",
        .text = "amomin.b.rl x5, x7, x6",
        .mnemonic = "amomin.b",
        .xlen = 64,
        .operands = &operands_21,
    },
    .{
        .label = "amo:amomin_d:64",
        .text = "amomin.d.rl x5, x7, x6",
        .mnemonic = "amomin.d",
        .xlen = 64,
        .operands = &operands_22,
    },
    .{
        .label = "amo:amomin_h:64",
        .text = "amomin.h.rl x5, x7, x6",
        .mnemonic = "amomin.h",
        .xlen = 64,
        .operands = &operands_23,
    },
    .{
        .label = "amo:amomin_w:64",
        .text = "amomin.w.rl x5, x7, x6",
        .mnemonic = "amomin.w",
        .xlen = 64,
        .operands = &operands_24,
    },
    .{
        .label = "amo:amominu_b:64",
        .text = "amominu.b.rl x5, x7, x6",
        .mnemonic = "amominu.b",
        .xlen = 64,
        .operands = &operands_25,
    },
    .{
        .label = "amo:amominu_d:64",
        .text = "amominu.d.rl x5, x7, x6",
        .mnemonic = "amominu.d",
        .xlen = 64,
        .operands = &operands_26,
    },
    .{
        .label = "amo:amominu_h:64",
        .text = "amominu.h.rl x5, x7, x6",
        .mnemonic = "amominu.h",
        .xlen = 64,
        .operands = &operands_27,
    },
    .{
        .label = "amo:amominu_w:64",
        .text = "amominu.w.rl x5, x7, x6",
        .mnemonic = "amominu.w",
        .xlen = 64,
        .operands = &operands_28,
    },
    .{
        .label = "amo:amoor_b:64",
        .text = "amoor.b.rl x5, x7, x6",
        .mnemonic = "amoor.b",
        .xlen = 64,
        .operands = &operands_29,
    },
    .{
        .label = "amo:amoor_d:64",
        .text = "amoor.d.rl x5, x7, x6",
        .mnemonic = "amoor.d",
        .xlen = 64,
        .operands = &operands_30,
    },
    .{
        .label = "amo:amoor_h:64",
        .text = "amoor.h.rl x5, x7, x6",
        .mnemonic = "amoor.h",
        .xlen = 64,
        .operands = &operands_31,
    },
    .{
        .label = "amo:amoor_w:64",
        .text = "amoor.w.rl x5, x7, x6",
        .mnemonic = "amoor.w",
        .xlen = 64,
        .operands = &operands_32,
    },
    .{
        .label = "amo:amoswap_b:64",
        .text = "amoswap.b.rl x5, x7, x6",
        .mnemonic = "amoswap.b",
        .xlen = 64,
        .operands = &operands_33,
    },
    .{
        .label = "amo:amoswap_d:64",
        .text = "amoswap.d.rl x5, x7, x6",
        .mnemonic = "amoswap.d",
        .xlen = 64,
        .operands = &operands_34,
    },
    .{
        .label = "amo:amoswap_h:64",
        .text = "amoswap.h.rl x5, x7, x6",
        .mnemonic = "amoswap.h",
        .xlen = 64,
        .operands = &operands_35,
    },
    .{
        .label = "amo:amoswap_w:64",
        .text = "amoswap.w.rl x5, x7, x6",
        .mnemonic = "amoswap.w",
        .xlen = 64,
        .operands = &operands_36,
    },
    .{
        .label = "amo:amoxor_b:64",
        .text = "amoxor.b.rl x5, x7, x6",
        .mnemonic = "amoxor.b",
        .xlen = 64,
        .operands = &operands_37,
    },
    .{
        .label = "amo:amoxor_d:64",
        .text = "amoxor.d.rl x5, x7, x6",
        .mnemonic = "amoxor.d",
        .xlen = 64,
        .operands = &operands_38,
    },
    .{
        .label = "amo:amoxor_h:64",
        .text = "amoxor.h.rl x5, x7, x6",
        .mnemonic = "amoxor.h",
        .xlen = 64,
        .operands = &operands_39,
    },
    .{
        .label = "amo:amoxor_w:64",
        .text = "amoxor.w.rl x5, x7, x6",
        .mnemonic = "amoxor.w",
        .xlen = 64,
        .operands = &operands_40,
    },
    .{
        .label = "amo:ssamoswap_d:64",
        .text = "ssamoswap.d.rl x5, x7, x6",
        .mnemonic = "ssamoswap.d",
        .xlen = 64,
        .operands = &operands_41,
    },
    .{
        .label = "amo:ssamoswap_w:64",
        .text = "ssamoswap.w.rl x5, x7, x6",
        .mnemonic = "ssamoswap.w",
        .xlen = 64,
        .operands = &operands_42,
    },
    .{
        .label = "c_addi16sp:c_addi16sp:64",
        .text = "c.addi16sp 16",
        .mnemonic = "c.addi16sp",
        .xlen = 64,
        .operands = &operands_43,
    },
    .{
        .label = "c_addi4spn:c_addi4spn:64",
        .text = "c.addi4spn x9, 16",
        .mnemonic = "c.addi4spn",
        .xlen = 64,
        .operands = &operands_44,
    },
    .{
        .label = "c_index:cm_jalt:64",
        .text = "cm.jalt 32",
        .mnemonic = "cm.jalt",
        .xlen = 64,
        .operands = &operands_45,
    },
    .{
        .label = "c_mop_t:c_mop_n:64",
        .text = "c.mop.n 1",
        .mnemonic = "c.mop.n",
        .xlen = 64,
        .operands = &operands_46,
    },
    .{
        .label = "c_none:c_ebreak:64",
        .text = "c.ebreak",
        .mnemonic = "c.ebreak",
        .xlen = 64,
        .operands = &operands_47,
    },
    .{
        .label = "c_none:c_mop_1:64",
        .text = "c.mop.1",
        .mnemonic = "c.mop.1",
        .xlen = 64,
        .operands = &operands_48,
    },
    .{
        .label = "c_none:c_mop_11:64",
        .text = "c.mop.11",
        .mnemonic = "c.mop.11",
        .xlen = 64,
        .operands = &operands_49,
    },
    .{
        .label = "c_none:c_mop_13:64",
        .text = "c.mop.13",
        .mnemonic = "c.mop.13",
        .xlen = 64,
        .operands = &operands_50,
    },
    .{
        .label = "c_none:c_mop_15:64",
        .text = "c.mop.15",
        .mnemonic = "c.mop.15",
        .xlen = 64,
        .operands = &operands_51,
    },
    .{
        .label = "c_none:c_mop_3:64",
        .text = "c.mop.3",
        .mnemonic = "c.mop.3",
        .xlen = 64,
        .operands = &operands_52,
    },
    .{
        .label = "c_none:c_mop_5:64",
        .text = "c.mop.5",
        .mnemonic = "c.mop.5",
        .xlen = 64,
        .operands = &operands_53,
    },
    .{
        .label = "c_none:c_mop_7:64",
        .text = "c.mop.7",
        .mnemonic = "c.mop.7",
        .xlen = 64,
        .operands = &operands_54,
    },
    .{
        .label = "c_none:c_mop_9:64",
        .text = "c.mop.9",
        .mnemonic = "c.mop.9",
        .xlen = 64,
        .operands = &operands_55,
    },
    .{
        .label = "c_none:c_nop:64",
        .text = "c.nop",
        .mnemonic = "c.nop",
        .xlen = 64,
        .operands = &operands_56,
    },
    .{
        .label = "c_none:c_ntl_all:64",
        .text = "c.ntl.all",
        .mnemonic = "c.ntl.all",
        .xlen = 64,
        .operands = &operands_57,
    },
    .{
        .label = "c_none:c_ntl_p1:64",
        .text = "c.ntl.p1",
        .mnemonic = "c.ntl.p1",
        .xlen = 64,
        .operands = &operands_58,
    },
    .{
        .label = "c_none:c_ntl_pall:64",
        .text = "c.ntl.pall",
        .mnemonic = "c.ntl.pall",
        .xlen = 64,
        .operands = &operands_59,
    },
    .{
        .label = "c_none:c_ntl_s1:64",
        .text = "c.ntl.s1",
        .mnemonic = "c.ntl.s1",
        .xlen = 64,
        .operands = &operands_60,
    },
    .{
        .label = "c_none:c_sspopchk_x5:64",
        .text = "c.sspopchk.x5",
        .mnemonic = "c.sspopchk.x5",
        .xlen = 64,
        .operands = &operands_61,
    },
    .{
        .label = "c_none:c_sspush_x1:64",
        .text = "c.sspush.x1",
        .mnemonic = "c.sspush.x1",
        .xlen = 64,
        .operands = &operands_62,
    },
    .{
        .label = "c_offset:c_j:64",
        .text = "c.j 16",
        .mnemonic = "c.j",
        .xlen = 64,
        .operands = &operands_63,
    },
    .{
        .label = "c_offset:c_jal:32",
        .text = "c.jal 16",
        .mnemonic = "c.jal",
        .xlen = 32,
        .operands = &operands_64,
    },
    .{
        .label = "c_rd:c_not:64",
        .text = "c.not x9",
        .mnemonic = "c.not",
        .xlen = 64,
        .operands = &operands_65,
    },
    .{
        .label = "c_rd:c_sext_b:64",
        .text = "c.sext.b x9",
        .mnemonic = "c.sext.b",
        .xlen = 64,
        .operands = &operands_66,
    },
    .{
        .label = "c_rd:c_sext_h:64",
        .text = "c.sext.h x9",
        .mnemonic = "c.sext.h",
        .xlen = 64,
        .operands = &operands_67,
    },
    .{
        .label = "c_rd:c_sext_w:64",
        .text = "c.sext.w x9",
        .mnemonic = "c.sext.w",
        .xlen = 64,
        .operands = &operands_68,
    },
    .{
        .label = "c_rd:c_zext_b:64",
        .text = "c.zext.b x9",
        .mnemonic = "c.zext.b",
        .xlen = 64,
        .operands = &operands_69,
    },
    .{
        .label = "c_rd:c_zext_h:64",
        .text = "c.zext.h x9",
        .mnemonic = "c.zext.h",
        .xlen = 64,
        .operands = &operands_70,
    },
    .{
        .label = "c_rd:c_zext_w:64",
        .text = "c.zext.w x9",
        .mnemonic = "c.zext.w",
        .xlen = 64,
        .operands = &operands_71,
    },
    .{
        .label = "c_rd_imm6:c_addi:64",
        .text = "c.addi x9, 1",
        .mnemonic = "c.addi",
        .xlen = 64,
        .operands = &operands_72,
    },
    .{
        .label = "c_rd_imm6:c_addiw:64",
        .text = "c.addiw x9, 1",
        .mnemonic = "c.addiw",
        .xlen = 64,
        .operands = &operands_73,
    },
    .{
        .label = "c_rd_imm6:c_andi:64",
        .text = "c.andi x9, 1",
        .mnemonic = "c.andi",
        .xlen = 64,
        .operands = &operands_74,
    },
    .{
        .label = "c_rd_imm6:c_li:64",
        .text = "c.li x9, 1",
        .mnemonic = "c.li",
        .xlen = 64,
        .operands = &operands_75,
    },
    .{
        .label = "c_rd_lui_imm:c_lui:64",
        .text = "c.lui x9, 4096",
        .mnemonic = "c.lui",
        .xlen = 64,
        .operands = &operands_76,
    },
    .{
        .label = "c_rd_p_rs1_p_uimm:c_fld:64",
        .text = "c.fld x9, 8(x10)",
        .mnemonic = "c.fld",
        .xlen = 64,
        .operands = &operands_77,
    },
    .{
        .label = "c_rd_p_rs1_p_uimm:c_flw:32",
        .text = "c.flw x9, 4(x10)",
        .mnemonic = "c.flw",
        .xlen = 32,
        .operands = &operands_78,
    },
    .{
        .label = "c_rd_p_rs1_p_uimm:c_lbu:64",
        .text = "c.lbu x9, 1(x10)",
        .mnemonic = "c.lbu",
        .xlen = 64,
        .operands = &operands_79,
    },
    .{
        .label = "c_rd_p_rs1_p_uimm:c_ld:64",
        .text = "c.ld x9, 8(x10)",
        .mnemonic = "c.ld",
        .xlen = 64,
        .operands = &operands_80,
    },
    .{
        .label = "c_rd_p_rs1_p_uimm:c_lh:64",
        .text = "c.lh x9, 2(x10)",
        .mnemonic = "c.lh",
        .xlen = 64,
        .operands = &operands_81,
    },
    .{
        .label = "c_rd_p_rs1_p_uimm:c_lhu:64",
        .text = "c.lhu x9, 2(x10)",
        .mnemonic = "c.lhu",
        .xlen = 64,
        .operands = &operands_82,
    },
    .{
        .label = "c_rd_p_rs1_p_uimm:c_lw:64",
        .text = "c.lw x9, 4(x10)",
        .mnemonic = "c.lw",
        .xlen = 64,
        .operands = &operands_83,
    },
    .{
        .label = "c_rd_p_rs2_p:c_addw:64",
        .text = "c.addw x9, x10",
        .mnemonic = "c.addw",
        .xlen = 64,
        .operands = &operands_84,
    },
    .{
        .label = "c_rd_p_rs2_p:c_and:64",
        .text = "c.and x9, x10",
        .mnemonic = "c.and",
        .xlen = 64,
        .operands = &operands_85,
    },
    .{
        .label = "c_rd_p_rs2_p:c_mul:64",
        .text = "c.mul x9, x10",
        .mnemonic = "c.mul",
        .xlen = 64,
        .operands = &operands_86,
    },
    .{
        .label = "c_rd_p_rs2_p:c_or:64",
        .text = "c.or x9, x10",
        .mnemonic = "c.or",
        .xlen = 64,
        .operands = &operands_87,
    },
    .{
        .label = "c_rd_p_rs2_p:c_sub:64",
        .text = "c.sub x9, x10",
        .mnemonic = "c.sub",
        .xlen = 64,
        .operands = &operands_88,
    },
    .{
        .label = "c_rd_p_rs2_p:c_subw:64",
        .text = "c.subw x9, x10",
        .mnemonic = "c.subw",
        .xlen = 64,
        .operands = &operands_89,
    },
    .{
        .label = "c_rd_p_rs2_p:c_xor:64",
        .text = "c.xor x9, x10",
        .mnemonic = "c.xor",
        .xlen = 64,
        .operands = &operands_90,
    },
    .{
        .label = "c_rd_rs2:c_add:64",
        .text = "c.add x9, x10",
        .mnemonic = "c.add",
        .xlen = 64,
        .operands = &operands_91,
    },
    .{
        .label = "c_rd_rs2:c_mv:64",
        .text = "c.mv x9, x10",
        .mnemonic = "c.mv",
        .xlen = 64,
        .operands = &operands_92,
    },
    .{
        .label = "c_rd_sp_uimm:c_fldsp:64",
        .text = "c.fldsp x9, 8",
        .mnemonic = "c.fldsp",
        .xlen = 64,
        .operands = &operands_93,
    },
    .{
        .label = "c_rd_sp_uimm:c_flwsp:32",
        .text = "c.flwsp x9, 4",
        .mnemonic = "c.flwsp",
        .xlen = 32,
        .operands = &operands_94,
    },
    .{
        .label = "c_rd_sp_uimm:c_ldsp:64",
        .text = "c.ldsp x9, 8",
        .mnemonic = "c.ldsp",
        .xlen = 64,
        .operands = &operands_95,
    },
    .{
        .label = "c_rd_sp_uimm:c_lwsp:64",
        .text = "c.lwsp x9, 4",
        .mnemonic = "c.lwsp",
        .xlen = 64,
        .operands = &operands_96,
    },
    .{
        .label = "c_rd_uimm6:c_slli:64",
        .text = "c.slli x9, 1",
        .mnemonic = "c.slli",
        .xlen = 64,
        .operands = &operands_97,
    },
    .{
        .label = "c_rd_uimm6:c_srai:64",
        .text = "c.srai x9, 1",
        .mnemonic = "c.srai",
        .xlen = 64,
        .operands = &operands_98,
    },
    .{
        .label = "c_rd_uimm6:c_srli:64",
        .text = "c.srli x9, 1",
        .mnemonic = "c.srli",
        .xlen = 64,
        .operands = &operands_99,
    },
    .{
        .label = "c_rlist_spimm:cm_pop:64",
        .text = "cm.pop {ra}, 0",
        .mnemonic = "cm.pop",
        .xlen = 64,
        .operands = &operands_100,
    },
    .{
        .label = "c_rlist_spimm:cm_popret:64",
        .text = "cm.popret {ra}, 0",
        .mnemonic = "cm.popret",
        .xlen = 64,
        .operands = &operands_101,
    },
    .{
        .label = "c_rlist_spimm:cm_popretz:64",
        .text = "cm.popretz {ra}, 0",
        .mnemonic = "cm.popretz",
        .xlen = 64,
        .operands = &operands_102,
    },
    .{
        .label = "c_rlist_spimm:cm_push:64",
        .text = "cm.push {ra}, 0",
        .mnemonic = "cm.push",
        .xlen = 64,
        .operands = &operands_103,
    },
    .{
        .label = "c_rs1:c_jalr:64",
        .text = "c.jalr x9",
        .mnemonic = "c.jalr",
        .xlen = 64,
        .operands = &operands_104,
    },
    .{
        .label = "c_rs1:c_jr:64",
        .text = "c.jr x9",
        .mnemonic = "c.jr",
        .xlen = 64,
        .operands = &operands_105,
    },
    .{
        .label = "c_rs1_p_offset:c_beqz:64",
        .text = "c.beqz x9, 16",
        .mnemonic = "c.beqz",
        .xlen = 64,
        .operands = &operands_106,
    },
    .{
        .label = "c_rs1_p_offset:c_bnez:64",
        .text = "c.bnez x9, 16",
        .mnemonic = "c.bnez",
        .xlen = 64,
        .operands = &operands_107,
    },
    .{
        .label = "c_rs1_p_rs2_p_uimm:c_fsd:64",
        .text = "c.fsd x10, 8(x9)",
        .mnemonic = "c.fsd",
        .xlen = 64,
        .operands = &operands_108,
    },
    .{
        .label = "c_rs1_p_rs2_p_uimm:c_fsw:32",
        .text = "c.fsw x10, 4(x9)",
        .mnemonic = "c.fsw",
        .xlen = 32,
        .operands = &operands_109,
    },
    .{
        .label = "c_rs1_p_rs2_p_uimm:c_sb:64",
        .text = "c.sb x10, 1(x9)",
        .mnemonic = "c.sb",
        .xlen = 64,
        .operands = &operands_110,
    },
    .{
        .label = "c_rs1_p_rs2_p_uimm:c_sd:64",
        .text = "c.sd x10, 8(x9)",
        .mnemonic = "c.sd",
        .xlen = 64,
        .operands = &operands_111,
    },
    .{
        .label = "c_rs1_p_rs2_p_uimm:c_sh:64",
        .text = "c.sh x10, 2(x9)",
        .mnemonic = "c.sh",
        .xlen = 64,
        .operands = &operands_112,
    },
    .{
        .label = "c_rs1_p_rs2_p_uimm:c_sw:64",
        .text = "c.sw x10, 4(x9)",
        .mnemonic = "c.sw",
        .xlen = 64,
        .operands = &operands_113,
    },
    .{
        .label = "c_rs2_sp_uimm:c_fsdsp:64",
        .text = "c.fsdsp x10, 8",
        .mnemonic = "c.fsdsp",
        .xlen = 64,
        .operands = &operands_114,
    },
    .{
        .label = "c_rs2_sp_uimm:c_fswsp:32",
        .text = "c.fswsp x10, 4",
        .mnemonic = "c.fswsp",
        .xlen = 32,
        .operands = &operands_115,
    },
    .{
        .label = "c_rs2_sp_uimm:c_sdsp:64",
        .text = "c.sdsp x10, 8",
        .mnemonic = "c.sdsp",
        .xlen = 64,
        .operands = &operands_116,
    },
    .{
        .label = "c_rs2_sp_uimm:c_swsp:64",
        .text = "c.swsp x10, 4",
        .mnemonic = "c.swsp",
        .xlen = 64,
        .operands = &operands_117,
    },
    .{
        .label = "c_sreg_sreg:cm_mva01s:64",
        .text = "cm.mva01s s0, s1",
        .mnemonic = "cm.mva01s",
        .xlen = 64,
        .operands = &operands_118,
    },
    .{
        .label = "c_sreg_sreg:cm_mvsa01:64",
        .text = "cm.mvsa01 s0, s1",
        .mnemonic = "cm.mvsa01",
        .xlen = 64,
        .operands = &operands_119,
    },
    .{
        .label = "fence:fence:64",
        .text = "fence rw, rw",
        .mnemonic = "fence",
        .xlen = 64,
        .operands = &operands_120,
    },
    .{
        .label = "imm20:lpad:64",
        .text = "lpad 74565",
        .mnemonic = "lpad",
        .xlen = 64,
        .operands = &operands_121,
    },
    .{
        .label = "lr:lr_d:64",
        .text = "lr.d.aq x5, x6",
        .mnemonic = "lr.d",
        .xlen = 64,
        .operands = &operands_122,
    },
    .{
        .label = "lr:lr_w:64",
        .text = "lr.w.aq x5, x6",
        .mnemonic = "lr.w",
        .xlen = 64,
        .operands = &operands_123,
    },
    .{
        .label = "mop_r_n:mop_r_n:64",
        .text = "mop.r.31 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_124,
    },
    .{
        .label = "mop_rr_n:mop_rr_n:64",
        .text = "mop.rr.7 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_125,
    },
    .{
        .label = "none:dret:64",
        .text = "dret",
        .mnemonic = "dret",
        .xlen = 64,
        .operands = &operands_126,
    },
    .{
        .label = "none:ebreak:64",
        .text = "ebreak",
        .mnemonic = "ebreak",
        .xlen = 64,
        .operands = &operands_127,
    },
    .{
        .label = "none:ecall:64",
        .text = "ecall",
        .mnemonic = "ecall",
        .xlen = 64,
        .operands = &operands_128,
    },
    .{
        .label = "none:fence_i:64",
        .text = "fence.i",
        .mnemonic = "fence.i",
        .xlen = 64,
        .operands = &operands_129,
    },
    .{
        .label = "none:fence_tso:64",
        .text = "fence.tso",
        .mnemonic = "fence.tso",
        .xlen = 64,
        .operands = &operands_130,
    },
    .{
        .label = "none:mnret:64",
        .text = "mnret",
        .mnemonic = "mnret",
        .xlen = 64,
        .operands = &operands_131,
    },
    .{
        .label = "none:mret:64",
        .text = "mret",
        .mnemonic = "mret",
        .xlen = 64,
        .operands = &operands_132,
    },
    .{
        .label = "none:nop:64",
        .text = "nop",
        .mnemonic = "nop",
        .xlen = 64,
        .operands = &operands_133,
    },
    .{
        .label = "none:ntl_all:64",
        .text = "ntl.all",
        .mnemonic = "ntl.all",
        .xlen = 64,
        .operands = &operands_134,
    },
    .{
        .label = "none:ntl_p1:64",
        .text = "ntl.p1",
        .mnemonic = "ntl.p1",
        .xlen = 64,
        .operands = &operands_135,
    },
    .{
        .label = "none:ntl_pall:64",
        .text = "ntl.pall",
        .mnemonic = "ntl.pall",
        .xlen = 64,
        .operands = &operands_136,
    },
    .{
        .label = "none:ntl_s1:64",
        .text = "ntl.s1",
        .mnemonic = "ntl.s1",
        .xlen = 64,
        .operands = &operands_137,
    },
    .{
        .label = "none:pause:64",
        .text = "pause",
        .mnemonic = "pause",
        .xlen = 64,
        .operands = &operands_138,
    },
    .{
        .label = "none:ret:64",
        .text = "ret",
        .mnemonic = "ret",
        .xlen = 64,
        .operands = &operands_139,
    },
    .{
        .label = "none:sbreak:64",
        .text = "sbreak",
        .mnemonic = "sbreak",
        .xlen = 64,
        .operands = &operands_140,
    },
    .{
        .label = "none:scall:64",
        .text = "scall",
        .mnemonic = "scall",
        .xlen = 64,
        .operands = &operands_141,
    },
    .{
        .label = "none:sctrclr:64",
        .text = "sctrclr",
        .mnemonic = "sctrclr",
        .xlen = 64,
        .operands = &operands_142,
    },
    .{
        .label = "none:sfence_inval_ir:64",
        .text = "sfence.inval.ir",
        .mnemonic = "sfence.inval.ir",
        .xlen = 64,
        .operands = &operands_143,
    },
    .{
        .label = "none:sfence_w_inval:64",
        .text = "sfence.w.inval",
        .mnemonic = "sfence.w.inval",
        .xlen = 64,
        .operands = &operands_144,
    },
    .{
        .label = "none:sret:64",
        .text = "sret",
        .mnemonic = "sret",
        .xlen = 64,
        .operands = &operands_145,
    },
    .{
        .label = "none:sspopchk_x1:64",
        .text = "sspopchk.x1",
        .mnemonic = "sspopchk.x1",
        .xlen = 64,
        .operands = &operands_146,
    },
    .{
        .label = "none:sspopchk_x5:64",
        .text = "sspopchk.x5",
        .mnemonic = "sspopchk.x5",
        .xlen = 64,
        .operands = &operands_147,
    },
    .{
        .label = "none:sspush_x1:64",
        .text = "sspush.x1",
        .mnemonic = "sspush.x1",
        .xlen = 64,
        .operands = &operands_148,
    },
    .{
        .label = "none:sspush_x5:64",
        .text = "sspush.x5",
        .mnemonic = "sspush.x5",
        .xlen = 64,
        .operands = &operands_149,
    },
    .{
        .label = "none:wfi:64",
        .text = "wfi",
        .mnemonic = "wfi",
        .xlen = 64,
        .operands = &operands_150,
    },
    .{
        .label = "none:wrs_nto:64",
        .text = "wrs.nto",
        .mnemonic = "wrs.nto",
        .xlen = 64,
        .operands = &operands_151,
    },
    .{
        .label = "none:wrs_sto:64",
        .text = "wrs.sto",
        .mnemonic = "wrs.sto",
        .xlen = 64,
        .operands = &operands_152,
    },
    .{
        .label = "offset:j:64",
        .text = "j 16",
        .mnemonic = "j",
        .xlen = 64,
        .operands = &operands_153,
    },
    .{
        .label = "offset:jal_pseudo:64",
        .text = "jal.pseudo 16",
        .mnemonic = "jal.pseudo",
        .xlen = 64,
        .operands = &operands_154,
    },
    .{
        .label = "p_rd_p_rs1_p:psabs_db:32",
        .text = "psabs.db 1, 2",
        .mnemonic = "psabs.db",
        .xlen = 32,
        .operands = &operands_155,
    },
    .{
        .label = "p_rd_p_rs1_p:psabs_dh:32",
        .text = "psabs.dh 1, 2",
        .mnemonic = "psabs.dh",
        .xlen = 32,
        .operands = &operands_156,
    },
    .{
        .label = "p_rd_p_rs1_p:psext_dh_b:32",
        .text = "psext.dh.b 1, 2",
        .mnemonic = "psext.dh.b",
        .xlen = 32,
        .operands = &operands_157,
    },
    .{
        .label = "p_rd_p_rs1_p:psext_dw_b:32",
        .text = "psext.dw.b 1, 2",
        .mnemonic = "psext.dw.b",
        .xlen = 32,
        .operands = &operands_158,
    },
    .{
        .label = "p_rd_p_rs1_p:psext_dw_h:32",
        .text = "psext.dw.h 1, 2",
        .mnemonic = "psext.dw.h",
        .xlen = 32,
        .operands = &operands_159,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:padd_dbs:32",
        .text = "padd.dbs 1, 2, x7",
        .mnemonic = "padd.dbs",
        .xlen = 32,
        .operands = &operands_160,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:padd_dhs:32",
        .text = "padd.dhs 1, 2, x7",
        .mnemonic = "padd.dhs",
        .xlen = 32,
        .operands = &operands_161,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:padd_dws:32",
        .text = "padd.dws 1, 2, x7",
        .mnemonic = "padd.dws",
        .xlen = 32,
        .operands = &operands_162,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psll_dbs:32",
        .text = "psll.dbs 1, 2, x7",
        .mnemonic = "psll.dbs",
        .xlen = 32,
        .operands = &operands_163,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psll_dhs:32",
        .text = "psll.dhs 1, 2, x7",
        .mnemonic = "psll.dhs",
        .xlen = 32,
        .operands = &operands_164,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psll_dws:32",
        .text = "psll.dws 1, 2, x7",
        .mnemonic = "psll.dws",
        .xlen = 32,
        .operands = &operands_165,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psra_dbs:32",
        .text = "psra.dbs 1, 2, x7",
        .mnemonic = "psra.dbs",
        .xlen = 32,
        .operands = &operands_166,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psra_dhs:32",
        .text = "psra.dhs 1, 2, x7",
        .mnemonic = "psra.dhs",
        .xlen = 32,
        .operands = &operands_167,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psra_dws:32",
        .text = "psra.dws 1, 2, x7",
        .mnemonic = "psra.dws",
        .xlen = 32,
        .operands = &operands_168,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psrl_dbs:32",
        .text = "psrl.dbs 1, 2, x7",
        .mnemonic = "psrl.dbs",
        .xlen = 32,
        .operands = &operands_169,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psrl_dhs:32",
        .text = "psrl.dhs 1, 2, x7",
        .mnemonic = "psrl.dhs",
        .xlen = 32,
        .operands = &operands_170,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psrl_dws:32",
        .text = "psrl.dws 1, 2, x7",
        .mnemonic = "psrl.dws",
        .xlen = 32,
        .operands = &operands_171,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:pssha_dhs:32",
        .text = "pssha.dhs 1, 2, x7",
        .mnemonic = "pssha.dhs",
        .xlen = 32,
        .operands = &operands_172,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:pssha_dws:32",
        .text = "pssha.dws 1, 2, x7",
        .mnemonic = "pssha.dws",
        .xlen = 32,
        .operands = &operands_173,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psshar_dhs:32",
        .text = "psshar.dhs 1, 2, x7",
        .mnemonic = "psshar.dhs",
        .xlen = 32,
        .operands = &operands_174,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psshar_dws:32",
        .text = "psshar.dws 1, 2, x7",
        .mnemonic = "psshar.dws",
        .xlen = 32,
        .operands = &operands_175,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psshl_dhs:32",
        .text = "psshl.dhs 1, 2, x7",
        .mnemonic = "psshl.dhs",
        .xlen = 32,
        .operands = &operands_176,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psshl_dws:32",
        .text = "psshl.dws 1, 2, x7",
        .mnemonic = "psshl.dws",
        .xlen = 32,
        .operands = &operands_177,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psshlr_dhs:32",
        .text = "psshlr.dhs 1, 2, x7",
        .mnemonic = "psshlr.dhs",
        .xlen = 32,
        .operands = &operands_178,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2:psshlr_dws:32",
        .text = "psshlr.dws 1, 2, x7",
        .mnemonic = "psshlr.dws",
        .xlen = 32,
        .operands = &operands_179,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:addd:32",
        .text = "addd 1, 2, 3",
        .mnemonic = "addd",
        .xlen = 32,
        .operands = &operands_180,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:paadd_db:32",
        .text = "paadd.db 1, 2, 3",
        .mnemonic = "paadd.db",
        .xlen = 32,
        .operands = &operands_181,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:paadd_dh:32",
        .text = "paadd.dh 1, 2, 3",
        .mnemonic = "paadd.dh",
        .xlen = 32,
        .operands = &operands_182,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:paadd_dw:32",
        .text = "paadd.dw 1, 2, 3",
        .mnemonic = "paadd.dw",
        .xlen = 32,
        .operands = &operands_183,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:paaddu_db:32",
        .text = "paaddu.db 1, 2, 3",
        .mnemonic = "paaddu.db",
        .xlen = 32,
        .operands = &operands_184,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:paaddu_dh:32",
        .text = "paaddu.dh 1, 2, 3",
        .mnemonic = "paaddu.dh",
        .xlen = 32,
        .operands = &operands_185,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:paaddu_dw:32",
        .text = "paaddu.dw 1, 2, 3",
        .mnemonic = "paaddu.dw",
        .xlen = 32,
        .operands = &operands_186,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:paas_dhx:32",
        .text = "paas.dhx 1, 2, 3",
        .mnemonic = "paas.dhx",
        .xlen = 32,
        .operands = &operands_187,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pabd_db:32",
        .text = "pabd.db 1, 2, 3",
        .mnemonic = "pabd.db",
        .xlen = 32,
        .operands = &operands_188,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pabd_dh:32",
        .text = "pabd.dh 1, 2, 3",
        .mnemonic = "pabd.dh",
        .xlen = 32,
        .operands = &operands_189,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pabdu_db:32",
        .text = "pabdu.db 1, 2, 3",
        .mnemonic = "pabdu.db",
        .xlen = 32,
        .operands = &operands_190,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pabdu_dh:32",
        .text = "pabdu.dh 1, 2, 3",
        .mnemonic = "pabdu.dh",
        .xlen = 32,
        .operands = &operands_191,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:padd_db:32",
        .text = "padd.db 1, 2, 3",
        .mnemonic = "padd.db",
        .xlen = 32,
        .operands = &operands_192,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:padd_dh:32",
        .text = "padd.dh 1, 2, 3",
        .mnemonic = "padd.dh",
        .xlen = 32,
        .operands = &operands_193,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:padd_dw:32",
        .text = "padd.dw 1, 2, 3",
        .mnemonic = "padd.dw",
        .xlen = 32,
        .operands = &operands_194,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pas_dhx:32",
        .text = "pas.dhx 1, 2, 3",
        .mnemonic = "pas.dhx",
        .xlen = 32,
        .operands = &operands_195,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pasa_dhx:32",
        .text = "pasa.dhx 1, 2, 3",
        .mnemonic = "pasa.dhx",
        .xlen = 32,
        .operands = &operands_196,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pasub_db:32",
        .text = "pasub.db 1, 2, 3",
        .mnemonic = "pasub.db",
        .xlen = 32,
        .operands = &operands_197,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pasub_dh:32",
        .text = "pasub.dh 1, 2, 3",
        .mnemonic = "pasub.dh",
        .xlen = 32,
        .operands = &operands_198,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pasub_dw:32",
        .text = "pasub.dw 1, 2, 3",
        .mnemonic = "pasub.dw",
        .xlen = 32,
        .operands = &operands_199,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pasubu_db:32",
        .text = "pasubu.db 1, 2, 3",
        .mnemonic = "pasubu.db",
        .xlen = 32,
        .operands = &operands_200,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pasubu_dh:32",
        .text = "pasubu.dh 1, 2, 3",
        .mnemonic = "pasubu.dh",
        .xlen = 32,
        .operands = &operands_201,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pasubu_dw:32",
        .text = "pasubu.dw 1, 2, 3",
        .mnemonic = "pasubu.dw",
        .xlen = 32,
        .operands = &operands_202,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmax_db:32",
        .text = "pmax.db 1, 2, 3",
        .mnemonic = "pmax.db",
        .xlen = 32,
        .operands = &operands_203,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmax_dh:32",
        .text = "pmax.dh 1, 2, 3",
        .mnemonic = "pmax.dh",
        .xlen = 32,
        .operands = &operands_204,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmax_dw:32",
        .text = "pmax.dw 1, 2, 3",
        .mnemonic = "pmax.dw",
        .xlen = 32,
        .operands = &operands_205,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmaxu_db:32",
        .text = "pmaxu.db 1, 2, 3",
        .mnemonic = "pmaxu.db",
        .xlen = 32,
        .operands = &operands_206,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmaxu_dh:32",
        .text = "pmaxu.dh 1, 2, 3",
        .mnemonic = "pmaxu.dh",
        .xlen = 32,
        .operands = &operands_207,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmaxu_dw:32",
        .text = "pmaxu.dw 1, 2, 3",
        .mnemonic = "pmaxu.dw",
        .xlen = 32,
        .operands = &operands_208,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmin_db:32",
        .text = "pmin.db 1, 2, 3",
        .mnemonic = "pmin.db",
        .xlen = 32,
        .operands = &operands_209,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmin_dh:32",
        .text = "pmin.dh 1, 2, 3",
        .mnemonic = "pmin.dh",
        .xlen = 32,
        .operands = &operands_210,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmin_dw:32",
        .text = "pmin.dw 1, 2, 3",
        .mnemonic = "pmin.dw",
        .xlen = 32,
        .operands = &operands_211,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pminu_db:32",
        .text = "pminu.db 1, 2, 3",
        .mnemonic = "pminu.db",
        .xlen = 32,
        .operands = &operands_212,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pminu_dh:32",
        .text = "pminu.dh 1, 2, 3",
        .mnemonic = "pminu.dh",
        .xlen = 32,
        .operands = &operands_213,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pminu_dw:32",
        .text = "pminu.dw 1, 2, 3",
        .mnemonic = "pminu.dw",
        .xlen = 32,
        .operands = &operands_214,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmseq_db:32",
        .text = "pmseq.db 1, 2, 3",
        .mnemonic = "pmseq.db",
        .xlen = 32,
        .operands = &operands_215,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmseq_dh:32",
        .text = "pmseq.dh 1, 2, 3",
        .mnemonic = "pmseq.dh",
        .xlen = 32,
        .operands = &operands_216,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmseq_dw:32",
        .text = "pmseq.dw 1, 2, 3",
        .mnemonic = "pmseq.dw",
        .xlen = 32,
        .operands = &operands_217,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmslt_db:32",
        .text = "pmslt.db 1, 2, 3",
        .mnemonic = "pmslt.db",
        .xlen = 32,
        .operands = &operands_218,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmslt_dh:32",
        .text = "pmslt.dh 1, 2, 3",
        .mnemonic = "pmslt.dh",
        .xlen = 32,
        .operands = &operands_219,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmslt_dw:32",
        .text = "pmslt.dw 1, 2, 3",
        .mnemonic = "pmslt.dw",
        .xlen = 32,
        .operands = &operands_220,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmsltu_db:32",
        .text = "pmsltu.db 1, 2, 3",
        .mnemonic = "pmsltu.db",
        .xlen = 32,
        .operands = &operands_221,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmsltu_dh:32",
        .text = "pmsltu.dh 1, 2, 3",
        .mnemonic = "pmsltu.dh",
        .xlen = 32,
        .operands = &operands_222,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pmsltu_dw:32",
        .text = "pmsltu.dw 1, 2, 3",
        .mnemonic = "pmsltu.dw",
        .xlen = 32,
        .operands = &operands_223,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppaire_db:32",
        .text = "ppaire.db 1, 2, 3",
        .mnemonic = "ppaire.db",
        .xlen = 32,
        .operands = &operands_224,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppaire_dh:32",
        .text = "ppaire.dh 1, 2, 3",
        .mnemonic = "ppaire.dh",
        .xlen = 32,
        .operands = &operands_225,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppaireo_db:32",
        .text = "ppaireo.db 1, 2, 3",
        .mnemonic = "ppaireo.db",
        .xlen = 32,
        .operands = &operands_226,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppaireo_dh:32",
        .text = "ppaireo.dh 1, 2, 3",
        .mnemonic = "ppaireo.dh",
        .xlen = 32,
        .operands = &operands_227,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppairo_db:32",
        .text = "ppairo.db 1, 2, 3",
        .mnemonic = "ppairo.db",
        .xlen = 32,
        .operands = &operands_228,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppairo_dh:32",
        .text = "ppairo.dh 1, 2, 3",
        .mnemonic = "ppairo.dh",
        .xlen = 32,
        .operands = &operands_229,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppairoe_db:32",
        .text = "ppairoe.db 1, 2, 3",
        .mnemonic = "ppairoe.db",
        .xlen = 32,
        .operands = &operands_230,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:ppairoe_dh:32",
        .text = "ppairoe.dh 1, 2, 3",
        .mnemonic = "ppairoe.dh",
        .xlen = 32,
        .operands = &operands_231,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psa_dhx:32",
        .text = "psa.dhx 1, 2, 3",
        .mnemonic = "psa.dhx",
        .xlen = 32,
        .operands = &operands_232,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psadd_db:32",
        .text = "psadd.db 1, 2, 3",
        .mnemonic = "psadd.db",
        .xlen = 32,
        .operands = &operands_233,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psadd_dh:32",
        .text = "psadd.dh 1, 2, 3",
        .mnemonic = "psadd.dh",
        .xlen = 32,
        .operands = &operands_234,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psadd_dw:32",
        .text = "psadd.dw 1, 2, 3",
        .mnemonic = "psadd.dw",
        .xlen = 32,
        .operands = &operands_235,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psaddu_db:32",
        .text = "psaddu.db 1, 2, 3",
        .mnemonic = "psaddu.db",
        .xlen = 32,
        .operands = &operands_236,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psaddu_dh:32",
        .text = "psaddu.dh 1, 2, 3",
        .mnemonic = "psaddu.dh",
        .xlen = 32,
        .operands = &operands_237,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psaddu_dw:32",
        .text = "psaddu.dw 1, 2, 3",
        .mnemonic = "psaddu.dw",
        .xlen = 32,
        .operands = &operands_238,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psas_dhx:32",
        .text = "psas.dhx 1, 2, 3",
        .mnemonic = "psas.dhx",
        .xlen = 32,
        .operands = &operands_239,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psh1add_dh:32",
        .text = "psh1add.dh 1, 2, 3",
        .mnemonic = "psh1add.dh",
        .xlen = 32,
        .operands = &operands_240,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psh1add_dw:32",
        .text = "psh1add.dw 1, 2, 3",
        .mnemonic = "psh1add.dw",
        .xlen = 32,
        .operands = &operands_241,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssa_dhx:32",
        .text = "pssa.dhx 1, 2, 3",
        .mnemonic = "pssa.dhx",
        .xlen = 32,
        .operands = &operands_242,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssh1sadd_dh:32",
        .text = "pssh1sadd.dh 1, 2, 3",
        .mnemonic = "pssh1sadd.dh",
        .xlen = 32,
        .operands = &operands_243,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssh1sadd_dw:32",
        .text = "pssh1sadd.dw 1, 2, 3",
        .mnemonic = "pssh1sadd.dw",
        .xlen = 32,
        .operands = &operands_244,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssub_db:32",
        .text = "pssub.db 1, 2, 3",
        .mnemonic = "pssub.db",
        .xlen = 32,
        .operands = &operands_245,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssub_dh:32",
        .text = "pssub.dh 1, 2, 3",
        .mnemonic = "pssub.dh",
        .xlen = 32,
        .operands = &operands_246,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssub_dw:32",
        .text = "pssub.dw 1, 2, 3",
        .mnemonic = "pssub.dw",
        .xlen = 32,
        .operands = &operands_247,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssubu_db:32",
        .text = "pssubu.db 1, 2, 3",
        .mnemonic = "pssubu.db",
        .xlen = 32,
        .operands = &operands_248,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssubu_dh:32",
        .text = "pssubu.dh 1, 2, 3",
        .mnemonic = "pssubu.dh",
        .xlen = 32,
        .operands = &operands_249,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:pssubu_dw:32",
        .text = "pssubu.dw 1, 2, 3",
        .mnemonic = "pssubu.dw",
        .xlen = 32,
        .operands = &operands_250,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psub_db:32",
        .text = "psub.db 1, 2, 3",
        .mnemonic = "psub.db",
        .xlen = 32,
        .operands = &operands_251,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psub_dh:32",
        .text = "psub.dh 1, 2, 3",
        .mnemonic = "psub.dh",
        .xlen = 32,
        .operands = &operands_252,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:psub_dw:32",
        .text = "psub.dw 1, 2, 3",
        .mnemonic = "psub.dw",
        .xlen = 32,
        .operands = &operands_253,
    },
    .{
        .label = "p_rd_p_rs1_p_rs2_p:subd:32",
        .text = "subd 1, 2, 3",
        .mnemonic = "subd",
        .xlen = 32,
        .operands = &operands_254,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psati_dh:32",
        .text = "psati.dh 1, 2, 3",
        .mnemonic = "psati.dh",
        .xlen = 32,
        .operands = &operands_255,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psati_dw:32",
        .text = "psati.dw 1, 2, 3",
        .mnemonic = "psati.dw",
        .xlen = 32,
        .operands = &operands_256,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:pslli_db:32",
        .text = "pslli.db 1, 2, 3",
        .mnemonic = "pslli.db",
        .xlen = 32,
        .operands = &operands_257,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:pslli_dh:32",
        .text = "pslli.dh 1, 2, 3",
        .mnemonic = "pslli.dh",
        .xlen = 32,
        .operands = &operands_258,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:pslli_dw:32",
        .text = "pslli.dw 1, 2, 3",
        .mnemonic = "pslli.dw",
        .xlen = 32,
        .operands = &operands_259,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrai_db:32",
        .text = "psrai.db 1, 2, 3",
        .mnemonic = "psrai.db",
        .xlen = 32,
        .operands = &operands_260,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrai_dh:32",
        .text = "psrai.dh 1, 2, 3",
        .mnemonic = "psrai.dh",
        .xlen = 32,
        .operands = &operands_261,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrai_dw:32",
        .text = "psrai.dw 1, 2, 3",
        .mnemonic = "psrai.dw",
        .xlen = 32,
        .operands = &operands_262,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrari_dh:32",
        .text = "psrari.dh 1, 2, 3",
        .mnemonic = "psrari.dh",
        .xlen = 32,
        .operands = &operands_263,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrari_dw:32",
        .text = "psrari.dw 1, 2, 3",
        .mnemonic = "psrari.dw",
        .xlen = 32,
        .operands = &operands_264,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrli_db:32",
        .text = "psrli.db 1, 2, 3",
        .mnemonic = "psrli.db",
        .xlen = 32,
        .operands = &operands_265,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrli_dh:32",
        .text = "psrli.dh 1, 2, 3",
        .mnemonic = "psrli.dh",
        .xlen = 32,
        .operands = &operands_266,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psrli_dw:32",
        .text = "psrli.dw 1, 2, 3",
        .mnemonic = "psrli.dw",
        .xlen = 32,
        .operands = &operands_267,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psslai_dh:32",
        .text = "psslai.dh 1, 2, 3",
        .mnemonic = "psslai.dh",
        .xlen = 32,
        .operands = &operands_268,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:psslai_dw:32",
        .text = "psslai.dw 1, 2, 3",
        .mnemonic = "psslai.dw",
        .xlen = 32,
        .operands = &operands_269,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:pusati_dh:32",
        .text = "pusati.dh 1, 2, 3",
        .mnemonic = "pusati.dh",
        .xlen = 32,
        .operands = &operands_270,
    },
    .{
        .label = "p_rd_p_rs1_p_uimm:pusati_dw:32",
        .text = "pusati.dw 1, 2, 3",
        .mnemonic = "pusati.dw",
        .xlen = 32,
        .operands = &operands_271,
    },
    .{
        .label = "p_rd_p_rs1_rs2:mqrwacc:32",
        .text = "mqrwacc 1, x6, x7",
        .mnemonic = "mqrwacc",
        .xlen = 32,
        .operands = &operands_272,
    },
    .{
        .label = "p_rd_p_rs1_rs2:mqwacc:32",
        .text = "mqwacc 1, x6, x7",
        .mnemonic = "mqwacc",
        .xlen = 32,
        .operands = &operands_273,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wadd_h:32",
        .text = "pm2wadd.h 1, x6, x7",
        .mnemonic = "pm2wadd.h",
        .xlen = 32,
        .operands = &operands_274,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wadd_hx:32",
        .text = "pm2wadd.hx 1, x6, x7",
        .mnemonic = "pm2wadd.hx",
        .xlen = 32,
        .operands = &operands_275,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wadda_h:32",
        .text = "pm2wadda.h 1, x6, x7",
        .mnemonic = "pm2wadda.h",
        .xlen = 32,
        .operands = &operands_276,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wadda_hx:32",
        .text = "pm2wadda.hx 1, x6, x7",
        .mnemonic = "pm2wadda.hx",
        .xlen = 32,
        .operands = &operands_277,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2waddasu_h:32",
        .text = "pm2waddasu.h 1, x6, x7",
        .mnemonic = "pm2waddasu.h",
        .xlen = 32,
        .operands = &operands_278,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2waddau_h:32",
        .text = "pm2waddau.h 1, x6, x7",
        .mnemonic = "pm2waddau.h",
        .xlen = 32,
        .operands = &operands_279,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2waddsu_h:32",
        .text = "pm2waddsu.h 1, x6, x7",
        .mnemonic = "pm2waddsu.h",
        .xlen = 32,
        .operands = &operands_280,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2waddu_h:32",
        .text = "pm2waddu.h 1, x6, x7",
        .mnemonic = "pm2waddu.h",
        .xlen = 32,
        .operands = &operands_281,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wsub_h:32",
        .text = "pm2wsub.h 1, x6, x7",
        .mnemonic = "pm2wsub.h",
        .xlen = 32,
        .operands = &operands_282,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wsub_hx:32",
        .text = "pm2wsub.hx 1, x6, x7",
        .mnemonic = "pm2wsub.hx",
        .xlen = 32,
        .operands = &operands_283,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wsuba_h:32",
        .text = "pm2wsuba.h 1, x6, x7",
        .mnemonic = "pm2wsuba.h",
        .xlen = 32,
        .operands = &operands_284,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pm2wsuba_hx:32",
        .text = "pm2wsuba.hx 1, x6, x7",
        .mnemonic = "pm2wsuba.hx",
        .xlen = 32,
        .operands = &operands_285,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pmqrwacc_h:32",
        .text = "pmqrwacc.h 1, x6, x7",
        .mnemonic = "pmqrwacc.h",
        .xlen = 32,
        .operands = &operands_286,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pmqwacc_h:32",
        .text = "pmqwacc.h 1, x6, x7",
        .mnemonic = "pmqwacc.h",
        .xlen = 32,
        .operands = &operands_287,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwadd_b:32",
        .text = "pwadd.b 1, x6, x7",
        .mnemonic = "pwadd.b",
        .xlen = 32,
        .operands = &operands_288,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwadd_h:32",
        .text = "pwadd.h 1, x6, x7",
        .mnemonic = "pwadd.h",
        .xlen = 32,
        .operands = &operands_289,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwadda_b:32",
        .text = "pwadda.b 1, x6, x7",
        .mnemonic = "pwadda.b",
        .xlen = 32,
        .operands = &operands_290,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwadda_h:32",
        .text = "pwadda.h 1, x6, x7",
        .mnemonic = "pwadda.h",
        .xlen = 32,
        .operands = &operands_291,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwaddau_b:32",
        .text = "pwaddau.b 1, x6, x7",
        .mnemonic = "pwaddau.b",
        .xlen = 32,
        .operands = &operands_292,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwaddau_h:32",
        .text = "pwaddau.h 1, x6, x7",
        .mnemonic = "pwaddau.h",
        .xlen = 32,
        .operands = &operands_293,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwaddu_b:32",
        .text = "pwaddu.b 1, x6, x7",
        .mnemonic = "pwaddu.b",
        .xlen = 32,
        .operands = &operands_294,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwaddu_h:32",
        .text = "pwaddu.h 1, x6, x7",
        .mnemonic = "pwaddu.h",
        .xlen = 32,
        .operands = &operands_295,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmacc_h:32",
        .text = "pwmacc.h 1, x6, x7",
        .mnemonic = "pwmacc.h",
        .xlen = 32,
        .operands = &operands_296,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmaccsu_h:32",
        .text = "pwmaccsu.h 1, x6, x7",
        .mnemonic = "pwmaccsu.h",
        .xlen = 32,
        .operands = &operands_297,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmaccu_h:32",
        .text = "pwmaccu.h 1, x6, x7",
        .mnemonic = "pwmaccu.h",
        .xlen = 32,
        .operands = &operands_298,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmul_b:32",
        .text = "pwmul.b 1, x6, x7",
        .mnemonic = "pwmul.b",
        .xlen = 32,
        .operands = &operands_299,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmul_h:32",
        .text = "pwmul.h 1, x6, x7",
        .mnemonic = "pwmul.h",
        .xlen = 32,
        .operands = &operands_300,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmulsu_b:32",
        .text = "pwmulsu.b 1, x6, x7",
        .mnemonic = "pwmulsu.b",
        .xlen = 32,
        .operands = &operands_301,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmulsu_h:32",
        .text = "pwmulsu.h 1, x6, x7",
        .mnemonic = "pwmulsu.h",
        .xlen = 32,
        .operands = &operands_302,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmulu_b:32",
        .text = "pwmulu.b 1, x6, x7",
        .mnemonic = "pwmulu.b",
        .xlen = 32,
        .operands = &operands_303,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwmulu_h:32",
        .text = "pwmulu.h 1, x6, x7",
        .mnemonic = "pwmulu.h",
        .xlen = 32,
        .operands = &operands_304,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsla_bs:32",
        .text = "pwsla.bs 1, x6, x7",
        .mnemonic = "pwsla.bs",
        .xlen = 32,
        .operands = &operands_305,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsla_hs:32",
        .text = "pwsla.hs 1, x6, x7",
        .mnemonic = "pwsla.hs",
        .xlen = 32,
        .operands = &operands_306,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsll_bs:32",
        .text = "pwsll.bs 1, x6, x7",
        .mnemonic = "pwsll.bs",
        .xlen = 32,
        .operands = &operands_307,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsll_hs:32",
        .text = "pwsll.hs 1, x6, x7",
        .mnemonic = "pwsll.hs",
        .xlen = 32,
        .operands = &operands_308,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsub_b:32",
        .text = "pwsub.b 1, x6, x7",
        .mnemonic = "pwsub.b",
        .xlen = 32,
        .operands = &operands_309,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsub_h:32",
        .text = "pwsub.h 1, x6, x7",
        .mnemonic = "pwsub.h",
        .xlen = 32,
        .operands = &operands_310,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsuba_b:32",
        .text = "pwsuba.b 1, x6, x7",
        .mnemonic = "pwsuba.b",
        .xlen = 32,
        .operands = &operands_311,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsuba_h:32",
        .text = "pwsuba.h 1, x6, x7",
        .mnemonic = "pwsuba.h",
        .xlen = 32,
        .operands = &operands_312,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsubau_b:32",
        .text = "pwsubau.b 1, x6, x7",
        .mnemonic = "pwsubau.b",
        .xlen = 32,
        .operands = &operands_313,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsubau_h:32",
        .text = "pwsubau.h 1, x6, x7",
        .mnemonic = "pwsubau.h",
        .xlen = 32,
        .operands = &operands_314,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsubu_b:32",
        .text = "pwsubu.b 1, x6, x7",
        .mnemonic = "pwsubu.b",
        .xlen = 32,
        .operands = &operands_315,
    },
    .{
        .label = "p_rd_p_rs1_rs2:pwsubu_h:32",
        .text = "pwsubu.h 1, x6, x7",
        .mnemonic = "pwsubu.h",
        .xlen = 32,
        .operands = &operands_316,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wadd:32",
        .text = "wadd 1, x6, x7",
        .mnemonic = "wadd",
        .xlen = 32,
        .operands = &operands_317,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wadda:32",
        .text = "wadda 1, x6, x7",
        .mnemonic = "wadda",
        .xlen = 32,
        .operands = &operands_318,
    },
    .{
        .label = "p_rd_p_rs1_rs2:waddau:32",
        .text = "waddau 1, x6, x7",
        .mnemonic = "waddau",
        .xlen = 32,
        .operands = &operands_319,
    },
    .{
        .label = "p_rd_p_rs1_rs2:waddu:32",
        .text = "waddu 1, x6, x7",
        .mnemonic = "waddu",
        .xlen = 32,
        .operands = &operands_320,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wmacc:32",
        .text = "wmacc 1, x6, x7",
        .mnemonic = "wmacc",
        .xlen = 32,
        .operands = &operands_321,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wmaccsu:32",
        .text = "wmaccsu 1, x6, x7",
        .mnemonic = "wmaccsu",
        .xlen = 32,
        .operands = &operands_322,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wmaccu:32",
        .text = "wmaccu 1, x6, x7",
        .mnemonic = "wmaccu",
        .xlen = 32,
        .operands = &operands_323,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wmul:32",
        .text = "wmul 1, x6, x7",
        .mnemonic = "wmul",
        .xlen = 32,
        .operands = &operands_324,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wmulsu:32",
        .text = "wmulsu 1, x6, x7",
        .mnemonic = "wmulsu",
        .xlen = 32,
        .operands = &operands_325,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wmulu:32",
        .text = "wmulu 1, x6, x7",
        .mnemonic = "wmulu",
        .xlen = 32,
        .operands = &operands_326,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wsla:32",
        .text = "wsla 1, x6, x7",
        .mnemonic = "wsla",
        .xlen = 32,
        .operands = &operands_327,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wsll:32",
        .text = "wsll 1, x6, x7",
        .mnemonic = "wsll",
        .xlen = 32,
        .operands = &operands_328,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wsub:32",
        .text = "wsub 1, x6, x7",
        .mnemonic = "wsub",
        .xlen = 32,
        .operands = &operands_329,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wsuba:32",
        .text = "wsuba 1, x6, x7",
        .mnemonic = "wsuba",
        .xlen = 32,
        .operands = &operands_330,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wsubau:32",
        .text = "wsubau 1, x6, x7",
        .mnemonic = "wsubau",
        .xlen = 32,
        .operands = &operands_331,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wsubu:32",
        .text = "wsubu 1, x6, x7",
        .mnemonic = "wsubu",
        .xlen = 32,
        .operands = &operands_332,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wzip16p:32",
        .text = "wzip16p 1, x6, x7",
        .mnemonic = "wzip16p",
        .xlen = 32,
        .operands = &operands_333,
    },
    .{
        .label = "p_rd_p_rs1_rs2:wzip8p:32",
        .text = "wzip8p 1, x6, x7",
        .mnemonic = "wzip8p",
        .xlen = 32,
        .operands = &operands_334,
    },
    .{
        .label = "p_rd_p_rs1_uimm:pwslai_b:32",
        .text = "pwslai.b 1, x6, 3",
        .mnemonic = "pwslai.b",
        .xlen = 32,
        .operands = &operands_335,
    },
    .{
        .label = "p_rd_p_rs1_uimm:pwslai_h:32",
        .text = "pwslai.h 1, x6, 3",
        .mnemonic = "pwslai.h",
        .xlen = 32,
        .operands = &operands_336,
    },
    .{
        .label = "p_rd_p_rs1_uimm:pwslli_b:32",
        .text = "pwslli.b 1, x6, 3",
        .mnemonic = "pwslli.b",
        .xlen = 32,
        .operands = &operands_337,
    },
    .{
        .label = "p_rd_p_rs1_uimm:pwslli_h:32",
        .text = "pwslli.h 1, x6, 3",
        .mnemonic = "pwslli.h",
        .xlen = 32,
        .operands = &operands_338,
    },
    .{
        .label = "p_rd_p_rs1_uimm:wslai:32",
        .text = "wslai 1, x6, 3",
        .mnemonic = "wslai",
        .xlen = 32,
        .operands = &operands_339,
    },
    .{
        .label = "p_rd_p_rs1_uimm:wslli:32",
        .text = "wslli 1, x6, 3",
        .mnemonic = "wslli",
        .xlen = 32,
        .operands = &operands_340,
    },
    .{
        .label = "p_rd_p_uimm:pli_db:32",
        .text = "pli.db 1, 3",
        .mnemonic = "pli.db",
        .xlen = 32,
        .operands = &operands_341,
    },
    .{
        .label = "p_rd_p_uimm:pli_dh:32",
        .text = "pli.dh 1, 3",
        .mnemonic = "pli.dh",
        .xlen = 32,
        .operands = &operands_342,
    },
    .{
        .label = "p_rd_p_uimm:plui_dh:32",
        .text = "plui.dh 1, 3",
        .mnemonic = "plui.dh",
        .xlen = 32,
        .operands = &operands_343,
    },
    .{
        .label = "rd:frcsr:64",
        .text = "frcsr x5",
        .mnemonic = "frcsr",
        .xlen = 64,
        .operands = &operands_344,
    },
    .{
        .label = "rd:frflags:64",
        .text = "frflags x5",
        .mnemonic = "frflags",
        .xlen = 64,
        .operands = &operands_345,
    },
    .{
        .label = "rd:frrm:64",
        .text = "frrm x5",
        .mnemonic = "frrm",
        .xlen = 64,
        .operands = &operands_346,
    },
    .{
        .label = "rd:rdcycle:64",
        .text = "rdcycle x5",
        .mnemonic = "rdcycle",
        .xlen = 64,
        .operands = &operands_347,
    },
    .{
        .label = "rd:rdcycleh:32",
        .text = "rdcycleh x5",
        .mnemonic = "rdcycleh",
        .xlen = 32,
        .operands = &operands_348,
    },
    .{
        .label = "rd:rdinstret:64",
        .text = "rdinstret x5",
        .mnemonic = "rdinstret",
        .xlen = 64,
        .operands = &operands_349,
    },
    .{
        .label = "rd:rdinstreth:32",
        .text = "rdinstreth x5",
        .mnemonic = "rdinstreth",
        .xlen = 32,
        .operands = &operands_350,
    },
    .{
        .label = "rd:rdtime:64",
        .text = "rdtime x5",
        .mnemonic = "rdtime",
        .xlen = 64,
        .operands = &operands_351,
    },
    .{
        .label = "rd:rdtimeh:32",
        .text = "rdtimeh x5",
        .mnemonic = "rdtimeh",
        .xlen = 32,
        .operands = &operands_352,
    },
    .{
        .label = "rd_csr:csrr:64",
        .text = "csrr x5, mstatus",
        .mnemonic = "csrr",
        .xlen = 64,
        .operands = &operands_353,
    },
    .{
        .label = "rd_even_rs1_imm:ld:32",
        .text = "ld x6, x6, 16",
        .mnemonic = "ld",
        .xlen = 32,
        .operands = &operands_354,
    },
    .{
        .label = "rd_imm20:auipc:64",
        .text = "auipc x5, 74565",
        .mnemonic = "auipc",
        .xlen = 64,
        .operands = &operands_355,
    },
    .{
        .label = "rd_imm20:lui:64",
        .text = "lui x5, 74565",
        .mnemonic = "lui",
        .xlen = 64,
        .operands = &operands_356,
    },
    .{
        .label = "rd_n0:ssrdp:64",
        .text = "ssrdp x5",
        .mnemonic = "ssrdp",
        .xlen = 64,
        .operands = &operands_357,
    },
    .{
        .label = "rd_offset:jal:64",
        .text = "jal x1, 16",
        .mnemonic = "jal",
        .xlen = 64,
        .operands = &operands_358,
    },
    .{
        .label = "rd_p_rs1_p_rs2:nclip:32",
        .text = "nclip x5, 2, x7",
        .mnemonic = "nclip",
        .xlen = 32,
        .operands = &operands_359,
    },
    .{
        .label = "rd_p_rs1_p_rs2:nclipr:32",
        .text = "nclipr x5, 2, x7",
        .mnemonic = "nclipr",
        .xlen = 32,
        .operands = &operands_360,
    },
    .{
        .label = "rd_p_rs1_p_rs2:nclipru:32",
        .text = "nclipru x5, 2, x7",
        .mnemonic = "nclipru",
        .xlen = 32,
        .operands = &operands_361,
    },
    .{
        .label = "rd_p_rs1_p_rs2:nclipu:32",
        .text = "nclipu x5, 2, x7",
        .mnemonic = "nclipu",
        .xlen = 32,
        .operands = &operands_362,
    },
    .{
        .label = "rd_p_rs1_p_rs2:nsra:32",
        .text = "nsra x5, 2, x7",
        .mnemonic = "nsra",
        .xlen = 32,
        .operands = &operands_363,
    },
    .{
        .label = "rd_p_rs1_p_rs2:nsrar:32",
        .text = "nsrar x5, 2, x7",
        .mnemonic = "nsrar",
        .xlen = 32,
        .operands = &operands_364,
    },
    .{
        .label = "rd_p_rs1_p_rs2:nsrl:32",
        .text = "nsrl x5, 2, x7",
        .mnemonic = "nsrl",
        .xlen = 32,
        .operands = &operands_365,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclip_bs:32",
        .text = "pnclip.bs x5, 2, x7",
        .mnemonic = "pnclip.bs",
        .xlen = 32,
        .operands = &operands_366,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclip_hs:32",
        .text = "pnclip.hs x5, 2, x7",
        .mnemonic = "pnclip.hs",
        .xlen = 32,
        .operands = &operands_367,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclipr_bs:32",
        .text = "pnclipr.bs x5, 2, x7",
        .mnemonic = "pnclipr.bs",
        .xlen = 32,
        .operands = &operands_368,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclipr_hs:32",
        .text = "pnclipr.hs x5, 2, x7",
        .mnemonic = "pnclipr.hs",
        .xlen = 32,
        .operands = &operands_369,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclipru_bs:32",
        .text = "pnclipru.bs x5, 2, x7",
        .mnemonic = "pnclipru.bs",
        .xlen = 32,
        .operands = &operands_370,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclipru_hs:32",
        .text = "pnclipru.hs x5, 2, x7",
        .mnemonic = "pnclipru.hs",
        .xlen = 32,
        .operands = &operands_371,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclipu_bs:32",
        .text = "pnclipu.bs x5, 2, x7",
        .mnemonic = "pnclipu.bs",
        .xlen = 32,
        .operands = &operands_372,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnclipu_hs:32",
        .text = "pnclipu.hs x5, 2, x7",
        .mnemonic = "pnclipu.hs",
        .xlen = 32,
        .operands = &operands_373,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnsra_bs:32",
        .text = "pnsra.bs x5, 2, x7",
        .mnemonic = "pnsra.bs",
        .xlen = 32,
        .operands = &operands_374,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnsra_hs:32",
        .text = "pnsra.hs x5, 2, x7",
        .mnemonic = "pnsra.hs",
        .xlen = 32,
        .operands = &operands_375,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnsrar_bs:32",
        .text = "pnsrar.bs x5, 2, x7",
        .mnemonic = "pnsrar.bs",
        .xlen = 32,
        .operands = &operands_376,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnsrar_hs:32",
        .text = "pnsrar.hs x5, 2, x7",
        .mnemonic = "pnsrar.hs",
        .xlen = 32,
        .operands = &operands_377,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnsrl_bs:32",
        .text = "pnsrl.bs x5, 2, x7",
        .mnemonic = "pnsrl.bs",
        .xlen = 32,
        .operands = &operands_378,
    },
    .{
        .label = "rd_p_rs1_p_rs2:pnsrl_hs:32",
        .text = "pnsrl.hs x5, 2, x7",
        .mnemonic = "pnsrl.hs",
        .xlen = 32,
        .operands = &operands_379,
    },
    .{
        .label = "rd_p_rs1_p_rs2:predsum_dbs:32",
        .text = "predsum.dbs x5, 2, x7",
        .mnemonic = "predsum.dbs",
        .xlen = 32,
        .operands = &operands_380,
    },
    .{
        .label = "rd_p_rs1_p_rs2:predsum_dhs:32",
        .text = "predsum.dhs x5, 2, x7",
        .mnemonic = "predsum.dhs",
        .xlen = 32,
        .operands = &operands_381,
    },
    .{
        .label = "rd_p_rs1_p_rs2:predsumu_dbs:32",
        .text = "predsumu.dbs x5, 2, x7",
        .mnemonic = "predsumu.dbs",
        .xlen = 32,
        .operands = &operands_382,
    },
    .{
        .label = "rd_p_rs1_p_rs2:predsumu_dhs:32",
        .text = "predsumu.dhs x5, 2, x7",
        .mnemonic = "predsumu.dhs",
        .xlen = 32,
        .operands = &operands_383,
    },
    .{
        .label = "rd_p_rs1_p_uimm:nclipi:32",
        .text = "nclipi x5, 2, 3",
        .mnemonic = "nclipi",
        .xlen = 32,
        .operands = &operands_384,
    },
    .{
        .label = "rd_p_rs1_p_uimm:nclipiu:32",
        .text = "nclipiu x5, 2, 3",
        .mnemonic = "nclipiu",
        .xlen = 32,
        .operands = &operands_385,
    },
    .{
        .label = "rd_p_rs1_p_uimm:nclipri:32",
        .text = "nclipri x5, 2, 3",
        .mnemonic = "nclipri",
        .xlen = 32,
        .operands = &operands_386,
    },
    .{
        .label = "rd_p_rs1_p_uimm:nclipriu:32",
        .text = "nclipriu x5, 2, 3",
        .mnemonic = "nclipriu",
        .xlen = 32,
        .operands = &operands_387,
    },
    .{
        .label = "rd_p_rs1_p_uimm:nsrai:32",
        .text = "nsrai x5, 2, 3",
        .mnemonic = "nsrai",
        .xlen = 32,
        .operands = &operands_388,
    },
    .{
        .label = "rd_p_rs1_p_uimm:nsrari:32",
        .text = "nsrari x5, 2, 3",
        .mnemonic = "nsrari",
        .xlen = 32,
        .operands = &operands_389,
    },
    .{
        .label = "rd_p_rs1_p_uimm:nsrli:32",
        .text = "nsrli x5, 2, 3",
        .mnemonic = "nsrli",
        .xlen = 32,
        .operands = &operands_390,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipi_b:32",
        .text = "pnclipi.b x5, 2, 3",
        .mnemonic = "pnclipi.b",
        .xlen = 32,
        .operands = &operands_391,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipi_h:32",
        .text = "pnclipi.h x5, 2, 3",
        .mnemonic = "pnclipi.h",
        .xlen = 32,
        .operands = &operands_392,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipiu_b:32",
        .text = "pnclipiu.b x5, 2, 3",
        .mnemonic = "pnclipiu.b",
        .xlen = 32,
        .operands = &operands_393,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipiu_h:32",
        .text = "pnclipiu.h x5, 2, 3",
        .mnemonic = "pnclipiu.h",
        .xlen = 32,
        .operands = &operands_394,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipri_b:32",
        .text = "pnclipri.b x5, 2, 3",
        .mnemonic = "pnclipri.b",
        .xlen = 32,
        .operands = &operands_395,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipri_h:32",
        .text = "pnclipri.h x5, 2, 3",
        .mnemonic = "pnclipri.h",
        .xlen = 32,
        .operands = &operands_396,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipriu_b:32",
        .text = "pnclipriu.b x5, 2, 3",
        .mnemonic = "pnclipriu.b",
        .xlen = 32,
        .operands = &operands_397,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnclipriu_h:32",
        .text = "pnclipriu.h x5, 2, 3",
        .mnemonic = "pnclipriu.h",
        .xlen = 32,
        .operands = &operands_398,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnsrai_b:32",
        .text = "pnsrai.b x5, 2, 3",
        .mnemonic = "pnsrai.b",
        .xlen = 32,
        .operands = &operands_399,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnsrai_h:32",
        .text = "pnsrai.h x5, 2, 3",
        .mnemonic = "pnsrai.h",
        .xlen = 32,
        .operands = &operands_400,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnsrari_b:32",
        .text = "pnsrari.b x5, 2, 3",
        .mnemonic = "pnsrari.b",
        .xlen = 32,
        .operands = &operands_401,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnsrari_h:32",
        .text = "pnsrari.h x5, 2, 3",
        .mnemonic = "pnsrari.h",
        .xlen = 32,
        .operands = &operands_402,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnsrli_b:32",
        .text = "pnsrli.b x5, 2, 3",
        .mnemonic = "pnsrli.b",
        .xlen = 32,
        .operands = &operands_403,
    },
    .{
        .label = "rd_p_rs1_p_uimm:pnsrli_h:32",
        .text = "pnsrli.h x5, 2, 3",
        .mnemonic = "pnsrli.h",
        .xlen = 32,
        .operands = &operands_404,
    },
    .{
        .label = "rd_pair_rs1_imm:ld_pseudo:32",
        .text = "ld.pseudo x6, x6, 16",
        .mnemonic = "ld.pseudo",
        .xlen = 32,
        .operands = &operands_405,
    },
    .{
        .label = "rd_rs1:abs:64",
        .text = "abs x5, x6",
        .mnemonic = "abs",
        .xlen = 64,
        .operands = &operands_406,
    },
    .{
        .label = "rd_rs1:absw:64",
        .text = "absw x5, x6",
        .mnemonic = "absw",
        .xlen = 64,
        .operands = &operands_407,
    },
    .{
        .label = "rd_rs1:aes64im:64",
        .text = "aes64im x5, x6",
        .mnemonic = "aes64im",
        .xlen = 64,
        .operands = &operands_408,
    },
    .{
        .label = "rd_rs1:brev8:64",
        .text = "brev8 x5, x6",
        .mnemonic = "brev8",
        .xlen = 64,
        .operands = &operands_409,
    },
    .{
        .label = "rd_rs1:cls:64",
        .text = "cls x5, x6",
        .mnemonic = "cls",
        .xlen = 64,
        .operands = &operands_410,
    },
    .{
        .label = "rd_rs1:clsw:64",
        .text = "clsw x5, x6",
        .mnemonic = "clsw",
        .xlen = 64,
        .operands = &operands_411,
    },
    .{
        .label = "rd_rs1:clz:64",
        .text = "clz x5, x6",
        .mnemonic = "clz",
        .xlen = 64,
        .operands = &operands_412,
    },
    .{
        .label = "rd_rs1:clzw:64",
        .text = "clzw x5, x6",
        .mnemonic = "clzw",
        .xlen = 64,
        .operands = &operands_413,
    },
    .{
        .label = "rd_rs1:cpop:64",
        .text = "cpop x5, x6",
        .mnemonic = "cpop",
        .xlen = 64,
        .operands = &operands_414,
    },
    .{
        .label = "rd_rs1:cpopw:64",
        .text = "cpopw x5, x6",
        .mnemonic = "cpopw",
        .xlen = 64,
        .operands = &operands_415,
    },
    .{
        .label = "rd_rs1:ctz:64",
        .text = "ctz x5, x6",
        .mnemonic = "ctz",
        .xlen = 64,
        .operands = &operands_416,
    },
    .{
        .label = "rd_rs1:ctzw:64",
        .text = "ctzw x5, x6",
        .mnemonic = "ctzw",
        .xlen = 64,
        .operands = &operands_417,
    },
    .{
        .label = "rd_rs1:fabs_d:64",
        .text = "fabs.d x5, x6",
        .mnemonic = "fabs.d",
        .xlen = 64,
        .operands = &operands_418,
    },
    .{
        .label = "rd_rs1:fabs_h:64",
        .text = "fabs.h x5, x6",
        .mnemonic = "fabs.h",
        .xlen = 64,
        .operands = &operands_419,
    },
    .{
        .label = "rd_rs1:fabs_q:64",
        .text = "fabs.q x5, x6",
        .mnemonic = "fabs.q",
        .xlen = 64,
        .operands = &operands_420,
    },
    .{
        .label = "rd_rs1:fabs_s:64",
        .text = "fabs.s x5, x6",
        .mnemonic = "fabs.s",
        .xlen = 64,
        .operands = &operands_421,
    },
    .{
        .label = "rd_rs1:fclass_d:64",
        .text = "fclass.d x5, x6",
        .mnemonic = "fclass.d",
        .xlen = 64,
        .operands = &operands_422,
    },
    .{
        .label = "rd_rs1:fclass_h:64",
        .text = "fclass.h x5, x6",
        .mnemonic = "fclass.h",
        .xlen = 64,
        .operands = &operands_423,
    },
    .{
        .label = "rd_rs1:fclass_q:64",
        .text = "fclass.q x5, x6",
        .mnemonic = "fclass.q",
        .xlen = 64,
        .operands = &operands_424,
    },
    .{
        .label = "rd_rs1:fclass_s:64",
        .text = "fclass.s x5, x6",
        .mnemonic = "fclass.s",
        .xlen = 64,
        .operands = &operands_425,
    },
    .{
        .label = "rd_rs1:fcvtmod_w_d:64",
        .text = "fcvtmod.w.d x5, x6",
        .mnemonic = "fcvtmod.w.d",
        .xlen = 64,
        .operands = &operands_426,
    },
    .{
        .label = "rd_rs1:fli_d:64",
        .text = "fli.d x5, x6",
        .mnemonic = "fli.d",
        .xlen = 64,
        .operands = &operands_427,
    },
    .{
        .label = "rd_rs1:fli_h:64",
        .text = "fli.h x5, x6",
        .mnemonic = "fli.h",
        .xlen = 64,
        .operands = &operands_428,
    },
    .{
        .label = "rd_rs1:fli_q:64",
        .text = "fli.q x5, x6",
        .mnemonic = "fli.q",
        .xlen = 64,
        .operands = &operands_429,
    },
    .{
        .label = "rd_rs1:fli_s:64",
        .text = "fli.s x5, x6",
        .mnemonic = "fli.s",
        .xlen = 64,
        .operands = &operands_430,
    },
    .{
        .label = "rd_rs1:fmv_d:64",
        .text = "fmv.d x5, x6",
        .mnemonic = "fmv.d",
        .xlen = 64,
        .operands = &operands_431,
    },
    .{
        .label = "rd_rs1:fmv_d_x:64",
        .text = "fmv.d.x x5, x6",
        .mnemonic = "fmv.d.x",
        .xlen = 64,
        .operands = &operands_432,
    },
    .{
        .label = "rd_rs1:fmv_h:64",
        .text = "fmv.h x5, x6",
        .mnemonic = "fmv.h",
        .xlen = 64,
        .operands = &operands_433,
    },
    .{
        .label = "rd_rs1:fmv_h_x:64",
        .text = "fmv.h.x x5, x6",
        .mnemonic = "fmv.h.x",
        .xlen = 64,
        .operands = &operands_434,
    },
    .{
        .label = "rd_rs1:fmv_q:64",
        .text = "fmv.q x5, x6",
        .mnemonic = "fmv.q",
        .xlen = 64,
        .operands = &operands_435,
    },
    .{
        .label = "rd_rs1:fmv_s:64",
        .text = "fmv.s x5, x6",
        .mnemonic = "fmv.s",
        .xlen = 64,
        .operands = &operands_436,
    },
    .{
        .label = "rd_rs1:fmv_s_x:64",
        .text = "fmv.s.x x5, x6",
        .mnemonic = "fmv.s.x",
        .xlen = 64,
        .operands = &operands_437,
    },
    .{
        .label = "rd_rs1:fmv_w_x:64",
        .text = "fmv.w.x x5, x6",
        .mnemonic = "fmv.w.x",
        .xlen = 64,
        .operands = &operands_438,
    },
    .{
        .label = "rd_rs1:fmv_x_d:64",
        .text = "fmv.x.d x5, x6",
        .mnemonic = "fmv.x.d",
        .xlen = 64,
        .operands = &operands_439,
    },
    .{
        .label = "rd_rs1:fmv_x_h:64",
        .text = "fmv.x.h x5, x6",
        .mnemonic = "fmv.x.h",
        .xlen = 64,
        .operands = &operands_440,
    },
    .{
        .label = "rd_rs1:fmv_x_s:64",
        .text = "fmv.x.s x5, x6",
        .mnemonic = "fmv.x.s",
        .xlen = 64,
        .operands = &operands_441,
    },
    .{
        .label = "rd_rs1:fmv_x_w:64",
        .text = "fmv.x.w x5, x6",
        .mnemonic = "fmv.x.w",
        .xlen = 64,
        .operands = &operands_442,
    },
    .{
        .label = "rd_rs1:fmvh_x_d:32",
        .text = "fmvh.x.d x5, x6",
        .mnemonic = "fmvh.x.d",
        .xlen = 32,
        .operands = &operands_443,
    },
    .{
        .label = "rd_rs1:fmvh_x_q:64",
        .text = "fmvh.x.q x5, x6",
        .mnemonic = "fmvh.x.q",
        .xlen = 64,
        .operands = &operands_444,
    },
    .{
        .label = "rd_rs1:fneg_d:64",
        .text = "fneg.d x5, x6",
        .mnemonic = "fneg.d",
        .xlen = 64,
        .operands = &operands_445,
    },
    .{
        .label = "rd_rs1:fneg_h:64",
        .text = "fneg.h x5, x6",
        .mnemonic = "fneg.h",
        .xlen = 64,
        .operands = &operands_446,
    },
    .{
        .label = "rd_rs1:fneg_q:64",
        .text = "fneg.q x5, x6",
        .mnemonic = "fneg.q",
        .xlen = 64,
        .operands = &operands_447,
    },
    .{
        .label = "rd_rs1:fneg_s:64",
        .text = "fneg.s x5, x6",
        .mnemonic = "fneg.s",
        .xlen = 64,
        .operands = &operands_448,
    },
    .{
        .label = "rd_rs1:fscsr:64",
        .text = "fscsr x5, x6",
        .mnemonic = "fscsr",
        .xlen = 64,
        .operands = &operands_449,
    },
    .{
        .label = "rd_rs1:fsflags:64",
        .text = "fsflags x5, x6",
        .mnemonic = "fsflags",
        .xlen = 64,
        .operands = &operands_450,
    },
    .{
        .label = "rd_rs1:fsrm:64",
        .text = "fsrm x5, x6",
        .mnemonic = "fsrm",
        .xlen = 64,
        .operands = &operands_451,
    },
    .{
        .label = "rd_rs1:hlv_b:64",
        .text = "hlv.b x5, x6",
        .mnemonic = "hlv.b",
        .xlen = 64,
        .operands = &operands_452,
    },
    .{
        .label = "rd_rs1:hlv_bu:64",
        .text = "hlv.bu x5, x6",
        .mnemonic = "hlv.bu",
        .xlen = 64,
        .operands = &operands_453,
    },
    .{
        .label = "rd_rs1:hlv_d:64",
        .text = "hlv.d x5, x6",
        .mnemonic = "hlv.d",
        .xlen = 64,
        .operands = &operands_454,
    },
    .{
        .label = "rd_rs1:hlv_h:64",
        .text = "hlv.h x5, x6",
        .mnemonic = "hlv.h",
        .xlen = 64,
        .operands = &operands_455,
    },
    .{
        .label = "rd_rs1:hlv_hu:64",
        .text = "hlv.hu x5, x6",
        .mnemonic = "hlv.hu",
        .xlen = 64,
        .operands = &operands_456,
    },
    .{
        .label = "rd_rs1:hlv_w:64",
        .text = "hlv.w x5, x6",
        .mnemonic = "hlv.w",
        .xlen = 64,
        .operands = &operands_457,
    },
    .{
        .label = "rd_rs1:hlv_wu:64",
        .text = "hlv.wu x5, x6",
        .mnemonic = "hlv.wu",
        .xlen = 64,
        .operands = &operands_458,
    },
    .{
        .label = "rd_rs1:hlvx_hu:64",
        .text = "hlvx.hu x5, x6",
        .mnemonic = "hlvx.hu",
        .xlen = 64,
        .operands = &operands_459,
    },
    .{
        .label = "rd_rs1:hlvx_wu:64",
        .text = "hlvx.wu x5, x6",
        .mnemonic = "hlvx.wu",
        .xlen = 64,
        .operands = &operands_460,
    },
    .{
        .label = "rd_rs1:mop_r_0:64",
        .text = "mop.r.0 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_461,
    },
    .{
        .label = "rd_rs1:mop_r_1:64",
        .text = "mop.r.1 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_462,
    },
    .{
        .label = "rd_rs1:mop_r_10:64",
        .text = "mop.r.10 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_463,
    },
    .{
        .label = "rd_rs1:mop_r_11:64",
        .text = "mop.r.11 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_464,
    },
    .{
        .label = "rd_rs1:mop_r_12:64",
        .text = "mop.r.12 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_465,
    },
    .{
        .label = "rd_rs1:mop_r_13:64",
        .text = "mop.r.13 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_466,
    },
    .{
        .label = "rd_rs1:mop_r_14:64",
        .text = "mop.r.14 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_467,
    },
    .{
        .label = "rd_rs1:mop_r_15:64",
        .text = "mop.r.15 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_468,
    },
    .{
        .label = "rd_rs1:mop_r_16:64",
        .text = "mop.r.16 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_469,
    },
    .{
        .label = "rd_rs1:mop_r_17:64",
        .text = "mop.r.17 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_470,
    },
    .{
        .label = "rd_rs1:mop_r_18:64",
        .text = "mop.r.18 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_471,
    },
    .{
        .label = "rd_rs1:mop_r_19:64",
        .text = "mop.r.19 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_472,
    },
    .{
        .label = "rd_rs1:mop_r_2:64",
        .text = "mop.r.2 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_473,
    },
    .{
        .label = "rd_rs1:mop_r_20:64",
        .text = "mop.r.20 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_474,
    },
    .{
        .label = "rd_rs1:mop_r_21:64",
        .text = "mop.r.21 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_475,
    },
    .{
        .label = "rd_rs1:mop_r_22:64",
        .text = "mop.r.22 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_476,
    },
    .{
        .label = "rd_rs1:mop_r_23:64",
        .text = "mop.r.23 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_477,
    },
    .{
        .label = "rd_rs1:mop_r_24:64",
        .text = "mop.r.24 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_478,
    },
    .{
        .label = "rd_rs1:mop_r_25:64",
        .text = "mop.r.25 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_479,
    },
    .{
        .label = "rd_rs1:mop_r_26:64",
        .text = "mop.r.26 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_480,
    },
    .{
        .label = "rd_rs1:mop_r_27:64",
        .text = "mop.r.27 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_481,
    },
    .{
        .label = "rd_rs1:mop_r_28:64",
        .text = "mop.r.28 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_482,
    },
    .{
        .label = "rd_rs1:mop_r_29:64",
        .text = "mop.r.29 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_483,
    },
    .{
        .label = "rd_rs1:mop_r_3:64",
        .text = "mop.r.3 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_484,
    },
    .{
        .label = "rd_rs1:mop_r_30:64",
        .text = "mop.r.30 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_485,
    },
    .{
        .label = "rd_rs1:mop_r_31:64",
        .text = "mop.r.31 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_486,
    },
    .{
        .label = "rd_rs1:mop_r_4:64",
        .text = "mop.r.4 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_487,
    },
    .{
        .label = "rd_rs1:mop_r_5:64",
        .text = "mop.r.5 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_488,
    },
    .{
        .label = "rd_rs1:mop_r_6:64",
        .text = "mop.r.6 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_489,
    },
    .{
        .label = "rd_rs1:mop_r_7:64",
        .text = "mop.r.7 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_490,
    },
    .{
        .label = "rd_rs1:mop_r_8:64",
        .text = "mop.r.8 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_491,
    },
    .{
        .label = "rd_rs1:mop_r_9:64",
        .text = "mop.r.9 x5, x6",
        .mnemonic = "mop.r.n",
        .xlen = 64,
        .operands = &operands_492,
    },
    .{
        .label = "rd_rs1:mv:64",
        .text = "mv x5, x6",
        .mnemonic = "mv",
        .xlen = 64,
        .operands = &operands_493,
    },
    .{
        .label = "rd_rs1:neg:64",
        .text = "neg x5, x6",
        .mnemonic = "neg",
        .xlen = 64,
        .operands = &operands_494,
    },
    .{
        .label = "rd_rs1:orc_b:64",
        .text = "orc.b x5, x6",
        .mnemonic = "orc.b",
        .xlen = 64,
        .operands = &operands_495,
    },
    .{
        .label = "rd_rs1:psabs_b:64",
        .text = "psabs.b x5, x6",
        .mnemonic = "psabs.b",
        .xlen = 64,
        .operands = &operands_496,
    },
    .{
        .label = "rd_rs1:psabs_h:64",
        .text = "psabs.h x5, x6",
        .mnemonic = "psabs.h",
        .xlen = 64,
        .operands = &operands_497,
    },
    .{
        .label = "rd_rs1:psext_h_b:64",
        .text = "psext.h.b x5, x6",
        .mnemonic = "psext.h.b",
        .xlen = 64,
        .operands = &operands_498,
    },
    .{
        .label = "rd_rs1:psext_w_b:64",
        .text = "psext.w.b x5, x6",
        .mnemonic = "psext.w.b",
        .xlen = 64,
        .operands = &operands_499,
    },
    .{
        .label = "rd_rs1:psext_w_h:64",
        .text = "psext.w.h x5, x6",
        .mnemonic = "psext.w.h",
        .xlen = 64,
        .operands = &operands_500,
    },
    .{
        .label = "rd_rs1:rev:64",
        .text = "rev x5, x6",
        .mnemonic = "rev",
        .xlen = 64,
        .operands = &operands_501,
    },
    .{
        .label = "rd_rs1:rev16:64",
        .text = "rev16 x5, x6",
        .mnemonic = "rev16",
        .xlen = 64,
        .operands = &operands_502,
    },
    .{
        .label = "rd_rs1:rev8:64",
        .text = "rev8 x5, x6",
        .mnemonic = "rev8",
        .xlen = 64,
        .operands = &operands_503,
    },
    .{
        .label = "rd_rs1:seqz:64",
        .text = "seqz x5, x6",
        .mnemonic = "seqz",
        .xlen = 64,
        .operands = &operands_504,
    },
    .{
        .label = "rd_rs1:sext_b:64",
        .text = "sext.b x5, x6",
        .mnemonic = "sext.b",
        .xlen = 64,
        .operands = &operands_505,
    },
    .{
        .label = "rd_rs1:sext_h:64",
        .text = "sext.h x5, x6",
        .mnemonic = "sext.h",
        .xlen = 64,
        .operands = &operands_506,
    },
    .{
        .label = "rd_rs1:sext_w:64",
        .text = "sext.w x5, x6",
        .mnemonic = "sext.w",
        .xlen = 64,
        .operands = &operands_507,
    },
    .{
        .label = "rd_rs1:sha256sig0:64",
        .text = "sha256sig0 x5, x6",
        .mnemonic = "sha256sig0",
        .xlen = 64,
        .operands = &operands_508,
    },
    .{
        .label = "rd_rs1:sha256sig1:64",
        .text = "sha256sig1 x5, x6",
        .mnemonic = "sha256sig1",
        .xlen = 64,
        .operands = &operands_509,
    },
    .{
        .label = "rd_rs1:sha256sum0:64",
        .text = "sha256sum0 x5, x6",
        .mnemonic = "sha256sum0",
        .xlen = 64,
        .operands = &operands_510,
    },
    .{
        .label = "rd_rs1:sha256sum1:64",
        .text = "sha256sum1 x5, x6",
        .mnemonic = "sha256sum1",
        .xlen = 64,
        .operands = &operands_511,
    },
    .{
        .label = "rd_rs1:sha512sig0:64",
        .text = "sha512sig0 x5, x6",
        .mnemonic = "sha512sig0",
        .xlen = 64,
        .operands = &operands_512,
    },
    .{
        .label = "rd_rs1:sha512sig1:64",
        .text = "sha512sig1 x5, x6",
        .mnemonic = "sha512sig1",
        .xlen = 64,
        .operands = &operands_513,
    },
    .{
        .label = "rd_rs1:sha512sum0:64",
        .text = "sha512sum0 x5, x6",
        .mnemonic = "sha512sum0",
        .xlen = 64,
        .operands = &operands_514,
    },
    .{
        .label = "rd_rs1:sha512sum1:64",
        .text = "sha512sum1 x5, x6",
        .mnemonic = "sha512sum1",
        .xlen = 64,
        .operands = &operands_515,
    },
    .{
        .label = "rd_rs1:sltz:64",
        .text = "sltz x5, x6",
        .mnemonic = "sltz",
        .xlen = 64,
        .operands = &operands_516,
    },
    .{
        .label = "rd_rs1:sm3p0:64",
        .text = "sm3p0 x5, x6",
        .mnemonic = "sm3p0",
        .xlen = 64,
        .operands = &operands_517,
    },
    .{
        .label = "rd_rs1:sm3p1:64",
        .text = "sm3p1 x5, x6",
        .mnemonic = "sm3p1",
        .xlen = 64,
        .operands = &operands_518,
    },
    .{
        .label = "rd_rs1:unzip:32",
        .text = "unzip x5, x6",
        .mnemonic = "unzip",
        .xlen = 32,
        .operands = &operands_519,
    },
    .{
        .label = "rd_rs1:zext_b:64",
        .text = "zext.b x5, x6",
        .mnemonic = "zext.b",
        .xlen = 64,
        .operands = &operands_520,
    },
    .{
        .label = "rd_rs1:zext_h:64",
        .text = "zext.h x5, x6",
        .mnemonic = "zext.h",
        .xlen = 64,
        .operands = &operands_521,
    },
    .{
        .label = "rd_rs1:zext_w:64",
        .text = "zext.w x5, x6",
        .mnemonic = "zext.w",
        .xlen = 64,
        .operands = &operands_522,
    },
    .{
        .label = "rd_rs1:zip:32",
        .text = "zip x5, x6",
        .mnemonic = "zip",
        .xlen = 32,
        .operands = &operands_523,
    },
    .{
        .label = "rd_rs1_csr:csrrc:64",
        .text = "csrrc x5, mstatus, x6",
        .mnemonic = "csrrc",
        .xlen = 64,
        .operands = &operands_524,
    },
    .{
        .label = "rd_rs1_csr:csrrs:64",
        .text = "csrrs x5, mstatus, x6",
        .mnemonic = "csrrs",
        .xlen = 64,
        .operands = &operands_525,
    },
    .{
        .label = "rd_rs1_csr:csrrw:64",
        .text = "csrrw x5, mstatus, x6",
        .mnemonic = "csrrw",
        .xlen = 64,
        .operands = &operands_526,
    },
    .{
        .label = "rd_rs1_imm:addi:64",
        .text = "addi x5, x6, 16",
        .mnemonic = "addi",
        .xlen = 64,
        .operands = &operands_527,
    },
    .{
        .label = "rd_rs1_imm:addiw:64",
        .text = "addiw x5, x6, 16",
        .mnemonic = "addiw",
        .xlen = 64,
        .operands = &operands_528,
    },
    .{
        .label = "rd_rs1_imm:andi:64",
        .text = "andi x5, x6, 16",
        .mnemonic = "andi",
        .xlen = 64,
        .operands = &operands_529,
    },
    .{
        .label = "rd_rs1_imm:fld:64",
        .text = "fld x5, 16(x6)",
        .mnemonic = "fld",
        .xlen = 64,
        .operands = &operands_530,
    },
    .{
        .label = "rd_rs1_imm:flh:64",
        .text = "flh x5, 16(x6)",
        .mnemonic = "flh",
        .xlen = 64,
        .operands = &operands_531,
    },
    .{
        .label = "rd_rs1_imm:flq:64",
        .text = "flq x5, 16(x6)",
        .mnemonic = "flq",
        .xlen = 64,
        .operands = &operands_532,
    },
    .{
        .label = "rd_rs1_imm:flw:64",
        .text = "flw x5, 16(x6)",
        .mnemonic = "flw",
        .xlen = 64,
        .operands = &operands_533,
    },
    .{
        .label = "rd_rs1_imm:jalr:64",
        .text = "jalr x5, x6, 16",
        .mnemonic = "jalr",
        .xlen = 64,
        .operands = &operands_534,
    },
    .{
        .label = "rd_rs1_imm:lb:64",
        .text = "lb x5, 16(x6)",
        .mnemonic = "lb",
        .xlen = 64,
        .operands = &operands_535,
    },
    .{
        .label = "rd_rs1_imm:lbu:64",
        .text = "lbu x5, 16(x6)",
        .mnemonic = "lbu",
        .xlen = 64,
        .operands = &operands_536,
    },
    .{
        .label = "rd_rs1_imm:ld:64",
        .text = "ld x5, 16(x6)",
        .mnemonic = "ld",
        .xlen = 64,
        .operands = &operands_537,
    },
    .{
        .label = "rd_rs1_imm:lh:64",
        .text = "lh x5, 16(x6)",
        .mnemonic = "lh",
        .xlen = 64,
        .operands = &operands_538,
    },
    .{
        .label = "rd_rs1_imm:lhu:64",
        .text = "lhu x5, 16(x6)",
        .mnemonic = "lhu",
        .xlen = 64,
        .operands = &operands_539,
    },
    .{
        .label = "rd_rs1_imm:lw:64",
        .text = "lw x5, 16(x6)",
        .mnemonic = "lw",
        .xlen = 64,
        .operands = &operands_540,
    },
    .{
        .label = "rd_rs1_imm:lwu:64",
        .text = "lwu x5, 16(x6)",
        .mnemonic = "lwu",
        .xlen = 64,
        .operands = &operands_541,
    },
    .{
        .label = "rd_rs1_imm:ori:64",
        .text = "ori x5, x6, 16",
        .mnemonic = "ori",
        .xlen = 64,
        .operands = &operands_542,
    },
    .{
        .label = "rd_rs1_imm:slti:64",
        .text = "slti x5, x6, 16",
        .mnemonic = "slti",
        .xlen = 64,
        .operands = &operands_543,
    },
    .{
        .label = "rd_rs1_imm:sltiu:64",
        .text = "sltiu x5, x6, 16",
        .mnemonic = "sltiu",
        .xlen = 64,
        .operands = &operands_544,
    },
    .{
        .label = "rd_rs1_imm:xori:64",
        .text = "xori x5, x6, 16",
        .mnemonic = "xori",
        .xlen = 64,
        .operands = &operands_545,
    },
    .{
        .label = "rd_rs1_rl:lb_aq:64",
        .text = "lb.aq x5, x6",
        .mnemonic = "lb.aq",
        .xlen = 64,
        .operands = &operands_546,
    },
    .{
        .label = "rd_rs1_rl:ld_aq:64",
        .text = "ld.aq x5, x6",
        .mnemonic = "ld.aq",
        .xlen = 64,
        .operands = &operands_547,
    },
    .{
        .label = "rd_rs1_rl:lh_aq:64",
        .text = "lh.aq x5, x6",
        .mnemonic = "lh.aq",
        .xlen = 64,
        .operands = &operands_548,
    },
    .{
        .label = "rd_rs1_rl:lw_aq:64",
        .text = "lw.aq x5, x6",
        .mnemonic = "lw.aq",
        .xlen = 64,
        .operands = &operands_549,
    },
    .{
        .label = "rd_rs1_rm:fcvt_bf16_s:64",
        .text = "fcvt.bf16.s x5, x6, rne",
        .mnemonic = "fcvt.bf16.s",
        .xlen = 64,
        .operands = &operands_550,
    },
    .{
        .label = "rd_rs1_rm:fcvt_d_h:64",
        .text = "fcvt.d.h x5, x6, rne",
        .mnemonic = "fcvt.d.h",
        .xlen = 64,
        .operands = &operands_551,
    },
    .{
        .label = "rd_rs1_rm:fcvt_d_l:64",
        .text = "fcvt.d.l x5, x6, rne",
        .mnemonic = "fcvt.d.l",
        .xlen = 64,
        .operands = &operands_552,
    },
    .{
        .label = "rd_rs1_rm:fcvt_d_lu:64",
        .text = "fcvt.d.lu x5, x6, rne",
        .mnemonic = "fcvt.d.lu",
        .xlen = 64,
        .operands = &operands_553,
    },
    .{
        .label = "rd_rs1_rm:fcvt_d_q:64",
        .text = "fcvt.d.q x5, x6, rne",
        .mnemonic = "fcvt.d.q",
        .xlen = 64,
        .operands = &operands_554,
    },
    .{
        .label = "rd_rs1_rm:fcvt_d_s:64",
        .text = "fcvt.d.s x5, x6, rne",
        .mnemonic = "fcvt.d.s",
        .xlen = 64,
        .operands = &operands_555,
    },
    .{
        .label = "rd_rs1_rm:fcvt_d_w:64",
        .text = "fcvt.d.w x5, x6, rne",
        .mnemonic = "fcvt.d.w",
        .xlen = 64,
        .operands = &operands_556,
    },
    .{
        .label = "rd_rs1_rm:fcvt_d_wu:64",
        .text = "fcvt.d.wu x5, x6, rne",
        .mnemonic = "fcvt.d.wu",
        .xlen = 64,
        .operands = &operands_557,
    },
    .{
        .label = "rd_rs1_rm:fcvt_h_d:64",
        .text = "fcvt.h.d x5, x6, rne",
        .mnemonic = "fcvt.h.d",
        .xlen = 64,
        .operands = &operands_558,
    },
    .{
        .label = "rd_rs1_rm:fcvt_h_l:64",
        .text = "fcvt.h.l x5, x6, rne",
        .mnemonic = "fcvt.h.l",
        .xlen = 64,
        .operands = &operands_559,
    },
    .{
        .label = "rd_rs1_rm:fcvt_h_lu:64",
        .text = "fcvt.h.lu x5, x6, rne",
        .mnemonic = "fcvt.h.lu",
        .xlen = 64,
        .operands = &operands_560,
    },
    .{
        .label = "rd_rs1_rm:fcvt_h_q:64",
        .text = "fcvt.h.q x5, x6, rne",
        .mnemonic = "fcvt.h.q",
        .xlen = 64,
        .operands = &operands_561,
    },
    .{
        .label = "rd_rs1_rm:fcvt_h_s:64",
        .text = "fcvt.h.s x5, x6, rne",
        .mnemonic = "fcvt.h.s",
        .xlen = 64,
        .operands = &operands_562,
    },
    .{
        .label = "rd_rs1_rm:fcvt_h_w:64",
        .text = "fcvt.h.w x5, x6, rne",
        .mnemonic = "fcvt.h.w",
        .xlen = 64,
        .operands = &operands_563,
    },
    .{
        .label = "rd_rs1_rm:fcvt_h_wu:64",
        .text = "fcvt.h.wu x5, x6, rne",
        .mnemonic = "fcvt.h.wu",
        .xlen = 64,
        .operands = &operands_564,
    },
    .{
        .label = "rd_rs1_rm:fcvt_l_d:64",
        .text = "fcvt.l.d x5, x6, rne",
        .mnemonic = "fcvt.l.d",
        .xlen = 64,
        .operands = &operands_565,
    },
    .{
        .label = "rd_rs1_rm:fcvt_l_h:64",
        .text = "fcvt.l.h x5, x6, rne",
        .mnemonic = "fcvt.l.h",
        .xlen = 64,
        .operands = &operands_566,
    },
    .{
        .label = "rd_rs1_rm:fcvt_l_q:64",
        .text = "fcvt.l.q x5, x6, rne",
        .mnemonic = "fcvt.l.q",
        .xlen = 64,
        .operands = &operands_567,
    },
    .{
        .label = "rd_rs1_rm:fcvt_l_s:64",
        .text = "fcvt.l.s x5, x6, rne",
        .mnemonic = "fcvt.l.s",
        .xlen = 64,
        .operands = &operands_568,
    },
    .{
        .label = "rd_rs1_rm:fcvt_lu_d:64",
        .text = "fcvt.lu.d x5, x6, rne",
        .mnemonic = "fcvt.lu.d",
        .xlen = 64,
        .operands = &operands_569,
    },
    .{
        .label = "rd_rs1_rm:fcvt_lu_h:64",
        .text = "fcvt.lu.h x5, x6, rne",
        .mnemonic = "fcvt.lu.h",
        .xlen = 64,
        .operands = &operands_570,
    },
    .{
        .label = "rd_rs1_rm:fcvt_lu_q:64",
        .text = "fcvt.lu.q x5, x6, rne",
        .mnemonic = "fcvt.lu.q",
        .xlen = 64,
        .operands = &operands_571,
    },
    .{
        .label = "rd_rs1_rm:fcvt_lu_s:64",
        .text = "fcvt.lu.s x5, x6, rne",
        .mnemonic = "fcvt.lu.s",
        .xlen = 64,
        .operands = &operands_572,
    },
    .{
        .label = "rd_rs1_rm:fcvt_q_d:64",
        .text = "fcvt.q.d x5, x6, rne",
        .mnemonic = "fcvt.q.d",
        .xlen = 64,
        .operands = &operands_573,
    },
    .{
        .label = "rd_rs1_rm:fcvt_q_h:64",
        .text = "fcvt.q.h x5, x6, rne",
        .mnemonic = "fcvt.q.h",
        .xlen = 64,
        .operands = &operands_574,
    },
    .{
        .label = "rd_rs1_rm:fcvt_q_l:64",
        .text = "fcvt.q.l x5, x6, rne",
        .mnemonic = "fcvt.q.l",
        .xlen = 64,
        .operands = &operands_575,
    },
    .{
        .label = "rd_rs1_rm:fcvt_q_lu:64",
        .text = "fcvt.q.lu x5, x6, rne",
        .mnemonic = "fcvt.q.lu",
        .xlen = 64,
        .operands = &operands_576,
    },
    .{
        .label = "rd_rs1_rm:fcvt_q_s:64",
        .text = "fcvt.q.s x5, x6, rne",
        .mnemonic = "fcvt.q.s",
        .xlen = 64,
        .operands = &operands_577,
    },
    .{
        .label = "rd_rs1_rm:fcvt_q_w:64",
        .text = "fcvt.q.w x5, x6, rne",
        .mnemonic = "fcvt.q.w",
        .xlen = 64,
        .operands = &operands_578,
    },
    .{
        .label = "rd_rs1_rm:fcvt_q_wu:64",
        .text = "fcvt.q.wu x5, x6, rne",
        .mnemonic = "fcvt.q.wu",
        .xlen = 64,
        .operands = &operands_579,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_bf16:64",
        .text = "fcvt.s.bf16 x5, x6, rne",
        .mnemonic = "fcvt.s.bf16",
        .xlen = 64,
        .operands = &operands_580,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_d:64",
        .text = "fcvt.s.d x5, x6, rne",
        .mnemonic = "fcvt.s.d",
        .xlen = 64,
        .operands = &operands_581,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_h:64",
        .text = "fcvt.s.h x5, x6, rne",
        .mnemonic = "fcvt.s.h",
        .xlen = 64,
        .operands = &operands_582,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_l:64",
        .text = "fcvt.s.l x5, x6, rne",
        .mnemonic = "fcvt.s.l",
        .xlen = 64,
        .operands = &operands_583,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_lu:64",
        .text = "fcvt.s.lu x5, x6, rne",
        .mnemonic = "fcvt.s.lu",
        .xlen = 64,
        .operands = &operands_584,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_q:64",
        .text = "fcvt.s.q x5, x6, rne",
        .mnemonic = "fcvt.s.q",
        .xlen = 64,
        .operands = &operands_585,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_w:64",
        .text = "fcvt.s.w x5, x6, rne",
        .mnemonic = "fcvt.s.w",
        .xlen = 64,
        .operands = &operands_586,
    },
    .{
        .label = "rd_rs1_rm:fcvt_s_wu:64",
        .text = "fcvt.s.wu x5, x6, rne",
        .mnemonic = "fcvt.s.wu",
        .xlen = 64,
        .operands = &operands_587,
    },
    .{
        .label = "rd_rs1_rm:fcvt_w_d:64",
        .text = "fcvt.w.d x5, x6, rne",
        .mnemonic = "fcvt.w.d",
        .xlen = 64,
        .operands = &operands_588,
    },
    .{
        .label = "rd_rs1_rm:fcvt_w_h:64",
        .text = "fcvt.w.h x5, x6, rne",
        .mnemonic = "fcvt.w.h",
        .xlen = 64,
        .operands = &operands_589,
    },
    .{
        .label = "rd_rs1_rm:fcvt_w_q:64",
        .text = "fcvt.w.q x5, x6, rne",
        .mnemonic = "fcvt.w.q",
        .xlen = 64,
        .operands = &operands_590,
    },
    .{
        .label = "rd_rs1_rm:fcvt_w_s:64",
        .text = "fcvt.w.s x5, x6, rne",
        .mnemonic = "fcvt.w.s",
        .xlen = 64,
        .operands = &operands_591,
    },
    .{
        .label = "rd_rs1_rm:fcvt_wu_d:64",
        .text = "fcvt.wu.d x5, x6, rne",
        .mnemonic = "fcvt.wu.d",
        .xlen = 64,
        .operands = &operands_592,
    },
    .{
        .label = "rd_rs1_rm:fcvt_wu_h:64",
        .text = "fcvt.wu.h x5, x6, rne",
        .mnemonic = "fcvt.wu.h",
        .xlen = 64,
        .operands = &operands_593,
    },
    .{
        .label = "rd_rs1_rm:fcvt_wu_q:64",
        .text = "fcvt.wu.q x5, x6, rne",
        .mnemonic = "fcvt.wu.q",
        .xlen = 64,
        .operands = &operands_594,
    },
    .{
        .label = "rd_rs1_rm:fcvt_wu_s:64",
        .text = "fcvt.wu.s x5, x6, rne",
        .mnemonic = "fcvt.wu.s",
        .xlen = 64,
        .operands = &operands_595,
    },
    .{
        .label = "rd_rs1_rm:fround_d:64",
        .text = "fround.d x5, x6, rne",
        .mnemonic = "fround.d",
        .xlen = 64,
        .operands = &operands_596,
    },
    .{
        .label = "rd_rs1_rm:fround_h:64",
        .text = "fround.h x5, x6, rne",
        .mnemonic = "fround.h",
        .xlen = 64,
        .operands = &operands_597,
    },
    .{
        .label = "rd_rs1_rm:fround_q:64",
        .text = "fround.q x5, x6, rne",
        .mnemonic = "fround.q",
        .xlen = 64,
        .operands = &operands_598,
    },
    .{
        .label = "rd_rs1_rm:fround_s:64",
        .text = "fround.s x5, x6, rne",
        .mnemonic = "fround.s",
        .xlen = 64,
        .operands = &operands_599,
    },
    .{
        .label = "rd_rs1_rm:froundnx_d:64",
        .text = "froundnx.d x5, x6, rne",
        .mnemonic = "froundnx.d",
        .xlen = 64,
        .operands = &operands_600,
    },
    .{
        .label = "rd_rs1_rm:froundnx_h:64",
        .text = "froundnx.h x5, x6, rne",
        .mnemonic = "froundnx.h",
        .xlen = 64,
        .operands = &operands_601,
    },
    .{
        .label = "rd_rs1_rm:froundnx_q:64",
        .text = "froundnx.q x5, x6, rne",
        .mnemonic = "froundnx.q",
        .xlen = 64,
        .operands = &operands_602,
    },
    .{
        .label = "rd_rs1_rm:froundnx_s:64",
        .text = "froundnx.s x5, x6, rne",
        .mnemonic = "froundnx.s",
        .xlen = 64,
        .operands = &operands_603,
    },
    .{
        .label = "rd_rs1_rm:fsqrt_d:64",
        .text = "fsqrt.d x5, x6, rne",
        .mnemonic = "fsqrt.d",
        .xlen = 64,
        .operands = &operands_604,
    },
    .{
        .label = "rd_rs1_rm:fsqrt_h:64",
        .text = "fsqrt.h x5, x6, rne",
        .mnemonic = "fsqrt.h",
        .xlen = 64,
        .operands = &operands_605,
    },
    .{
        .label = "rd_rs1_rm:fsqrt_q:64",
        .text = "fsqrt.q x5, x6, rne",
        .mnemonic = "fsqrt.q",
        .xlen = 64,
        .operands = &operands_606,
    },
    .{
        .label = "rd_rs1_rm:fsqrt_s:64",
        .text = "fsqrt.s x5, x6, rne",
        .mnemonic = "fsqrt.s",
        .xlen = 64,
        .operands = &operands_607,
    },
    .{
        .label = "rd_rs1_rnum:aes64ks1i:64",
        .text = "aes64ks1i x5, x6, 2",
        .mnemonic = "aes64ks1i",
        .xlen = 64,
        .operands = &operands_608,
    },
    .{
        .label = "rd_rs1_rs2:aadd:32",
        .text = "aadd x5, x6, x7",
        .mnemonic = "aadd",
        .xlen = 32,
        .operands = &operands_609,
    },
    .{
        .label = "rd_rs1_rs2:aaddu:32",
        .text = "aaddu x5, x6, x7",
        .mnemonic = "aaddu",
        .xlen = 32,
        .operands = &operands_610,
    },
    .{
        .label = "rd_rs1_rs2:add:64",
        .text = "add x5, x6, x7",
        .mnemonic = "add",
        .xlen = 64,
        .operands = &operands_611,
    },
    .{
        .label = "rd_rs1_rs2:add_uw:64",
        .text = "add.uw x5, x6, x7",
        .mnemonic = "add.uw",
        .xlen = 64,
        .operands = &operands_612,
    },
    .{
        .label = "rd_rs1_rs2:addw:64",
        .text = "addw x5, x6, x7",
        .mnemonic = "addw",
        .xlen = 64,
        .operands = &operands_613,
    },
    .{
        .label = "rd_rs1_rs2:aes64ds:64",
        .text = "aes64ds x5, x6, x7",
        .mnemonic = "aes64ds",
        .xlen = 64,
        .operands = &operands_614,
    },
    .{
        .label = "rd_rs1_rs2:aes64dsm:64",
        .text = "aes64dsm x5, x6, x7",
        .mnemonic = "aes64dsm",
        .xlen = 64,
        .operands = &operands_615,
    },
    .{
        .label = "rd_rs1_rs2:aes64es:64",
        .text = "aes64es x5, x6, x7",
        .mnemonic = "aes64es",
        .xlen = 64,
        .operands = &operands_616,
    },
    .{
        .label = "rd_rs1_rs2:aes64esm:64",
        .text = "aes64esm x5, x6, x7",
        .mnemonic = "aes64esm",
        .xlen = 64,
        .operands = &operands_617,
    },
    .{
        .label = "rd_rs1_rs2:aes64ks2:64",
        .text = "aes64ks2 x5, x6, x7",
        .mnemonic = "aes64ks2",
        .xlen = 64,
        .operands = &operands_618,
    },
    .{
        .label = "rd_rs1_rs2:and:64",
        .text = "and x5, x6, x7",
        .mnemonic = "and",
        .xlen = 64,
        .operands = &operands_619,
    },
    .{
        .label = "rd_rs1_rs2:andn:64",
        .text = "andn x5, x6, x7",
        .mnemonic = "andn",
        .xlen = 64,
        .operands = &operands_620,
    },
    .{
        .label = "rd_rs1_rs2:asub:32",
        .text = "asub x5, x6, x7",
        .mnemonic = "asub",
        .xlen = 32,
        .operands = &operands_621,
    },
    .{
        .label = "rd_rs1_rs2:asubu:32",
        .text = "asubu x5, x6, x7",
        .mnemonic = "asubu",
        .xlen = 32,
        .operands = &operands_622,
    },
    .{
        .label = "rd_rs1_rs2:bclr:64",
        .text = "bclr x5, x6, x7",
        .mnemonic = "bclr",
        .xlen = 64,
        .operands = &operands_623,
    },
    .{
        .label = "rd_rs1_rs2:bext:64",
        .text = "bext x5, x6, x7",
        .mnemonic = "bext",
        .xlen = 64,
        .operands = &operands_624,
    },
    .{
        .label = "rd_rs1_rs2:binv:64",
        .text = "binv x5, x6, x7",
        .mnemonic = "binv",
        .xlen = 64,
        .operands = &operands_625,
    },
    .{
        .label = "rd_rs1_rs2:bset:64",
        .text = "bset x5, x6, x7",
        .mnemonic = "bset",
        .xlen = 64,
        .operands = &operands_626,
    },
    .{
        .label = "rd_rs1_rs2:clmul:64",
        .text = "clmul x5, x6, x7",
        .mnemonic = "clmul",
        .xlen = 64,
        .operands = &operands_627,
    },
    .{
        .label = "rd_rs1_rs2:clmulh:64",
        .text = "clmulh x5, x6, x7",
        .mnemonic = "clmulh",
        .xlen = 64,
        .operands = &operands_628,
    },
    .{
        .label = "rd_rs1_rs2:clmulr:64",
        .text = "clmulr x5, x6, x7",
        .mnemonic = "clmulr",
        .xlen = 64,
        .operands = &operands_629,
    },
    .{
        .label = "rd_rs1_rs2:czero_eqz:64",
        .text = "czero.eqz x5, x6, x7",
        .mnemonic = "czero.eqz",
        .xlen = 64,
        .operands = &operands_630,
    },
    .{
        .label = "rd_rs1_rs2:czero_nez:64",
        .text = "czero.nez x5, x6, x7",
        .mnemonic = "czero.nez",
        .xlen = 64,
        .operands = &operands_631,
    },
    .{
        .label = "rd_rs1_rs2:div:64",
        .text = "div x5, x6, x7",
        .mnemonic = "div",
        .xlen = 64,
        .operands = &operands_632,
    },
    .{
        .label = "rd_rs1_rs2:divu:64",
        .text = "divu x5, x6, x7",
        .mnemonic = "divu",
        .xlen = 64,
        .operands = &operands_633,
    },
    .{
        .label = "rd_rs1_rs2:divuw:64",
        .text = "divuw x5, x6, x7",
        .mnemonic = "divuw",
        .xlen = 64,
        .operands = &operands_634,
    },
    .{
        .label = "rd_rs1_rs2:divw:64",
        .text = "divw x5, x6, x7",
        .mnemonic = "divw",
        .xlen = 64,
        .operands = &operands_635,
    },
    .{
        .label = "rd_rs1_rs2:feq_d:64",
        .text = "feq.d x5, x6, x7",
        .mnemonic = "feq.d",
        .xlen = 64,
        .operands = &operands_636,
    },
    .{
        .label = "rd_rs1_rs2:feq_h:64",
        .text = "feq.h x5, x6, x7",
        .mnemonic = "feq.h",
        .xlen = 64,
        .operands = &operands_637,
    },
    .{
        .label = "rd_rs1_rs2:feq_q:64",
        .text = "feq.q x5, x6, x7",
        .mnemonic = "feq.q",
        .xlen = 64,
        .operands = &operands_638,
    },
    .{
        .label = "rd_rs1_rs2:feq_s:64",
        .text = "feq.s x5, x6, x7",
        .mnemonic = "feq.s",
        .xlen = 64,
        .operands = &operands_639,
    },
    .{
        .label = "rd_rs1_rs2:fle_d:64",
        .text = "fle.d x5, x6, x7",
        .mnemonic = "fle.d",
        .xlen = 64,
        .operands = &operands_640,
    },
    .{
        .label = "rd_rs1_rs2:fle_h:64",
        .text = "fle.h x5, x6, x7",
        .mnemonic = "fle.h",
        .xlen = 64,
        .operands = &operands_641,
    },
    .{
        .label = "rd_rs1_rs2:fle_q:64",
        .text = "fle.q x5, x6, x7",
        .mnemonic = "fle.q",
        .xlen = 64,
        .operands = &operands_642,
    },
    .{
        .label = "rd_rs1_rs2:fle_s:64",
        .text = "fle.s x5, x6, x7",
        .mnemonic = "fle.s",
        .xlen = 64,
        .operands = &operands_643,
    },
    .{
        .label = "rd_rs1_rs2:fleq_d:64",
        .text = "fleq.d x5, x6, x7",
        .mnemonic = "fleq.d",
        .xlen = 64,
        .operands = &operands_644,
    },
    .{
        .label = "rd_rs1_rs2:fleq_h:64",
        .text = "fleq.h x5, x6, x7",
        .mnemonic = "fleq.h",
        .xlen = 64,
        .operands = &operands_645,
    },
    .{
        .label = "rd_rs1_rs2:fleq_q:64",
        .text = "fleq.q x5, x6, x7",
        .mnemonic = "fleq.q",
        .xlen = 64,
        .operands = &operands_646,
    },
    .{
        .label = "rd_rs1_rs2:fleq_s:64",
        .text = "fleq.s x5, x6, x7",
        .mnemonic = "fleq.s",
        .xlen = 64,
        .operands = &operands_647,
    },
    .{
        .label = "rd_rs1_rs2:flt_d:64",
        .text = "flt.d x5, x6, x7",
        .mnemonic = "flt.d",
        .xlen = 64,
        .operands = &operands_648,
    },
    .{
        .label = "rd_rs1_rs2:flt_h:64",
        .text = "flt.h x5, x6, x7",
        .mnemonic = "flt.h",
        .xlen = 64,
        .operands = &operands_649,
    },
    .{
        .label = "rd_rs1_rs2:flt_q:64",
        .text = "flt.q x5, x6, x7",
        .mnemonic = "flt.q",
        .xlen = 64,
        .operands = &operands_650,
    },
    .{
        .label = "rd_rs1_rs2:flt_s:64",
        .text = "flt.s x5, x6, x7",
        .mnemonic = "flt.s",
        .xlen = 64,
        .operands = &operands_651,
    },
    .{
        .label = "rd_rs1_rs2:fltq_d:64",
        .text = "fltq.d x5, x6, x7",
        .mnemonic = "fltq.d",
        .xlen = 64,
        .operands = &operands_652,
    },
    .{
        .label = "rd_rs1_rs2:fltq_h:64",
        .text = "fltq.h x5, x6, x7",
        .mnemonic = "fltq.h",
        .xlen = 64,
        .operands = &operands_653,
    },
    .{
        .label = "rd_rs1_rs2:fltq_q:64",
        .text = "fltq.q x5, x6, x7",
        .mnemonic = "fltq.q",
        .xlen = 64,
        .operands = &operands_654,
    },
    .{
        .label = "rd_rs1_rs2:fltq_s:64",
        .text = "fltq.s x5, x6, x7",
        .mnemonic = "fltq.s",
        .xlen = 64,
        .operands = &operands_655,
    },
    .{
        .label = "rd_rs1_rs2:fmax_d:64",
        .text = "fmax.d x5, x6, x7",
        .mnemonic = "fmax.d",
        .xlen = 64,
        .operands = &operands_656,
    },
    .{
        .label = "rd_rs1_rs2:fmax_h:64",
        .text = "fmax.h x5, x6, x7",
        .mnemonic = "fmax.h",
        .xlen = 64,
        .operands = &operands_657,
    },
    .{
        .label = "rd_rs1_rs2:fmax_q:64",
        .text = "fmax.q x5, x6, x7",
        .mnemonic = "fmax.q",
        .xlen = 64,
        .operands = &operands_658,
    },
    .{
        .label = "rd_rs1_rs2:fmax_s:64",
        .text = "fmax.s x5, x6, x7",
        .mnemonic = "fmax.s",
        .xlen = 64,
        .operands = &operands_659,
    },
    .{
        .label = "rd_rs1_rs2:fmaxm_d:64",
        .text = "fmaxm.d x5, x6, x7",
        .mnemonic = "fmaxm.d",
        .xlen = 64,
        .operands = &operands_660,
    },
    .{
        .label = "rd_rs1_rs2:fmaxm_h:64",
        .text = "fmaxm.h x5, x6, x7",
        .mnemonic = "fmaxm.h",
        .xlen = 64,
        .operands = &operands_661,
    },
    .{
        .label = "rd_rs1_rs2:fmaxm_q:64",
        .text = "fmaxm.q x5, x6, x7",
        .mnemonic = "fmaxm.q",
        .xlen = 64,
        .operands = &operands_662,
    },
    .{
        .label = "rd_rs1_rs2:fmaxm_s:64",
        .text = "fmaxm.s x5, x6, x7",
        .mnemonic = "fmaxm.s",
        .xlen = 64,
        .operands = &operands_663,
    },
    .{
        .label = "rd_rs1_rs2:fmin_d:64",
        .text = "fmin.d x5, x6, x7",
        .mnemonic = "fmin.d",
        .xlen = 64,
        .operands = &operands_664,
    },
    .{
        .label = "rd_rs1_rs2:fmin_h:64",
        .text = "fmin.h x5, x6, x7",
        .mnemonic = "fmin.h",
        .xlen = 64,
        .operands = &operands_665,
    },
    .{
        .label = "rd_rs1_rs2:fmin_q:64",
        .text = "fmin.q x5, x6, x7",
        .mnemonic = "fmin.q",
        .xlen = 64,
        .operands = &operands_666,
    },
    .{
        .label = "rd_rs1_rs2:fmin_s:64",
        .text = "fmin.s x5, x6, x7",
        .mnemonic = "fmin.s",
        .xlen = 64,
        .operands = &operands_667,
    },
    .{
        .label = "rd_rs1_rs2:fminm_d:64",
        .text = "fminm.d x5, x6, x7",
        .mnemonic = "fminm.d",
        .xlen = 64,
        .operands = &operands_668,
    },
    .{
        .label = "rd_rs1_rs2:fminm_h:64",
        .text = "fminm.h x5, x6, x7",
        .mnemonic = "fminm.h",
        .xlen = 64,
        .operands = &operands_669,
    },
    .{
        .label = "rd_rs1_rs2:fminm_q:64",
        .text = "fminm.q x5, x6, x7",
        .mnemonic = "fminm.q",
        .xlen = 64,
        .operands = &operands_670,
    },
    .{
        .label = "rd_rs1_rs2:fminm_s:64",
        .text = "fminm.s x5, x6, x7",
        .mnemonic = "fminm.s",
        .xlen = 64,
        .operands = &operands_671,
    },
    .{
        .label = "rd_rs1_rs2:fmvp_d_x:32",
        .text = "fmvp.d.x x5, x6, x7",
        .mnemonic = "fmvp.d.x",
        .xlen = 32,
        .operands = &operands_672,
    },
    .{
        .label = "rd_rs1_rs2:fmvp_q_x:64",
        .text = "fmvp.q.x x5, x6, x7",
        .mnemonic = "fmvp.q.x",
        .xlen = 64,
        .operands = &operands_673,
    },
    .{
        .label = "rd_rs1_rs2:fsgnj_d:64",
        .text = "fsgnj.d x5, x6, x7",
        .mnemonic = "fsgnj.d",
        .xlen = 64,
        .operands = &operands_674,
    },
    .{
        .label = "rd_rs1_rs2:fsgnj_h:64",
        .text = "fsgnj.h x5, x6, x7",
        .mnemonic = "fsgnj.h",
        .xlen = 64,
        .operands = &operands_675,
    },
    .{
        .label = "rd_rs1_rs2:fsgnj_q:64",
        .text = "fsgnj.q x5, x6, x7",
        .mnemonic = "fsgnj.q",
        .xlen = 64,
        .operands = &operands_676,
    },
    .{
        .label = "rd_rs1_rs2:fsgnj_s:64",
        .text = "fsgnj.s x5, x6, x7",
        .mnemonic = "fsgnj.s",
        .xlen = 64,
        .operands = &operands_677,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjn_d:64",
        .text = "fsgnjn.d x5, x6, x7",
        .mnemonic = "fsgnjn.d",
        .xlen = 64,
        .operands = &operands_678,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjn_h:64",
        .text = "fsgnjn.h x5, x6, x7",
        .mnemonic = "fsgnjn.h",
        .xlen = 64,
        .operands = &operands_679,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjn_q:64",
        .text = "fsgnjn.q x5, x6, x7",
        .mnemonic = "fsgnjn.q",
        .xlen = 64,
        .operands = &operands_680,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjn_s:64",
        .text = "fsgnjn.s x5, x6, x7",
        .mnemonic = "fsgnjn.s",
        .xlen = 64,
        .operands = &operands_681,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjx_d:64",
        .text = "fsgnjx.d x5, x6, x7",
        .mnemonic = "fsgnjx.d",
        .xlen = 64,
        .operands = &operands_682,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjx_h:64",
        .text = "fsgnjx.h x5, x6, x7",
        .mnemonic = "fsgnjx.h",
        .xlen = 64,
        .operands = &operands_683,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjx_q:64",
        .text = "fsgnjx.q x5, x6, x7",
        .mnemonic = "fsgnjx.q",
        .xlen = 64,
        .operands = &operands_684,
    },
    .{
        .label = "rd_rs1_rs2:fsgnjx_s:64",
        .text = "fsgnjx.s x5, x6, x7",
        .mnemonic = "fsgnjx.s",
        .xlen = 64,
        .operands = &operands_685,
    },
    .{
        .label = "rd_rs1_rs2:macc_h00:32",
        .text = "macc.h00 x5, x6, x7",
        .mnemonic = "macc.h00",
        .xlen = 32,
        .operands = &operands_686,
    },
    .{
        .label = "rd_rs1_rs2:macc_h01:32",
        .text = "macc.h01 x5, x6, x7",
        .mnemonic = "macc.h01",
        .xlen = 32,
        .operands = &operands_687,
    },
    .{
        .label = "rd_rs1_rs2:macc_h11:32",
        .text = "macc.h11 x5, x6, x7",
        .mnemonic = "macc.h11",
        .xlen = 32,
        .operands = &operands_688,
    },
    .{
        .label = "rd_rs1_rs2:macc_w00:64",
        .text = "macc.w00 x5, x6, x7",
        .mnemonic = "macc.w00",
        .xlen = 64,
        .operands = &operands_689,
    },
    .{
        .label = "rd_rs1_rs2:macc_w01:64",
        .text = "macc.w01 x5, x6, x7",
        .mnemonic = "macc.w01",
        .xlen = 64,
        .operands = &operands_690,
    },
    .{
        .label = "rd_rs1_rs2:macc_w11:64",
        .text = "macc.w11 x5, x6, x7",
        .mnemonic = "macc.w11",
        .xlen = 64,
        .operands = &operands_691,
    },
    .{
        .label = "rd_rs1_rs2:maccsu_h00:32",
        .text = "maccsu.h00 x5, x6, x7",
        .mnemonic = "maccsu.h00",
        .xlen = 32,
        .operands = &operands_692,
    },
    .{
        .label = "rd_rs1_rs2:maccsu_h11:32",
        .text = "maccsu.h11 x5, x6, x7",
        .mnemonic = "maccsu.h11",
        .xlen = 32,
        .operands = &operands_693,
    },
    .{
        .label = "rd_rs1_rs2:maccsu_w00:64",
        .text = "maccsu.w00 x5, x6, x7",
        .mnemonic = "maccsu.w00",
        .xlen = 64,
        .operands = &operands_694,
    },
    .{
        .label = "rd_rs1_rs2:maccsu_w11:64",
        .text = "maccsu.w11 x5, x6, x7",
        .mnemonic = "maccsu.w11",
        .xlen = 64,
        .operands = &operands_695,
    },
    .{
        .label = "rd_rs1_rs2:maccu_h00:32",
        .text = "maccu.h00 x5, x6, x7",
        .mnemonic = "maccu.h00",
        .xlen = 32,
        .operands = &operands_696,
    },
    .{
        .label = "rd_rs1_rs2:maccu_h01:32",
        .text = "maccu.h01 x5, x6, x7",
        .mnemonic = "maccu.h01",
        .xlen = 32,
        .operands = &operands_697,
    },
    .{
        .label = "rd_rs1_rs2:maccu_h11:32",
        .text = "maccu.h11 x5, x6, x7",
        .mnemonic = "maccu.h11",
        .xlen = 32,
        .operands = &operands_698,
    },
    .{
        .label = "rd_rs1_rs2:maccu_w00:64",
        .text = "maccu.w00 x5, x6, x7",
        .mnemonic = "maccu.w00",
        .xlen = 64,
        .operands = &operands_699,
    },
    .{
        .label = "rd_rs1_rs2:maccu_w01:64",
        .text = "maccu.w01 x5, x6, x7",
        .mnemonic = "maccu.w01",
        .xlen = 64,
        .operands = &operands_700,
    },
    .{
        .label = "rd_rs1_rs2:maccu_w11:64",
        .text = "maccu.w11 x5, x6, x7",
        .mnemonic = "maccu.w11",
        .xlen = 64,
        .operands = &operands_701,
    },
    .{
        .label = "rd_rs1_rs2:max:64",
        .text = "max x5, x6, x7",
        .mnemonic = "max",
        .xlen = 64,
        .operands = &operands_702,
    },
    .{
        .label = "rd_rs1_rs2:maxu:64",
        .text = "maxu x5, x6, x7",
        .mnemonic = "maxu",
        .xlen = 64,
        .operands = &operands_703,
    },
    .{
        .label = "rd_rs1_rs2:merge:64",
        .text = "merge x5, x6, x7",
        .mnemonic = "merge",
        .xlen = 64,
        .operands = &operands_704,
    },
    .{
        .label = "rd_rs1_rs2:mhacc:32",
        .text = "mhacc x5, x6, x7",
        .mnemonic = "mhacc",
        .xlen = 32,
        .operands = &operands_705,
    },
    .{
        .label = "rd_rs1_rs2:mhacc_h0:32",
        .text = "mhacc.h0 x5, x6, x7",
        .mnemonic = "mhacc.h0",
        .xlen = 32,
        .operands = &operands_706,
    },
    .{
        .label = "rd_rs1_rs2:mhacc_h1:32",
        .text = "mhacc.h1 x5, x6, x7",
        .mnemonic = "mhacc.h1",
        .xlen = 32,
        .operands = &operands_707,
    },
    .{
        .label = "rd_rs1_rs2:mhaccsu:32",
        .text = "mhaccsu x5, x6, x7",
        .mnemonic = "mhaccsu",
        .xlen = 32,
        .operands = &operands_708,
    },
    .{
        .label = "rd_rs1_rs2:mhaccsu_h0:32",
        .text = "mhaccsu.h0 x5, x6, x7",
        .mnemonic = "mhaccsu.h0",
        .xlen = 32,
        .operands = &operands_709,
    },
    .{
        .label = "rd_rs1_rs2:mhaccsu_h1:32",
        .text = "mhaccsu.h1 x5, x6, x7",
        .mnemonic = "mhaccsu.h1",
        .xlen = 32,
        .operands = &operands_710,
    },
    .{
        .label = "rd_rs1_rs2:mhaccu:32",
        .text = "mhaccu x5, x6, x7",
        .mnemonic = "mhaccu",
        .xlen = 32,
        .operands = &operands_711,
    },
    .{
        .label = "rd_rs1_rs2:mhracc:32",
        .text = "mhracc x5, x6, x7",
        .mnemonic = "mhracc",
        .xlen = 32,
        .operands = &operands_712,
    },
    .{
        .label = "rd_rs1_rs2:mhraccsu:32",
        .text = "mhraccsu x5, x6, x7",
        .mnemonic = "mhraccsu",
        .xlen = 32,
        .operands = &operands_713,
    },
    .{
        .label = "rd_rs1_rs2:mhraccu:32",
        .text = "mhraccu x5, x6, x7",
        .mnemonic = "mhraccu",
        .xlen = 32,
        .operands = &operands_714,
    },
    .{
        .label = "rd_rs1_rs2:min:64",
        .text = "min x5, x6, x7",
        .mnemonic = "min",
        .xlen = 64,
        .operands = &operands_715,
    },
    .{
        .label = "rd_rs1_rs2:minu:64",
        .text = "minu x5, x6, x7",
        .mnemonic = "minu",
        .xlen = 64,
        .operands = &operands_716,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_0:64",
        .text = "mop.rr.0 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_717,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_1:64",
        .text = "mop.rr.1 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_718,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_2:64",
        .text = "mop.rr.2 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_719,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_3:64",
        .text = "mop.rr.3 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_720,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_4:64",
        .text = "mop.rr.4 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_721,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_5:64",
        .text = "mop.rr.5 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_722,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_6:64",
        .text = "mop.rr.6 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_723,
    },
    .{
        .label = "rd_rs1_rs2:mop_rr_7:64",
        .text = "mop.rr.7 x5, x6, x7",
        .mnemonic = "mop.rr.n",
        .xlen = 64,
        .operands = &operands_724,
    },
    .{
        .label = "rd_rs1_rs2:mqacc_h00:32",
        .text = "mqacc.h00 x5, x6, x7",
        .mnemonic = "mqacc.h00",
        .xlen = 32,
        .operands = &operands_725,
    },
    .{
        .label = "rd_rs1_rs2:mqacc_h01:32",
        .text = "mqacc.h01 x5, x6, x7",
        .mnemonic = "mqacc.h01",
        .xlen = 32,
        .operands = &operands_726,
    },
    .{
        .label = "rd_rs1_rs2:mqacc_h11:32",
        .text = "mqacc.h11 x5, x6, x7",
        .mnemonic = "mqacc.h11",
        .xlen = 32,
        .operands = &operands_727,
    },
    .{
        .label = "rd_rs1_rs2:mqacc_w00:64",
        .text = "mqacc.w00 x5, x6, x7",
        .mnemonic = "mqacc.w00",
        .xlen = 64,
        .operands = &operands_728,
    },
    .{
        .label = "rd_rs1_rs2:mqacc_w01:64",
        .text = "mqacc.w01 x5, x6, x7",
        .mnemonic = "mqacc.w01",
        .xlen = 64,
        .operands = &operands_729,
    },
    .{
        .label = "rd_rs1_rs2:mqacc_w11:64",
        .text = "mqacc.w11 x5, x6, x7",
        .mnemonic = "mqacc.w11",
        .xlen = 64,
        .operands = &operands_730,
    },
    .{
        .label = "rd_rs1_rs2:mqracc_h00:32",
        .text = "mqracc.h00 x5, x6, x7",
        .mnemonic = "mqracc.h00",
        .xlen = 32,
        .operands = &operands_731,
    },
    .{
        .label = "rd_rs1_rs2:mqracc_h01:32",
        .text = "mqracc.h01 x5, x6, x7",
        .mnemonic = "mqracc.h01",
        .xlen = 32,
        .operands = &operands_732,
    },
    .{
        .label = "rd_rs1_rs2:mqracc_h11:32",
        .text = "mqracc.h11 x5, x6, x7",
        .mnemonic = "mqracc.h11",
        .xlen = 32,
        .operands = &operands_733,
    },
    .{
        .label = "rd_rs1_rs2:mqracc_w00:64",
        .text = "mqracc.w00 x5, x6, x7",
        .mnemonic = "mqracc.w00",
        .xlen = 64,
        .operands = &operands_734,
    },
    .{
        .label = "rd_rs1_rs2:mqracc_w01:64",
        .text = "mqracc.w01 x5, x6, x7",
        .mnemonic = "mqracc.w01",
        .xlen = 64,
        .operands = &operands_735,
    },
    .{
        .label = "rd_rs1_rs2:mqracc_w11:64",
        .text = "mqracc.w11 x5, x6, x7",
        .mnemonic = "mqracc.w11",
        .xlen = 64,
        .operands = &operands_736,
    },
    .{
        .label = "rd_rs1_rs2:mseq:32",
        .text = "mseq x5, x6, x7",
        .mnemonic = "mseq",
        .xlen = 32,
        .operands = &operands_737,
    },
    .{
        .label = "rd_rs1_rs2:mslt:32",
        .text = "mslt x5, x6, x7",
        .mnemonic = "mslt",
        .xlen = 32,
        .operands = &operands_738,
    },
    .{
        .label = "rd_rs1_rs2:msltu:32",
        .text = "msltu x5, x6, x7",
        .mnemonic = "msltu",
        .xlen = 32,
        .operands = &operands_739,
    },
    .{
        .label = "rd_rs1_rs2:mul:64",
        .text = "mul x5, x6, x7",
        .mnemonic = "mul",
        .xlen = 64,
        .operands = &operands_740,
    },
    .{
        .label = "rd_rs1_rs2:mul_h00:32",
        .text = "mul.h00 x5, x6, x7",
        .mnemonic = "mul.h00",
        .xlen = 32,
        .operands = &operands_741,
    },
    .{
        .label = "rd_rs1_rs2:mul_h01:32",
        .text = "mul.h01 x5, x6, x7",
        .mnemonic = "mul.h01",
        .xlen = 32,
        .operands = &operands_742,
    },
    .{
        .label = "rd_rs1_rs2:mul_h11:32",
        .text = "mul.h11 x5, x6, x7",
        .mnemonic = "mul.h11",
        .xlen = 32,
        .operands = &operands_743,
    },
    .{
        .label = "rd_rs1_rs2:mul_w00:64",
        .text = "mul.w00 x5, x6, x7",
        .mnemonic = "mul.w00",
        .xlen = 64,
        .operands = &operands_744,
    },
    .{
        .label = "rd_rs1_rs2:mul_w01:64",
        .text = "mul.w01 x5, x6, x7",
        .mnemonic = "mul.w01",
        .xlen = 64,
        .operands = &operands_745,
    },
    .{
        .label = "rd_rs1_rs2:mul_w11:64",
        .text = "mul.w11 x5, x6, x7",
        .mnemonic = "mul.w11",
        .xlen = 64,
        .operands = &operands_746,
    },
    .{
        .label = "rd_rs1_rs2:mulh:64",
        .text = "mulh x5, x6, x7",
        .mnemonic = "mulh",
        .xlen = 64,
        .operands = &operands_747,
    },
    .{
        .label = "rd_rs1_rs2:mulh_h0:32",
        .text = "mulh.h0 x5, x6, x7",
        .mnemonic = "mulh.h0",
        .xlen = 32,
        .operands = &operands_748,
    },
    .{
        .label = "rd_rs1_rs2:mulh_h1:32",
        .text = "mulh.h1 x5, x6, x7",
        .mnemonic = "mulh.h1",
        .xlen = 32,
        .operands = &operands_749,
    },
    .{
        .label = "rd_rs1_rs2:mulhr:32",
        .text = "mulhr x5, x6, x7",
        .mnemonic = "mulhr",
        .xlen = 32,
        .operands = &operands_750,
    },
    .{
        .label = "rd_rs1_rs2:mulhrsu:32",
        .text = "mulhrsu x5, x6, x7",
        .mnemonic = "mulhrsu",
        .xlen = 32,
        .operands = &operands_751,
    },
    .{
        .label = "rd_rs1_rs2:mulhru:32",
        .text = "mulhru x5, x6, x7",
        .mnemonic = "mulhru",
        .xlen = 32,
        .operands = &operands_752,
    },
    .{
        .label = "rd_rs1_rs2:mulhsu:64",
        .text = "mulhsu x5, x6, x7",
        .mnemonic = "mulhsu",
        .xlen = 64,
        .operands = &operands_753,
    },
    .{
        .label = "rd_rs1_rs2:mulhsu_h0:32",
        .text = "mulhsu.h0 x5, x6, x7",
        .mnemonic = "mulhsu.h0",
        .xlen = 32,
        .operands = &operands_754,
    },
    .{
        .label = "rd_rs1_rs2:mulhsu_h1:32",
        .text = "mulhsu.h1 x5, x6, x7",
        .mnemonic = "mulhsu.h1",
        .xlen = 32,
        .operands = &operands_755,
    },
    .{
        .label = "rd_rs1_rs2:mulhu:64",
        .text = "mulhu x5, x6, x7",
        .mnemonic = "mulhu",
        .xlen = 64,
        .operands = &operands_756,
    },
    .{
        .label = "rd_rs1_rs2:mulq:32",
        .text = "mulq x5, x6, x7",
        .mnemonic = "mulq",
        .xlen = 32,
        .operands = &operands_757,
    },
    .{
        .label = "rd_rs1_rs2:mulqr:32",
        .text = "mulqr x5, x6, x7",
        .mnemonic = "mulqr",
        .xlen = 32,
        .operands = &operands_758,
    },
    .{
        .label = "rd_rs1_rs2:mulsu_h00:32",
        .text = "mulsu.h00 x5, x6, x7",
        .mnemonic = "mulsu.h00",
        .xlen = 32,
        .operands = &operands_759,
    },
    .{
        .label = "rd_rs1_rs2:mulsu_h11:32",
        .text = "mulsu.h11 x5, x6, x7",
        .mnemonic = "mulsu.h11",
        .xlen = 32,
        .operands = &operands_760,
    },
    .{
        .label = "rd_rs1_rs2:mulsu_w00:64",
        .text = "mulsu.w00 x5, x6, x7",
        .mnemonic = "mulsu.w00",
        .xlen = 64,
        .operands = &operands_761,
    },
    .{
        .label = "rd_rs1_rs2:mulsu_w11:64",
        .text = "mulsu.w11 x5, x6, x7",
        .mnemonic = "mulsu.w11",
        .xlen = 64,
        .operands = &operands_762,
    },
    .{
        .label = "rd_rs1_rs2:mulu_h00:32",
        .text = "mulu.h00 x5, x6, x7",
        .mnemonic = "mulu.h00",
        .xlen = 32,
        .operands = &operands_763,
    },
    .{
        .label = "rd_rs1_rs2:mulu_h01:32",
        .text = "mulu.h01 x5, x6, x7",
        .mnemonic = "mulu.h01",
        .xlen = 32,
        .operands = &operands_764,
    },
    .{
        .label = "rd_rs1_rs2:mulu_h11:32",
        .text = "mulu.h11 x5, x6, x7",
        .mnemonic = "mulu.h11",
        .xlen = 32,
        .operands = &operands_765,
    },
    .{
        .label = "rd_rs1_rs2:mulu_w00:64",
        .text = "mulu.w00 x5, x6, x7",
        .mnemonic = "mulu.w00",
        .xlen = 64,
        .operands = &operands_766,
    },
    .{
        .label = "rd_rs1_rs2:mulu_w01:64",
        .text = "mulu.w01 x5, x6, x7",
        .mnemonic = "mulu.w01",
        .xlen = 64,
        .operands = &operands_767,
    },
    .{
        .label = "rd_rs1_rs2:mulu_w11:64",
        .text = "mulu.w11 x5, x6, x7",
        .mnemonic = "mulu.w11",
        .xlen = 64,
        .operands = &operands_768,
    },
    .{
        .label = "rd_rs1_rs2:mulw:64",
        .text = "mulw x5, x6, x7",
        .mnemonic = "mulw",
        .xlen = 64,
        .operands = &operands_769,
    },
    .{
        .label = "rd_rs1_rs2:mvm:64",
        .text = "mvm x5, x6, x7",
        .mnemonic = "mvm",
        .xlen = 64,
        .operands = &operands_770,
    },
    .{
        .label = "rd_rs1_rs2:mvmn:64",
        .text = "mvmn x5, x6, x7",
        .mnemonic = "mvmn",
        .xlen = 64,
        .operands = &operands_771,
    },
    .{
        .label = "rd_rs1_rs2:or:64",
        .text = "or x5, x6, x7",
        .mnemonic = "or",
        .xlen = 64,
        .operands = &operands_772,
    },
    .{
        .label = "rd_rs1_rs2:orn:64",
        .text = "orn x5, x6, x7",
        .mnemonic = "orn",
        .xlen = 64,
        .operands = &operands_773,
    },
    .{
        .label = "rd_rs1_rs2:paadd_b:64",
        .text = "paadd.b x5, x6, x7",
        .mnemonic = "paadd.b",
        .xlen = 64,
        .operands = &operands_774,
    },
    .{
        .label = "rd_rs1_rs2:paadd_h:64",
        .text = "paadd.h x5, x6, x7",
        .mnemonic = "paadd.h",
        .xlen = 64,
        .operands = &operands_775,
    },
    .{
        .label = "rd_rs1_rs2:paadd_w:64",
        .text = "paadd.w x5, x6, x7",
        .mnemonic = "paadd.w",
        .xlen = 64,
        .operands = &operands_776,
    },
    .{
        .label = "rd_rs1_rs2:paaddu_b:64",
        .text = "paaddu.b x5, x6, x7",
        .mnemonic = "paaddu.b",
        .xlen = 64,
        .operands = &operands_777,
    },
    .{
        .label = "rd_rs1_rs2:paaddu_h:64",
        .text = "paaddu.h x5, x6, x7",
        .mnemonic = "paaddu.h",
        .xlen = 64,
        .operands = &operands_778,
    },
    .{
        .label = "rd_rs1_rs2:paaddu_w:64",
        .text = "paaddu.w x5, x6, x7",
        .mnemonic = "paaddu.w",
        .xlen = 64,
        .operands = &operands_779,
    },
    .{
        .label = "rd_rs1_rs2:paas_hx:64",
        .text = "paas.hx x5, x6, x7",
        .mnemonic = "paas.hx",
        .xlen = 64,
        .operands = &operands_780,
    },
    .{
        .label = "rd_rs1_rs2:paas_wx:64",
        .text = "paas.wx x5, x6, x7",
        .mnemonic = "paas.wx",
        .xlen = 64,
        .operands = &operands_781,
    },
    .{
        .label = "rd_rs1_rs2:pabd_b:64",
        .text = "pabd.b x5, x6, x7",
        .mnemonic = "pabd.b",
        .xlen = 64,
        .operands = &operands_782,
    },
    .{
        .label = "rd_rs1_rs2:pabd_h:64",
        .text = "pabd.h x5, x6, x7",
        .mnemonic = "pabd.h",
        .xlen = 64,
        .operands = &operands_783,
    },
    .{
        .label = "rd_rs1_rs2:pabdsumau_b:64",
        .text = "pabdsumau.b x5, x6, x7",
        .mnemonic = "pabdsumau.b",
        .xlen = 64,
        .operands = &operands_784,
    },
    .{
        .label = "rd_rs1_rs2:pabdsumu_b:64",
        .text = "pabdsumu.b x5, x6, x7",
        .mnemonic = "pabdsumu.b",
        .xlen = 64,
        .operands = &operands_785,
    },
    .{
        .label = "rd_rs1_rs2:pabdu_b:64",
        .text = "pabdu.b x5, x6, x7",
        .mnemonic = "pabdu.b",
        .xlen = 64,
        .operands = &operands_786,
    },
    .{
        .label = "rd_rs1_rs2:pabdu_h:64",
        .text = "pabdu.h x5, x6, x7",
        .mnemonic = "pabdu.h",
        .xlen = 64,
        .operands = &operands_787,
    },
    .{
        .label = "rd_rs1_rs2:pack:64",
        .text = "pack x5, x6, x7",
        .mnemonic = "pack",
        .xlen = 64,
        .operands = &operands_788,
    },
    .{
        .label = "rd_rs1_rs2:packh:64",
        .text = "packh x5, x6, x7",
        .mnemonic = "packh",
        .xlen = 64,
        .operands = &operands_789,
    },
    .{
        .label = "rd_rs1_rs2:packw:64",
        .text = "packw x5, x6, x7",
        .mnemonic = "packw",
        .xlen = 64,
        .operands = &operands_790,
    },
    .{
        .label = "rd_rs1_rs2:padd_b:64",
        .text = "padd.b x5, x6, x7",
        .mnemonic = "padd.b",
        .xlen = 64,
        .operands = &operands_791,
    },
    .{
        .label = "rd_rs1_rs2:padd_bs:64",
        .text = "padd.bs x5, x6, x7",
        .mnemonic = "padd.bs",
        .xlen = 64,
        .operands = &operands_792,
    },
    .{
        .label = "rd_rs1_rs2:padd_h:64",
        .text = "padd.h x5, x6, x7",
        .mnemonic = "padd.h",
        .xlen = 64,
        .operands = &operands_793,
    },
    .{
        .label = "rd_rs1_rs2:padd_hs:64",
        .text = "padd.hs x5, x6, x7",
        .mnemonic = "padd.hs",
        .xlen = 64,
        .operands = &operands_794,
    },
    .{
        .label = "rd_rs1_rs2:padd_w:64",
        .text = "padd.w x5, x6, x7",
        .mnemonic = "padd.w",
        .xlen = 64,
        .operands = &operands_795,
    },
    .{
        .label = "rd_rs1_rs2:padd_ws:64",
        .text = "padd.ws x5, x6, x7",
        .mnemonic = "padd.ws",
        .xlen = 64,
        .operands = &operands_796,
    },
    .{
        .label = "rd_rs1_rs2:pas_hx:64",
        .text = "pas.hx x5, x6, x7",
        .mnemonic = "pas.hx",
        .xlen = 64,
        .operands = &operands_797,
    },
    .{
        .label = "rd_rs1_rs2:pas_wx:64",
        .text = "pas.wx x5, x6, x7",
        .mnemonic = "pas.wx",
        .xlen = 64,
        .operands = &operands_798,
    },
    .{
        .label = "rd_rs1_rs2:pasa_hx:64",
        .text = "pasa.hx x5, x6, x7",
        .mnemonic = "pasa.hx",
        .xlen = 64,
        .operands = &operands_799,
    },
    .{
        .label = "rd_rs1_rs2:pasa_wx:64",
        .text = "pasa.wx x5, x6, x7",
        .mnemonic = "pasa.wx",
        .xlen = 64,
        .operands = &operands_800,
    },
    .{
        .label = "rd_rs1_rs2:pasub_b:64",
        .text = "pasub.b x5, x6, x7",
        .mnemonic = "pasub.b",
        .xlen = 64,
        .operands = &operands_801,
    },
    .{
        .label = "rd_rs1_rs2:pasub_h:64",
        .text = "pasub.h x5, x6, x7",
        .mnemonic = "pasub.h",
        .xlen = 64,
        .operands = &operands_802,
    },
    .{
        .label = "rd_rs1_rs2:pasub_w:64",
        .text = "pasub.w x5, x6, x7",
        .mnemonic = "pasub.w",
        .xlen = 64,
        .operands = &operands_803,
    },
    .{
        .label = "rd_rs1_rs2:pasubu_b:64",
        .text = "pasubu.b x5, x6, x7",
        .mnemonic = "pasubu.b",
        .xlen = 64,
        .operands = &operands_804,
    },
    .{
        .label = "rd_rs1_rs2:pasubu_h:64",
        .text = "pasubu.h x5, x6, x7",
        .mnemonic = "pasubu.h",
        .xlen = 64,
        .operands = &operands_805,
    },
    .{
        .label = "rd_rs1_rs2:pasubu_w:64",
        .text = "pasubu.w x5, x6, x7",
        .mnemonic = "pasubu.w",
        .xlen = 64,
        .operands = &operands_806,
    },
    .{
        .label = "rd_rs1_rs2:pm2add_h:64",
        .text = "pm2add.h x5, x6, x7",
        .mnemonic = "pm2add.h",
        .xlen = 64,
        .operands = &operands_807,
    },
    .{
        .label = "rd_rs1_rs2:pm2add_hx:64",
        .text = "pm2add.hx x5, x6, x7",
        .mnemonic = "pm2add.hx",
        .xlen = 64,
        .operands = &operands_808,
    },
    .{
        .label = "rd_rs1_rs2:pm2add_w:64",
        .text = "pm2add.w x5, x6, x7",
        .mnemonic = "pm2add.w",
        .xlen = 64,
        .operands = &operands_809,
    },
    .{
        .label = "rd_rs1_rs2:pm2add_wx:64",
        .text = "pm2add.wx x5, x6, x7",
        .mnemonic = "pm2add.wx",
        .xlen = 64,
        .operands = &operands_810,
    },
    .{
        .label = "rd_rs1_rs2:pm2adda_h:64",
        .text = "pm2adda.h x5, x6, x7",
        .mnemonic = "pm2adda.h",
        .xlen = 64,
        .operands = &operands_811,
    },
    .{
        .label = "rd_rs1_rs2:pm2adda_hx:64",
        .text = "pm2adda.hx x5, x6, x7",
        .mnemonic = "pm2adda.hx",
        .xlen = 64,
        .operands = &operands_812,
    },
    .{
        .label = "rd_rs1_rs2:pm2adda_w:64",
        .text = "pm2adda.w x5, x6, x7",
        .mnemonic = "pm2adda.w",
        .xlen = 64,
        .operands = &operands_813,
    },
    .{
        .label = "rd_rs1_rs2:pm2adda_wx:64",
        .text = "pm2adda.wx x5, x6, x7",
        .mnemonic = "pm2adda.wx",
        .xlen = 64,
        .operands = &operands_814,
    },
    .{
        .label = "rd_rs1_rs2:pm2addasu_h:64",
        .text = "pm2addasu.h x5, x6, x7",
        .mnemonic = "pm2addasu.h",
        .xlen = 64,
        .operands = &operands_815,
    },
    .{
        .label = "rd_rs1_rs2:pm2addasu_w:64",
        .text = "pm2addasu.w x5, x6, x7",
        .mnemonic = "pm2addasu.w",
        .xlen = 64,
        .operands = &operands_816,
    },
    .{
        .label = "rd_rs1_rs2:pm2addau_h:64",
        .text = "pm2addau.h x5, x6, x7",
        .mnemonic = "pm2addau.h",
        .xlen = 64,
        .operands = &operands_817,
    },
    .{
        .label = "rd_rs1_rs2:pm2addau_w:64",
        .text = "pm2addau.w x5, x6, x7",
        .mnemonic = "pm2addau.w",
        .xlen = 64,
        .operands = &operands_818,
    },
    .{
        .label = "rd_rs1_rs2:pm2addsu_h:64",
        .text = "pm2addsu.h x5, x6, x7",
        .mnemonic = "pm2addsu.h",
        .xlen = 64,
        .operands = &operands_819,
    },
    .{
        .label = "rd_rs1_rs2:pm2addsu_w:64",
        .text = "pm2addsu.w x5, x6, x7",
        .mnemonic = "pm2addsu.w",
        .xlen = 64,
        .operands = &operands_820,
    },
    .{
        .label = "rd_rs1_rs2:pm2addu_h:64",
        .text = "pm2addu.h x5, x6, x7",
        .mnemonic = "pm2addu.h",
        .xlen = 64,
        .operands = &operands_821,
    },
    .{
        .label = "rd_rs1_rs2:pm2addu_w:64",
        .text = "pm2addu.w x5, x6, x7",
        .mnemonic = "pm2addu.w",
        .xlen = 64,
        .operands = &operands_822,
    },
    .{
        .label = "rd_rs1_rs2:pm2sadd_h:64",
        .text = "pm2sadd.h x5, x6, x7",
        .mnemonic = "pm2sadd.h",
        .xlen = 64,
        .operands = &operands_823,
    },
    .{
        .label = "rd_rs1_rs2:pm2sadd_hx:64",
        .text = "pm2sadd.hx x5, x6, x7",
        .mnemonic = "pm2sadd.hx",
        .xlen = 64,
        .operands = &operands_824,
    },
    .{
        .label = "rd_rs1_rs2:pm2sub_h:64",
        .text = "pm2sub.h x5, x6, x7",
        .mnemonic = "pm2sub.h",
        .xlen = 64,
        .operands = &operands_825,
    },
    .{
        .label = "rd_rs1_rs2:pm2sub_hx:64",
        .text = "pm2sub.hx x5, x6, x7",
        .mnemonic = "pm2sub.hx",
        .xlen = 64,
        .operands = &operands_826,
    },
    .{
        .label = "rd_rs1_rs2:pm2sub_w:64",
        .text = "pm2sub.w x5, x6, x7",
        .mnemonic = "pm2sub.w",
        .xlen = 64,
        .operands = &operands_827,
    },
    .{
        .label = "rd_rs1_rs2:pm2sub_wx:64",
        .text = "pm2sub.wx x5, x6, x7",
        .mnemonic = "pm2sub.wx",
        .xlen = 64,
        .operands = &operands_828,
    },
    .{
        .label = "rd_rs1_rs2:pm2suba_h:64",
        .text = "pm2suba.h x5, x6, x7",
        .mnemonic = "pm2suba.h",
        .xlen = 64,
        .operands = &operands_829,
    },
    .{
        .label = "rd_rs1_rs2:pm2suba_hx:64",
        .text = "pm2suba.hx x5, x6, x7",
        .mnemonic = "pm2suba.hx",
        .xlen = 64,
        .operands = &operands_830,
    },
    .{
        .label = "rd_rs1_rs2:pm2suba_w:64",
        .text = "pm2suba.w x5, x6, x7",
        .mnemonic = "pm2suba.w",
        .xlen = 64,
        .operands = &operands_831,
    },
    .{
        .label = "rd_rs1_rs2:pm2suba_wx:64",
        .text = "pm2suba.wx x5, x6, x7",
        .mnemonic = "pm2suba.wx",
        .xlen = 64,
        .operands = &operands_832,
    },
    .{
        .label = "rd_rs1_rs2:pm4add_b:64",
        .text = "pm4add.b x5, x6, x7",
        .mnemonic = "pm4add.b",
        .xlen = 64,
        .operands = &operands_833,
    },
    .{
        .label = "rd_rs1_rs2:pm4add_h:64",
        .text = "pm4add.h x5, x6, x7",
        .mnemonic = "pm4add.h",
        .xlen = 64,
        .operands = &operands_834,
    },
    .{
        .label = "rd_rs1_rs2:pm4adda_b:64",
        .text = "pm4adda.b x5, x6, x7",
        .mnemonic = "pm4adda.b",
        .xlen = 64,
        .operands = &operands_835,
    },
    .{
        .label = "rd_rs1_rs2:pm4adda_h:64",
        .text = "pm4adda.h x5, x6, x7",
        .mnemonic = "pm4adda.h",
        .xlen = 64,
        .operands = &operands_836,
    },
    .{
        .label = "rd_rs1_rs2:pm4addasu_b:64",
        .text = "pm4addasu.b x5, x6, x7",
        .mnemonic = "pm4addasu.b",
        .xlen = 64,
        .operands = &operands_837,
    },
    .{
        .label = "rd_rs1_rs2:pm4addasu_h:64",
        .text = "pm4addasu.h x5, x6, x7",
        .mnemonic = "pm4addasu.h",
        .xlen = 64,
        .operands = &operands_838,
    },
    .{
        .label = "rd_rs1_rs2:pm4addau_b:64",
        .text = "pm4addau.b x5, x6, x7",
        .mnemonic = "pm4addau.b",
        .xlen = 64,
        .operands = &operands_839,
    },
    .{
        .label = "rd_rs1_rs2:pm4addau_h:64",
        .text = "pm4addau.h x5, x6, x7",
        .mnemonic = "pm4addau.h",
        .xlen = 64,
        .operands = &operands_840,
    },
    .{
        .label = "rd_rs1_rs2:pm4addsu_b:64",
        .text = "pm4addsu.b x5, x6, x7",
        .mnemonic = "pm4addsu.b",
        .xlen = 64,
        .operands = &operands_841,
    },
    .{
        .label = "rd_rs1_rs2:pm4addsu_h:64",
        .text = "pm4addsu.h x5, x6, x7",
        .mnemonic = "pm4addsu.h",
        .xlen = 64,
        .operands = &operands_842,
    },
    .{
        .label = "rd_rs1_rs2:pm4addu_b:64",
        .text = "pm4addu.b x5, x6, x7",
        .mnemonic = "pm4addu.b",
        .xlen = 64,
        .operands = &operands_843,
    },
    .{
        .label = "rd_rs1_rs2:pm4addu_h:64",
        .text = "pm4addu.h x5, x6, x7",
        .mnemonic = "pm4addu.h",
        .xlen = 64,
        .operands = &operands_844,
    },
    .{
        .label = "rd_rs1_rs2:pmacc_w_h00:64",
        .text = "pmacc.w.h00 x5, x6, x7",
        .mnemonic = "pmacc.w.h00",
        .xlen = 64,
        .operands = &operands_845,
    },
    .{
        .label = "rd_rs1_rs2:pmacc_w_h01:64",
        .text = "pmacc.w.h01 x5, x6, x7",
        .mnemonic = "pmacc.w.h01",
        .xlen = 64,
        .operands = &operands_846,
    },
    .{
        .label = "rd_rs1_rs2:pmacc_w_h11:64",
        .text = "pmacc.w.h11 x5, x6, x7",
        .mnemonic = "pmacc.w.h11",
        .xlen = 64,
        .operands = &operands_847,
    },
    .{
        .label = "rd_rs1_rs2:pmaccsu_w_h00:64",
        .text = "pmaccsu.w.h00 x5, x6, x7",
        .mnemonic = "pmaccsu.w.h00",
        .xlen = 64,
        .operands = &operands_848,
    },
    .{
        .label = "rd_rs1_rs2:pmaccsu_w_h11:64",
        .text = "pmaccsu.w.h11 x5, x6, x7",
        .mnemonic = "pmaccsu.w.h11",
        .xlen = 64,
        .operands = &operands_849,
    },
    .{
        .label = "rd_rs1_rs2:pmaccu_w_h00:64",
        .text = "pmaccu.w.h00 x5, x6, x7",
        .mnemonic = "pmaccu.w.h00",
        .xlen = 64,
        .operands = &operands_850,
    },
    .{
        .label = "rd_rs1_rs2:pmaccu_w_h01:64",
        .text = "pmaccu.w.h01 x5, x6, x7",
        .mnemonic = "pmaccu.w.h01",
        .xlen = 64,
        .operands = &operands_851,
    },
    .{
        .label = "rd_rs1_rs2:pmaccu_w_h11:64",
        .text = "pmaccu.w.h11 x5, x6, x7",
        .mnemonic = "pmaccu.w.h11",
        .xlen = 64,
        .operands = &operands_852,
    },
    .{
        .label = "rd_rs1_rs2:pmax_b:64",
        .text = "pmax.b x5, x6, x7",
        .mnemonic = "pmax.b",
        .xlen = 64,
        .operands = &operands_853,
    },
    .{
        .label = "rd_rs1_rs2:pmax_h:64",
        .text = "pmax.h x5, x6, x7",
        .mnemonic = "pmax.h",
        .xlen = 64,
        .operands = &operands_854,
    },
    .{
        .label = "rd_rs1_rs2:pmax_w:64",
        .text = "pmax.w x5, x6, x7",
        .mnemonic = "pmax.w",
        .xlen = 64,
        .operands = &operands_855,
    },
    .{
        .label = "rd_rs1_rs2:pmaxu_b:64",
        .text = "pmaxu.b x5, x6, x7",
        .mnemonic = "pmaxu.b",
        .xlen = 64,
        .operands = &operands_856,
    },
    .{
        .label = "rd_rs1_rs2:pmaxu_h:64",
        .text = "pmaxu.h x5, x6, x7",
        .mnemonic = "pmaxu.h",
        .xlen = 64,
        .operands = &operands_857,
    },
    .{
        .label = "rd_rs1_rs2:pmaxu_w:64",
        .text = "pmaxu.w x5, x6, x7",
        .mnemonic = "pmaxu.w",
        .xlen = 64,
        .operands = &operands_858,
    },
    .{
        .label = "rd_rs1_rs2:pmhacc_h:64",
        .text = "pmhacc.h x5, x6, x7",
        .mnemonic = "pmhacc.h",
        .xlen = 64,
        .operands = &operands_859,
    },
    .{
        .label = "rd_rs1_rs2:pmhacc_h_b0:64",
        .text = "pmhacc.h.b0 x5, x6, x7",
        .mnemonic = "pmhacc.h.b0",
        .xlen = 64,
        .operands = &operands_860,
    },
    .{
        .label = "rd_rs1_rs2:pmhacc_h_b1:64",
        .text = "pmhacc.h.b1 x5, x6, x7",
        .mnemonic = "pmhacc.h.b1",
        .xlen = 64,
        .operands = &operands_861,
    },
    .{
        .label = "rd_rs1_rs2:pmhacc_w:64",
        .text = "pmhacc.w x5, x6, x7",
        .mnemonic = "pmhacc.w",
        .xlen = 64,
        .operands = &operands_862,
    },
    .{
        .label = "rd_rs1_rs2:pmhacc_w_h0:64",
        .text = "pmhacc.w.h0 x5, x6, x7",
        .mnemonic = "pmhacc.w.h0",
        .xlen = 64,
        .operands = &operands_863,
    },
    .{
        .label = "rd_rs1_rs2:pmhacc_w_h1:64",
        .text = "pmhacc.w.h1 x5, x6, x7",
        .mnemonic = "pmhacc.w.h1",
        .xlen = 64,
        .operands = &operands_864,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccsu_h:64",
        .text = "pmhaccsu.h x5, x6, x7",
        .mnemonic = "pmhaccsu.h",
        .xlen = 64,
        .operands = &operands_865,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccsu_h_b0:64",
        .text = "pmhaccsu.h.b0 x5, x6, x7",
        .mnemonic = "pmhaccsu.h.b0",
        .xlen = 64,
        .operands = &operands_866,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccsu_h_b1:64",
        .text = "pmhaccsu.h.b1 x5, x6, x7",
        .mnemonic = "pmhaccsu.h.b1",
        .xlen = 64,
        .operands = &operands_867,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccsu_w:64",
        .text = "pmhaccsu.w x5, x6, x7",
        .mnemonic = "pmhaccsu.w",
        .xlen = 64,
        .operands = &operands_868,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccsu_w_h0:64",
        .text = "pmhaccsu.w.h0 x5, x6, x7",
        .mnemonic = "pmhaccsu.w.h0",
        .xlen = 64,
        .operands = &operands_869,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccsu_w_h1:64",
        .text = "pmhaccsu.w.h1 x5, x6, x7",
        .mnemonic = "pmhaccsu.w.h1",
        .xlen = 64,
        .operands = &operands_870,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccu_h:64",
        .text = "pmhaccu.h x5, x6, x7",
        .mnemonic = "pmhaccu.h",
        .xlen = 64,
        .operands = &operands_871,
    },
    .{
        .label = "rd_rs1_rs2:pmhaccu_w:64",
        .text = "pmhaccu.w x5, x6, x7",
        .mnemonic = "pmhaccu.w",
        .xlen = 64,
        .operands = &operands_872,
    },
    .{
        .label = "rd_rs1_rs2:pmhracc_h:64",
        .text = "pmhracc.h x5, x6, x7",
        .mnemonic = "pmhracc.h",
        .xlen = 64,
        .operands = &operands_873,
    },
    .{
        .label = "rd_rs1_rs2:pmhracc_w:64",
        .text = "pmhracc.w x5, x6, x7",
        .mnemonic = "pmhracc.w",
        .xlen = 64,
        .operands = &operands_874,
    },
    .{
        .label = "rd_rs1_rs2:pmhraccsu_h:64",
        .text = "pmhraccsu.h x5, x6, x7",
        .mnemonic = "pmhraccsu.h",
        .xlen = 64,
        .operands = &operands_875,
    },
    .{
        .label = "rd_rs1_rs2:pmhraccsu_w:64",
        .text = "pmhraccsu.w x5, x6, x7",
        .mnemonic = "pmhraccsu.w",
        .xlen = 64,
        .operands = &operands_876,
    },
    .{
        .label = "rd_rs1_rs2:pmhraccu_h:64",
        .text = "pmhraccu.h x5, x6, x7",
        .mnemonic = "pmhraccu.h",
        .xlen = 64,
        .operands = &operands_877,
    },
    .{
        .label = "rd_rs1_rs2:pmhraccu_w:64",
        .text = "pmhraccu.w x5, x6, x7",
        .mnemonic = "pmhraccu.w",
        .xlen = 64,
        .operands = &operands_878,
    },
    .{
        .label = "rd_rs1_rs2:pmin_b:64",
        .text = "pmin.b x5, x6, x7",
        .mnemonic = "pmin.b",
        .xlen = 64,
        .operands = &operands_879,
    },
    .{
        .label = "rd_rs1_rs2:pmin_h:64",
        .text = "pmin.h x5, x6, x7",
        .mnemonic = "pmin.h",
        .xlen = 64,
        .operands = &operands_880,
    },
    .{
        .label = "rd_rs1_rs2:pmin_w:64",
        .text = "pmin.w x5, x6, x7",
        .mnemonic = "pmin.w",
        .xlen = 64,
        .operands = &operands_881,
    },
    .{
        .label = "rd_rs1_rs2:pminu_b:64",
        .text = "pminu.b x5, x6, x7",
        .mnemonic = "pminu.b",
        .xlen = 64,
        .operands = &operands_882,
    },
    .{
        .label = "rd_rs1_rs2:pminu_h:64",
        .text = "pminu.h x5, x6, x7",
        .mnemonic = "pminu.h",
        .xlen = 64,
        .operands = &operands_883,
    },
    .{
        .label = "rd_rs1_rs2:pminu_w:64",
        .text = "pminu.w x5, x6, x7",
        .mnemonic = "pminu.w",
        .xlen = 64,
        .operands = &operands_884,
    },
    .{
        .label = "rd_rs1_rs2:pmq2add_h:64",
        .text = "pmq2add.h x5, x6, x7",
        .mnemonic = "pmq2add.h",
        .xlen = 64,
        .operands = &operands_885,
    },
    .{
        .label = "rd_rs1_rs2:pmq2add_w:64",
        .text = "pmq2add.w x5, x6, x7",
        .mnemonic = "pmq2add.w",
        .xlen = 64,
        .operands = &operands_886,
    },
    .{
        .label = "rd_rs1_rs2:pmq2adda_h:64",
        .text = "pmq2adda.h x5, x6, x7",
        .mnemonic = "pmq2adda.h",
        .xlen = 64,
        .operands = &operands_887,
    },
    .{
        .label = "rd_rs1_rs2:pmq2adda_w:64",
        .text = "pmq2adda.w x5, x6, x7",
        .mnemonic = "pmq2adda.w",
        .xlen = 64,
        .operands = &operands_888,
    },
    .{
        .label = "rd_rs1_rs2:pmqacc_w_h00:64",
        .text = "pmqacc.w.h00 x5, x6, x7",
        .mnemonic = "pmqacc.w.h00",
        .xlen = 64,
        .operands = &operands_889,
    },
    .{
        .label = "rd_rs1_rs2:pmqacc_w_h01:64",
        .text = "pmqacc.w.h01 x5, x6, x7",
        .mnemonic = "pmqacc.w.h01",
        .xlen = 64,
        .operands = &operands_890,
    },
    .{
        .label = "rd_rs1_rs2:pmqacc_w_h11:64",
        .text = "pmqacc.w.h11 x5, x6, x7",
        .mnemonic = "pmqacc.w.h11",
        .xlen = 64,
        .operands = &operands_891,
    },
    .{
        .label = "rd_rs1_rs2:pmqr2add_h:64",
        .text = "pmqr2add.h x5, x6, x7",
        .mnemonic = "pmqr2add.h",
        .xlen = 64,
        .operands = &operands_892,
    },
    .{
        .label = "rd_rs1_rs2:pmqr2add_w:64",
        .text = "pmqr2add.w x5, x6, x7",
        .mnemonic = "pmqr2add.w",
        .xlen = 64,
        .operands = &operands_893,
    },
    .{
        .label = "rd_rs1_rs2:pmqr2adda_h:64",
        .text = "pmqr2adda.h x5, x6, x7",
        .mnemonic = "pmqr2adda.h",
        .xlen = 64,
        .operands = &operands_894,
    },
    .{
        .label = "rd_rs1_rs2:pmqr2adda_w:64",
        .text = "pmqr2adda.w x5, x6, x7",
        .mnemonic = "pmqr2adda.w",
        .xlen = 64,
        .operands = &operands_895,
    },
    .{
        .label = "rd_rs1_rs2:pmqracc_w_h00:64",
        .text = "pmqracc.w.h00 x5, x6, x7",
        .mnemonic = "pmqracc.w.h00",
        .xlen = 64,
        .operands = &operands_896,
    },
    .{
        .label = "rd_rs1_rs2:pmqracc_w_h01:64",
        .text = "pmqracc.w.h01 x5, x6, x7",
        .mnemonic = "pmqracc.w.h01",
        .xlen = 64,
        .operands = &operands_897,
    },
    .{
        .label = "rd_rs1_rs2:pmqracc_w_h11:64",
        .text = "pmqracc.w.h11 x5, x6, x7",
        .mnemonic = "pmqracc.w.h11",
        .xlen = 64,
        .operands = &operands_898,
    },
    .{
        .label = "rd_rs1_rs2:pmseq_b:64",
        .text = "pmseq.b x5, x6, x7",
        .mnemonic = "pmseq.b",
        .xlen = 64,
        .operands = &operands_899,
    },
    .{
        .label = "rd_rs1_rs2:pmseq_h:64",
        .text = "pmseq.h x5, x6, x7",
        .mnemonic = "pmseq.h",
        .xlen = 64,
        .operands = &operands_900,
    },
    .{
        .label = "rd_rs1_rs2:pmseq_w:64",
        .text = "pmseq.w x5, x6, x7",
        .mnemonic = "pmseq.w",
        .xlen = 64,
        .operands = &operands_901,
    },
    .{
        .label = "rd_rs1_rs2:pmslt_b:64",
        .text = "pmslt.b x5, x6, x7",
        .mnemonic = "pmslt.b",
        .xlen = 64,
        .operands = &operands_902,
    },
    .{
        .label = "rd_rs1_rs2:pmslt_h:64",
        .text = "pmslt.h x5, x6, x7",
        .mnemonic = "pmslt.h",
        .xlen = 64,
        .operands = &operands_903,
    },
    .{
        .label = "rd_rs1_rs2:pmslt_w:64",
        .text = "pmslt.w x5, x6, x7",
        .mnemonic = "pmslt.w",
        .xlen = 64,
        .operands = &operands_904,
    },
    .{
        .label = "rd_rs1_rs2:pmsltu_b:64",
        .text = "pmsltu.b x5, x6, x7",
        .mnemonic = "pmsltu.b",
        .xlen = 64,
        .operands = &operands_905,
    },
    .{
        .label = "rd_rs1_rs2:pmsltu_h:64",
        .text = "pmsltu.h x5, x6, x7",
        .mnemonic = "pmsltu.h",
        .xlen = 64,
        .operands = &operands_906,
    },
    .{
        .label = "rd_rs1_rs2:pmsltu_w:64",
        .text = "pmsltu.w x5, x6, x7",
        .mnemonic = "pmsltu.w",
        .xlen = 64,
        .operands = &operands_907,
    },
    .{
        .label = "rd_rs1_rs2:pmul_h_b00:64",
        .text = "pmul.h.b00 x5, x6, x7",
        .mnemonic = "pmul.h.b00",
        .xlen = 64,
        .operands = &operands_908,
    },
    .{
        .label = "rd_rs1_rs2:pmul_h_b01:64",
        .text = "pmul.h.b01 x5, x6, x7",
        .mnemonic = "pmul.h.b01",
        .xlen = 64,
        .operands = &operands_909,
    },
    .{
        .label = "rd_rs1_rs2:pmul_h_b11:64",
        .text = "pmul.h.b11 x5, x6, x7",
        .mnemonic = "pmul.h.b11",
        .xlen = 64,
        .operands = &operands_910,
    },
    .{
        .label = "rd_rs1_rs2:pmul_w_h00:64",
        .text = "pmul.w.h00 x5, x6, x7",
        .mnemonic = "pmul.w.h00",
        .xlen = 64,
        .operands = &operands_911,
    },
    .{
        .label = "rd_rs1_rs2:pmul_w_h01:64",
        .text = "pmul.w.h01 x5, x6, x7",
        .mnemonic = "pmul.w.h01",
        .xlen = 64,
        .operands = &operands_912,
    },
    .{
        .label = "rd_rs1_rs2:pmul_w_h11:64",
        .text = "pmul.w.h11 x5, x6, x7",
        .mnemonic = "pmul.w.h11",
        .xlen = 64,
        .operands = &operands_913,
    },
    .{
        .label = "rd_rs1_rs2:pmulh_h:64",
        .text = "pmulh.h x5, x6, x7",
        .mnemonic = "pmulh.h",
        .xlen = 64,
        .operands = &operands_914,
    },
    .{
        .label = "rd_rs1_rs2:pmulh_h_b0:64",
        .text = "pmulh.h.b0 x5, x6, x7",
        .mnemonic = "pmulh.h.b0",
        .xlen = 64,
        .operands = &operands_915,
    },
    .{
        .label = "rd_rs1_rs2:pmulh_h_b1:64",
        .text = "pmulh.h.b1 x5, x6, x7",
        .mnemonic = "pmulh.h.b1",
        .xlen = 64,
        .operands = &operands_916,
    },
    .{
        .label = "rd_rs1_rs2:pmulh_w:64",
        .text = "pmulh.w x5, x6, x7",
        .mnemonic = "pmulh.w",
        .xlen = 64,
        .operands = &operands_917,
    },
    .{
        .label = "rd_rs1_rs2:pmulh_w_h0:64",
        .text = "pmulh.w.h0 x5, x6, x7",
        .mnemonic = "pmulh.w.h0",
        .xlen = 64,
        .operands = &operands_918,
    },
    .{
        .label = "rd_rs1_rs2:pmulh_w_h1:64",
        .text = "pmulh.w.h1 x5, x6, x7",
        .mnemonic = "pmulh.w.h1",
        .xlen = 64,
        .operands = &operands_919,
    },
    .{
        .label = "rd_rs1_rs2:pmulhr_h:64",
        .text = "pmulhr.h x5, x6, x7",
        .mnemonic = "pmulhr.h",
        .xlen = 64,
        .operands = &operands_920,
    },
    .{
        .label = "rd_rs1_rs2:pmulhr_w:64",
        .text = "pmulhr.w x5, x6, x7",
        .mnemonic = "pmulhr.w",
        .xlen = 64,
        .operands = &operands_921,
    },
    .{
        .label = "rd_rs1_rs2:pmulhrsu_h:64",
        .text = "pmulhrsu.h x5, x6, x7",
        .mnemonic = "pmulhrsu.h",
        .xlen = 64,
        .operands = &operands_922,
    },
    .{
        .label = "rd_rs1_rs2:pmulhrsu_w:64",
        .text = "pmulhrsu.w x5, x6, x7",
        .mnemonic = "pmulhrsu.w",
        .xlen = 64,
        .operands = &operands_923,
    },
    .{
        .label = "rd_rs1_rs2:pmulhru_h:64",
        .text = "pmulhru.h x5, x6, x7",
        .mnemonic = "pmulhru.h",
        .xlen = 64,
        .operands = &operands_924,
    },
    .{
        .label = "rd_rs1_rs2:pmulhru_w:64",
        .text = "pmulhru.w x5, x6, x7",
        .mnemonic = "pmulhru.w",
        .xlen = 64,
        .operands = &operands_925,
    },
    .{
        .label = "rd_rs1_rs2:pmulhsu_h:64",
        .text = "pmulhsu.h x5, x6, x7",
        .mnemonic = "pmulhsu.h",
        .xlen = 64,
        .operands = &operands_926,
    },
    .{
        .label = "rd_rs1_rs2:pmulhsu_h_b0:64",
        .text = "pmulhsu.h.b0 x5, x6, x7",
        .mnemonic = "pmulhsu.h.b0",
        .xlen = 64,
        .operands = &operands_927,
    },
    .{
        .label = "rd_rs1_rs2:pmulhsu_h_b1:64",
        .text = "pmulhsu.h.b1 x5, x6, x7",
        .mnemonic = "pmulhsu.h.b1",
        .xlen = 64,
        .operands = &operands_928,
    },
    .{
        .label = "rd_rs1_rs2:pmulhsu_w:64",
        .text = "pmulhsu.w x5, x6, x7",
        .mnemonic = "pmulhsu.w",
        .xlen = 64,
        .operands = &operands_929,
    },
    .{
        .label = "rd_rs1_rs2:pmulhsu_w_h0:64",
        .text = "pmulhsu.w.h0 x5, x6, x7",
        .mnemonic = "pmulhsu.w.h0",
        .xlen = 64,
        .operands = &operands_930,
    },
    .{
        .label = "rd_rs1_rs2:pmulhsu_w_h1:64",
        .text = "pmulhsu.w.h1 x5, x6, x7",
        .mnemonic = "pmulhsu.w.h1",
        .xlen = 64,
        .operands = &operands_931,
    },
    .{
        .label = "rd_rs1_rs2:pmulhu_h:64",
        .text = "pmulhu.h x5, x6, x7",
        .mnemonic = "pmulhu.h",
        .xlen = 64,
        .operands = &operands_932,
    },
    .{
        .label = "rd_rs1_rs2:pmulhu_w:64",
        .text = "pmulhu.w x5, x6, x7",
        .mnemonic = "pmulhu.w",
        .xlen = 64,
        .operands = &operands_933,
    },
    .{
        .label = "rd_rs1_rs2:pmulq_h:64",
        .text = "pmulq.h x5, x6, x7",
        .mnemonic = "pmulq.h",
        .xlen = 64,
        .operands = &operands_934,
    },
    .{
        .label = "rd_rs1_rs2:pmulq_w:64",
        .text = "pmulq.w x5, x6, x7",
        .mnemonic = "pmulq.w",
        .xlen = 64,
        .operands = &operands_935,
    },
    .{
        .label = "rd_rs1_rs2:pmulqr_h:64",
        .text = "pmulqr.h x5, x6, x7",
        .mnemonic = "pmulqr.h",
        .xlen = 64,
        .operands = &operands_936,
    },
    .{
        .label = "rd_rs1_rs2:pmulqr_w:64",
        .text = "pmulqr.w x5, x6, x7",
        .mnemonic = "pmulqr.w",
        .xlen = 64,
        .operands = &operands_937,
    },
    .{
        .label = "rd_rs1_rs2:pmulsu_h_b00:64",
        .text = "pmulsu.h.b00 x5, x6, x7",
        .mnemonic = "pmulsu.h.b00",
        .xlen = 64,
        .operands = &operands_938,
    },
    .{
        .label = "rd_rs1_rs2:pmulsu_h_b11:64",
        .text = "pmulsu.h.b11 x5, x6, x7",
        .mnemonic = "pmulsu.h.b11",
        .xlen = 64,
        .operands = &operands_939,
    },
    .{
        .label = "rd_rs1_rs2:pmulsu_w_h00:64",
        .text = "pmulsu.w.h00 x5, x6, x7",
        .mnemonic = "pmulsu.w.h00",
        .xlen = 64,
        .operands = &operands_940,
    },
    .{
        .label = "rd_rs1_rs2:pmulsu_w_h11:64",
        .text = "pmulsu.w.h11 x5, x6, x7",
        .mnemonic = "pmulsu.w.h11",
        .xlen = 64,
        .operands = &operands_941,
    },
    .{
        .label = "rd_rs1_rs2:pmulu_h_b00:64",
        .text = "pmulu.h.b00 x5, x6, x7",
        .mnemonic = "pmulu.h.b00",
        .xlen = 64,
        .operands = &operands_942,
    },
    .{
        .label = "rd_rs1_rs2:pmulu_h_b01:64",
        .text = "pmulu.h.b01 x5, x6, x7",
        .mnemonic = "pmulu.h.b01",
        .xlen = 64,
        .operands = &operands_943,
    },
    .{
        .label = "rd_rs1_rs2:pmulu_h_b11:64",
        .text = "pmulu.h.b11 x5, x6, x7",
        .mnemonic = "pmulu.h.b11",
        .xlen = 64,
        .operands = &operands_944,
    },
    .{
        .label = "rd_rs1_rs2:pmulu_w_h00:64",
        .text = "pmulu.w.h00 x5, x6, x7",
        .mnemonic = "pmulu.w.h00",
        .xlen = 64,
        .operands = &operands_945,
    },
    .{
        .label = "rd_rs1_rs2:pmulu_w_h01:64",
        .text = "pmulu.w.h01 x5, x6, x7",
        .mnemonic = "pmulu.w.h01",
        .xlen = 64,
        .operands = &operands_946,
    },
    .{
        .label = "rd_rs1_rs2:pmulu_w_h11:64",
        .text = "pmulu.w.h11 x5, x6, x7",
        .mnemonic = "pmulu.w.h11",
        .xlen = 64,
        .operands = &operands_947,
    },
    .{
        .label = "rd_rs1_rs2:pnclipp_b:64",
        .text = "pnclipp.b x5, x6, x7",
        .mnemonic = "pnclipp.b",
        .xlen = 64,
        .operands = &operands_948,
    },
    .{
        .label = "rd_rs1_rs2:pnclipp_h:64",
        .text = "pnclipp.h x5, x6, x7",
        .mnemonic = "pnclipp.h",
        .xlen = 64,
        .operands = &operands_949,
    },
    .{
        .label = "rd_rs1_rs2:pnclipp_w:64",
        .text = "pnclipp.w x5, x6, x7",
        .mnemonic = "pnclipp.w",
        .xlen = 64,
        .operands = &operands_950,
    },
    .{
        .label = "rd_rs1_rs2:pnclipup_b:64",
        .text = "pnclipup.b x5, x6, x7",
        .mnemonic = "pnclipup.b",
        .xlen = 64,
        .operands = &operands_951,
    },
    .{
        .label = "rd_rs1_rs2:pnclipup_h:64",
        .text = "pnclipup.h x5, x6, x7",
        .mnemonic = "pnclipup.h",
        .xlen = 64,
        .operands = &operands_952,
    },
    .{
        .label = "rd_rs1_rs2:pnclipup_w:64",
        .text = "pnclipup.w x5, x6, x7",
        .mnemonic = "pnclipup.w",
        .xlen = 64,
        .operands = &operands_953,
    },
    .{
        .label = "rd_rs1_rs2:ppaire_b:64",
        .text = "ppaire.b x5, x6, x7",
        .mnemonic = "ppaire.b",
        .xlen = 64,
        .operands = &operands_954,
    },
    .{
        .label = "rd_rs1_rs2:ppaire_h:64",
        .text = "ppaire.h x5, x6, x7",
        .mnemonic = "ppaire.h",
        .xlen = 64,
        .operands = &operands_955,
    },
    .{
        .label = "rd_rs1_rs2:ppaireo_b:64",
        .text = "ppaireo.b x5, x6, x7",
        .mnemonic = "ppaireo.b",
        .xlen = 64,
        .operands = &operands_956,
    },
    .{
        .label = "rd_rs1_rs2:ppaireo_h:64",
        .text = "ppaireo.h x5, x6, x7",
        .mnemonic = "ppaireo.h",
        .xlen = 64,
        .operands = &operands_957,
    },
    .{
        .label = "rd_rs1_rs2:ppaireo_w:64",
        .text = "ppaireo.w x5, x6, x7",
        .mnemonic = "ppaireo.w",
        .xlen = 64,
        .operands = &operands_958,
    },
    .{
        .label = "rd_rs1_rs2:ppairo_b:64",
        .text = "ppairo.b x5, x6, x7",
        .mnemonic = "ppairo.b",
        .xlen = 64,
        .operands = &operands_959,
    },
    .{
        .label = "rd_rs1_rs2:ppairo_h:64",
        .text = "ppairo.h x5, x6, x7",
        .mnemonic = "ppairo.h",
        .xlen = 64,
        .operands = &operands_960,
    },
    .{
        .label = "rd_rs1_rs2:ppairo_w:64",
        .text = "ppairo.w x5, x6, x7",
        .mnemonic = "ppairo.w",
        .xlen = 64,
        .operands = &operands_961,
    },
    .{
        .label = "rd_rs1_rs2:ppairoe_b:64",
        .text = "ppairoe.b x5, x6, x7",
        .mnemonic = "ppairoe.b",
        .xlen = 64,
        .operands = &operands_962,
    },
    .{
        .label = "rd_rs1_rs2:ppairoe_h:64",
        .text = "ppairoe.h x5, x6, x7",
        .mnemonic = "ppairoe.h",
        .xlen = 64,
        .operands = &operands_963,
    },
    .{
        .label = "rd_rs1_rs2:ppairoe_w:64",
        .text = "ppairoe.w x5, x6, x7",
        .mnemonic = "ppairoe.w",
        .xlen = 64,
        .operands = &operands_964,
    },
    .{
        .label = "rd_rs1_rs2:predsum_bs:64",
        .text = "predsum.bs x5, x6, x7",
        .mnemonic = "predsum.bs",
        .xlen = 64,
        .operands = &operands_965,
    },
    .{
        .label = "rd_rs1_rs2:predsum_hs:64",
        .text = "predsum.hs x5, x6, x7",
        .mnemonic = "predsum.hs",
        .xlen = 64,
        .operands = &operands_966,
    },
    .{
        .label = "rd_rs1_rs2:predsum_ws:64",
        .text = "predsum.ws x5, x6, x7",
        .mnemonic = "predsum.ws",
        .xlen = 64,
        .operands = &operands_967,
    },
    .{
        .label = "rd_rs1_rs2:predsumu_bs:64",
        .text = "predsumu.bs x5, x6, x7",
        .mnemonic = "predsumu.bs",
        .xlen = 64,
        .operands = &operands_968,
    },
    .{
        .label = "rd_rs1_rs2:predsumu_hs:64",
        .text = "predsumu.hs x5, x6, x7",
        .mnemonic = "predsumu.hs",
        .xlen = 64,
        .operands = &operands_969,
    },
    .{
        .label = "rd_rs1_rs2:predsumu_ws:64",
        .text = "predsumu.ws x5, x6, x7",
        .mnemonic = "predsumu.ws",
        .xlen = 64,
        .operands = &operands_970,
    },
    .{
        .label = "rd_rs1_rs2:psa_hx:64",
        .text = "psa.hx x5, x6, x7",
        .mnemonic = "psa.hx",
        .xlen = 64,
        .operands = &operands_971,
    },
    .{
        .label = "rd_rs1_rs2:psa_wx:64",
        .text = "psa.wx x5, x6, x7",
        .mnemonic = "psa.wx",
        .xlen = 64,
        .operands = &operands_972,
    },
    .{
        .label = "rd_rs1_rs2:psadd_b:64",
        .text = "psadd.b x5, x6, x7",
        .mnemonic = "psadd.b",
        .xlen = 64,
        .operands = &operands_973,
    },
    .{
        .label = "rd_rs1_rs2:psadd_h:64",
        .text = "psadd.h x5, x6, x7",
        .mnemonic = "psadd.h",
        .xlen = 64,
        .operands = &operands_974,
    },
    .{
        .label = "rd_rs1_rs2:psadd_w:64",
        .text = "psadd.w x5, x6, x7",
        .mnemonic = "psadd.w",
        .xlen = 64,
        .operands = &operands_975,
    },
    .{
        .label = "rd_rs1_rs2:psaddu_b:64",
        .text = "psaddu.b x5, x6, x7",
        .mnemonic = "psaddu.b",
        .xlen = 64,
        .operands = &operands_976,
    },
    .{
        .label = "rd_rs1_rs2:psaddu_h:64",
        .text = "psaddu.h x5, x6, x7",
        .mnemonic = "psaddu.h",
        .xlen = 64,
        .operands = &operands_977,
    },
    .{
        .label = "rd_rs1_rs2:psaddu_w:64",
        .text = "psaddu.w x5, x6, x7",
        .mnemonic = "psaddu.w",
        .xlen = 64,
        .operands = &operands_978,
    },
    .{
        .label = "rd_rs1_rs2:psas_hx:64",
        .text = "psas.hx x5, x6, x7",
        .mnemonic = "psas.hx",
        .xlen = 64,
        .operands = &operands_979,
    },
    .{
        .label = "rd_rs1_rs2:psas_wx:64",
        .text = "psas.wx x5, x6, x7",
        .mnemonic = "psas.wx",
        .xlen = 64,
        .operands = &operands_980,
    },
    .{
        .label = "rd_rs1_rs2:psh1add_h:64",
        .text = "psh1add.h x5, x6, x7",
        .mnemonic = "psh1add.h",
        .xlen = 64,
        .operands = &operands_981,
    },
    .{
        .label = "rd_rs1_rs2:psh1add_w:64",
        .text = "psh1add.w x5, x6, x7",
        .mnemonic = "psh1add.w",
        .xlen = 64,
        .operands = &operands_982,
    },
    .{
        .label = "rd_rs1_rs2:psll_bs:64",
        .text = "psll.bs x5, x6, x7",
        .mnemonic = "psll.bs",
        .xlen = 64,
        .operands = &operands_983,
    },
    .{
        .label = "rd_rs1_rs2:psll_hs:64",
        .text = "psll.hs x5, x6, x7",
        .mnemonic = "psll.hs",
        .xlen = 64,
        .operands = &operands_984,
    },
    .{
        .label = "rd_rs1_rs2:psll_ws:64",
        .text = "psll.ws x5, x6, x7",
        .mnemonic = "psll.ws",
        .xlen = 64,
        .operands = &operands_985,
    },
    .{
        .label = "rd_rs1_rs2:psra_bs:64",
        .text = "psra.bs x5, x6, x7",
        .mnemonic = "psra.bs",
        .xlen = 64,
        .operands = &operands_986,
    },
    .{
        .label = "rd_rs1_rs2:psra_hs:64",
        .text = "psra.hs x5, x6, x7",
        .mnemonic = "psra.hs",
        .xlen = 64,
        .operands = &operands_987,
    },
    .{
        .label = "rd_rs1_rs2:psra_ws:64",
        .text = "psra.ws x5, x6, x7",
        .mnemonic = "psra.ws",
        .xlen = 64,
        .operands = &operands_988,
    },
    .{
        .label = "rd_rs1_rs2:psrl_bs:64",
        .text = "psrl.bs x5, x6, x7",
        .mnemonic = "psrl.bs",
        .xlen = 64,
        .operands = &operands_989,
    },
    .{
        .label = "rd_rs1_rs2:psrl_hs:64",
        .text = "psrl.hs x5, x6, x7",
        .mnemonic = "psrl.hs",
        .xlen = 64,
        .operands = &operands_990,
    },
    .{
        .label = "rd_rs1_rs2:psrl_ws:64",
        .text = "psrl.ws x5, x6, x7",
        .mnemonic = "psrl.ws",
        .xlen = 64,
        .operands = &operands_991,
    },
    .{
        .label = "rd_rs1_rs2:pssa_hx:64",
        .text = "pssa.hx x5, x6, x7",
        .mnemonic = "pssa.hx",
        .xlen = 64,
        .operands = &operands_992,
    },
    .{
        .label = "rd_rs1_rs2:pssa_wx:64",
        .text = "pssa.wx x5, x6, x7",
        .mnemonic = "pssa.wx",
        .xlen = 64,
        .operands = &operands_993,
    },
    .{
        .label = "rd_rs1_rs2:pssh1sadd_h:64",
        .text = "pssh1sadd.h x5, x6, x7",
        .mnemonic = "pssh1sadd.h",
        .xlen = 64,
        .operands = &operands_994,
    },
    .{
        .label = "rd_rs1_rs2:pssh1sadd_w:64",
        .text = "pssh1sadd.w x5, x6, x7",
        .mnemonic = "pssh1sadd.w",
        .xlen = 64,
        .operands = &operands_995,
    },
    .{
        .label = "rd_rs1_rs2:pssha_hs:64",
        .text = "pssha.hs x5, x6, x7",
        .mnemonic = "pssha.hs",
        .xlen = 64,
        .operands = &operands_996,
    },
    .{
        .label = "rd_rs1_rs2:pssha_ws:64",
        .text = "pssha.ws x5, x6, x7",
        .mnemonic = "pssha.ws",
        .xlen = 64,
        .operands = &operands_997,
    },
    .{
        .label = "rd_rs1_rs2:psshar_hs:64",
        .text = "psshar.hs x5, x6, x7",
        .mnemonic = "psshar.hs",
        .xlen = 64,
        .operands = &operands_998,
    },
    .{
        .label = "rd_rs1_rs2:psshar_ws:64",
        .text = "psshar.ws x5, x6, x7",
        .mnemonic = "psshar.ws",
        .xlen = 64,
        .operands = &operands_999,
    },
    .{
        .label = "rd_rs1_rs2:psshl_hs:64",
        .text = "psshl.hs x5, x6, x7",
        .mnemonic = "psshl.hs",
        .xlen = 64,
        .operands = &operands_1000,
    },
    .{
        .label = "rd_rs1_rs2:psshl_ws:64",
        .text = "psshl.ws x5, x6, x7",
        .mnemonic = "psshl.ws",
        .xlen = 64,
        .operands = &operands_1001,
    },
    .{
        .label = "rd_rs1_rs2:psshlr_hs:64",
        .text = "psshlr.hs x5, x6, x7",
        .mnemonic = "psshlr.hs",
        .xlen = 64,
        .operands = &operands_1002,
    },
    .{
        .label = "rd_rs1_rs2:psshlr_ws:64",
        .text = "psshlr.ws x5, x6, x7",
        .mnemonic = "psshlr.ws",
        .xlen = 64,
        .operands = &operands_1003,
    },
    .{
        .label = "rd_rs1_rs2:pssub_b:64",
        .text = "pssub.b x5, x6, x7",
        .mnemonic = "pssub.b",
        .xlen = 64,
        .operands = &operands_1004,
    },
    .{
        .label = "rd_rs1_rs2:pssub_h:64",
        .text = "pssub.h x5, x6, x7",
        .mnemonic = "pssub.h",
        .xlen = 64,
        .operands = &operands_1005,
    },
    .{
        .label = "rd_rs1_rs2:pssub_w:64",
        .text = "pssub.w x5, x6, x7",
        .mnemonic = "pssub.w",
        .xlen = 64,
        .operands = &operands_1006,
    },
    .{
        .label = "rd_rs1_rs2:pssubu_b:64",
        .text = "pssubu.b x5, x6, x7",
        .mnemonic = "pssubu.b",
        .xlen = 64,
        .operands = &operands_1007,
    },
    .{
        .label = "rd_rs1_rs2:pssubu_h:64",
        .text = "pssubu.h x5, x6, x7",
        .mnemonic = "pssubu.h",
        .xlen = 64,
        .operands = &operands_1008,
    },
    .{
        .label = "rd_rs1_rs2:pssubu_w:64",
        .text = "pssubu.w x5, x6, x7",
        .mnemonic = "pssubu.w",
        .xlen = 64,
        .operands = &operands_1009,
    },
    .{
        .label = "rd_rs1_rs2:psub_b:64",
        .text = "psub.b x5, x6, x7",
        .mnemonic = "psub.b",
        .xlen = 64,
        .operands = &operands_1010,
    },
    .{
        .label = "rd_rs1_rs2:psub_h:64",
        .text = "psub.h x5, x6, x7",
        .mnemonic = "psub.h",
        .xlen = 64,
        .operands = &operands_1011,
    },
    .{
        .label = "rd_rs1_rs2:psub_w:64",
        .text = "psub.w x5, x6, x7",
        .mnemonic = "psub.w",
        .xlen = 64,
        .operands = &operands_1012,
    },
    .{
        .label = "rd_rs1_rs2:rem:64",
        .text = "rem x5, x6, x7",
        .mnemonic = "rem",
        .xlen = 64,
        .operands = &operands_1013,
    },
    .{
        .label = "rd_rs1_rs2:remu:64",
        .text = "remu x5, x6, x7",
        .mnemonic = "remu",
        .xlen = 64,
        .operands = &operands_1014,
    },
    .{
        .label = "rd_rs1_rs2:remuw:64",
        .text = "remuw x5, x6, x7",
        .mnemonic = "remuw",
        .xlen = 64,
        .operands = &operands_1015,
    },
    .{
        .label = "rd_rs1_rs2:remw:64",
        .text = "remw x5, x6, x7",
        .mnemonic = "remw",
        .xlen = 64,
        .operands = &operands_1016,
    },
    .{
        .label = "rd_rs1_rs2:rol:64",
        .text = "rol x5, x6, x7",
        .mnemonic = "rol",
        .xlen = 64,
        .operands = &operands_1017,
    },
    .{
        .label = "rd_rs1_rs2:rolw:64",
        .text = "rolw x5, x6, x7",
        .mnemonic = "rolw",
        .xlen = 64,
        .operands = &operands_1018,
    },
    .{
        .label = "rd_rs1_rs2:ror:64",
        .text = "ror x5, x6, x7",
        .mnemonic = "ror",
        .xlen = 64,
        .operands = &operands_1019,
    },
    .{
        .label = "rd_rs1_rs2:rorw:64",
        .text = "rorw x5, x6, x7",
        .mnemonic = "rorw",
        .xlen = 64,
        .operands = &operands_1020,
    },
    .{
        .label = "rd_rs1_rs2:sadd:32",
        .text = "sadd x5, x6, x7",
        .mnemonic = "sadd",
        .xlen = 32,
        .operands = &operands_1021,
    },
    .{
        .label = "rd_rs1_rs2:saddu:32",
        .text = "saddu x5, x6, x7",
        .mnemonic = "saddu",
        .xlen = 32,
        .operands = &operands_1022,
    },
    .{
        .label = "rd_rs1_rs2:sh1add:64",
        .text = "sh1add x5, x6, x7",
        .mnemonic = "sh1add",
        .xlen = 64,
        .operands = &operands_1023,
    },
    .{
        .label = "rd_rs1_rs2:sh1add_uw:64",
        .text = "sh1add.uw x5, x6, x7",
        .mnemonic = "sh1add.uw",
        .xlen = 64,
        .operands = &operands_1024,
    },
    .{
        .label = "rd_rs1_rs2:sh2add:64",
        .text = "sh2add x5, x6, x7",
        .mnemonic = "sh2add",
        .xlen = 64,
        .operands = &operands_1025,
    },
    .{
        .label = "rd_rs1_rs2:sh2add_uw:64",
        .text = "sh2add.uw x5, x6, x7",
        .mnemonic = "sh2add.uw",
        .xlen = 64,
        .operands = &operands_1026,
    },
    .{
        .label = "rd_rs1_rs2:sh3add:64",
        .text = "sh3add x5, x6, x7",
        .mnemonic = "sh3add",
        .xlen = 64,
        .operands = &operands_1027,
    },
    .{
        .label = "rd_rs1_rs2:sh3add_uw:64",
        .text = "sh3add.uw x5, x6, x7",
        .mnemonic = "sh3add.uw",
        .xlen = 64,
        .operands = &operands_1028,
    },
    .{
        .label = "rd_rs1_rs2:sha:64",
        .text = "sha x5, x6, x7",
        .mnemonic = "sha",
        .xlen = 64,
        .operands = &operands_1029,
    },
    .{
        .label = "rd_rs1_rs2:sha512sig0h:32",
        .text = "sha512sig0h x5, x6, x7",
        .mnemonic = "sha512sig0h",
        .xlen = 32,
        .operands = &operands_1030,
    },
    .{
        .label = "rd_rs1_rs2:sha512sig0l:32",
        .text = "sha512sig0l x5, x6, x7",
        .mnemonic = "sha512sig0l",
        .xlen = 32,
        .operands = &operands_1031,
    },
    .{
        .label = "rd_rs1_rs2:sha512sig1h:32",
        .text = "sha512sig1h x5, x6, x7",
        .mnemonic = "sha512sig1h",
        .xlen = 32,
        .operands = &operands_1032,
    },
    .{
        .label = "rd_rs1_rs2:sha512sig1l:32",
        .text = "sha512sig1l x5, x6, x7",
        .mnemonic = "sha512sig1l",
        .xlen = 32,
        .operands = &operands_1033,
    },
    .{
        .label = "rd_rs1_rs2:sha512sum0r:32",
        .text = "sha512sum0r x5, x6, x7",
        .mnemonic = "sha512sum0r",
        .xlen = 32,
        .operands = &operands_1034,
    },
    .{
        .label = "rd_rs1_rs2:sha512sum1r:32",
        .text = "sha512sum1r x5, x6, x7",
        .mnemonic = "sha512sum1r",
        .xlen = 32,
        .operands = &operands_1035,
    },
    .{
        .label = "rd_rs1_rs2:shar:64",
        .text = "shar x5, x6, x7",
        .mnemonic = "shar",
        .xlen = 64,
        .operands = &operands_1036,
    },
    .{
        .label = "rd_rs1_rs2:shl:64",
        .text = "shl x5, x6, x7",
        .mnemonic = "shl",
        .xlen = 64,
        .operands = &operands_1037,
    },
    .{
        .label = "rd_rs1_rs2:shlr:64",
        .text = "shlr x5, x6, x7",
        .mnemonic = "shlr",
        .xlen = 64,
        .operands = &operands_1038,
    },
    .{
        .label = "rd_rs1_rs2:sll:64",
        .text = "sll x5, x6, x7",
        .mnemonic = "sll",
        .xlen = 64,
        .operands = &operands_1039,
    },
    .{
        .label = "rd_rs1_rs2:sllw:64",
        .text = "sllw x5, x6, x7",
        .mnemonic = "sllw",
        .xlen = 64,
        .operands = &operands_1040,
    },
    .{
        .label = "rd_rs1_rs2:slt:64",
        .text = "slt x5, x6, x7",
        .mnemonic = "slt",
        .xlen = 64,
        .operands = &operands_1041,
    },
    .{
        .label = "rd_rs1_rs2:sltu:64",
        .text = "sltu x5, x6, x7",
        .mnemonic = "sltu",
        .xlen = 64,
        .operands = &operands_1042,
    },
    .{
        .label = "rd_rs1_rs2:slx:64",
        .text = "slx x5, x6, x7",
        .mnemonic = "slx",
        .xlen = 64,
        .operands = &operands_1043,
    },
    .{
        .label = "rd_rs1_rs2:sra:64",
        .text = "sra x5, x6, x7",
        .mnemonic = "sra",
        .xlen = 64,
        .operands = &operands_1044,
    },
    .{
        .label = "rd_rs1_rs2:sraw:64",
        .text = "sraw x5, x6, x7",
        .mnemonic = "sraw",
        .xlen = 64,
        .operands = &operands_1045,
    },
    .{
        .label = "rd_rs1_rs2:srl:64",
        .text = "srl x5, x6, x7",
        .mnemonic = "srl",
        .xlen = 64,
        .operands = &operands_1046,
    },
    .{
        .label = "rd_rs1_rs2:srlw:64",
        .text = "srlw x5, x6, x7",
        .mnemonic = "srlw",
        .xlen = 64,
        .operands = &operands_1047,
    },
    .{
        .label = "rd_rs1_rs2:srx:64",
        .text = "srx x5, x6, x7",
        .mnemonic = "srx",
        .xlen = 64,
        .operands = &operands_1048,
    },
    .{
        .label = "rd_rs1_rs2:ssh1sadd:32",
        .text = "ssh1sadd x5, x6, x7",
        .mnemonic = "ssh1sadd",
        .xlen = 32,
        .operands = &operands_1049,
    },
    .{
        .label = "rd_rs1_rs2:ssha:32",
        .text = "ssha x5, x6, x7",
        .mnemonic = "ssha",
        .xlen = 32,
        .operands = &operands_1050,
    },
    .{
        .label = "rd_rs1_rs2:sshar:32",
        .text = "sshar x5, x6, x7",
        .mnemonic = "sshar",
        .xlen = 32,
        .operands = &operands_1051,
    },
    .{
        .label = "rd_rs1_rs2:sshl:32",
        .text = "sshl x5, x6, x7",
        .mnemonic = "sshl",
        .xlen = 32,
        .operands = &operands_1052,
    },
    .{
        .label = "rd_rs1_rs2:sshlr:32",
        .text = "sshlr x5, x6, x7",
        .mnemonic = "sshlr",
        .xlen = 32,
        .operands = &operands_1053,
    },
    .{
        .label = "rd_rs1_rs2:ssub:32",
        .text = "ssub x5, x6, x7",
        .mnemonic = "ssub",
        .xlen = 32,
        .operands = &operands_1054,
    },
    .{
        .label = "rd_rs1_rs2:ssubu:32",
        .text = "ssubu x5, x6, x7",
        .mnemonic = "ssubu",
        .xlen = 32,
        .operands = &operands_1055,
    },
    .{
        .label = "rd_rs1_rs2:sub:64",
        .text = "sub x5, x6, x7",
        .mnemonic = "sub",
        .xlen = 64,
        .operands = &operands_1056,
    },
    .{
        .label = "rd_rs1_rs2:subw:64",
        .text = "subw x5, x6, x7",
        .mnemonic = "subw",
        .xlen = 64,
        .operands = &operands_1057,
    },
    .{
        .label = "rd_rs1_rs2:unzip16hp:64",
        .text = "unzip16hp x5, x6, x7",
        .mnemonic = "unzip16hp",
        .xlen = 64,
        .operands = &operands_1058,
    },
    .{
        .label = "rd_rs1_rs2:unzip16p:64",
        .text = "unzip16p x5, x6, x7",
        .mnemonic = "unzip16p",
        .xlen = 64,
        .operands = &operands_1059,
    },
    .{
        .label = "rd_rs1_rs2:unzip8hp:64",
        .text = "unzip8hp x5, x6, x7",
        .mnemonic = "unzip8hp",
        .xlen = 64,
        .operands = &operands_1060,
    },
    .{
        .label = "rd_rs1_rs2:unzip8p:64",
        .text = "unzip8p x5, x6, x7",
        .mnemonic = "unzip8p",
        .xlen = 64,
        .operands = &operands_1061,
    },
    .{
        .label = "rd_rs1_rs2:vsetvl:64",
        .text = "vsetvl x5, x6, x7",
        .mnemonic = "vsetvl",
        .xlen = 64,
        .operands = &operands_1062,
    },
    .{
        .label = "rd_rs1_rs2:xnor:64",
        .text = "xnor x5, x6, x7",
        .mnemonic = "xnor",
        .xlen = 64,
        .operands = &operands_1063,
    },
    .{
        .label = "rd_rs1_rs2:xor:64",
        .text = "xor x5, x6, x7",
        .mnemonic = "xor",
        .xlen = 64,
        .operands = &operands_1064,
    },
    .{
        .label = "rd_rs1_rs2:xperm16:64",
        .text = "xperm16 x5, x6, x7",
        .mnemonic = "xperm16",
        .xlen = 64,
        .operands = &operands_1065,
    },
    .{
        .label = "rd_rs1_rs2:xperm32:64",
        .text = "xperm32 x5, x6, x7",
        .mnemonic = "xperm32",
        .xlen = 64,
        .operands = &operands_1066,
    },
    .{
        .label = "rd_rs1_rs2:xperm4:64",
        .text = "xperm4 x5, x6, x7",
        .mnemonic = "xperm4",
        .xlen = 64,
        .operands = &operands_1067,
    },
    .{
        .label = "rd_rs1_rs2:xperm8:64",
        .text = "xperm8 x5, x6, x7",
        .mnemonic = "xperm8",
        .xlen = 64,
        .operands = &operands_1068,
    },
    .{
        .label = "rd_rs1_rs2:zip16hp:64",
        .text = "zip16hp x5, x6, x7",
        .mnemonic = "zip16hp",
        .xlen = 64,
        .operands = &operands_1069,
    },
    .{
        .label = "rd_rs1_rs2:zip16p:64",
        .text = "zip16p x5, x6, x7",
        .mnemonic = "zip16p",
        .xlen = 64,
        .operands = &operands_1070,
    },
    .{
        .label = "rd_rs1_rs2:zip8hp:64",
        .text = "zip8hp x5, x6, x7",
        .mnemonic = "zip8hp",
        .xlen = 64,
        .operands = &operands_1071,
    },
    .{
        .label = "rd_rs1_rs2:zip8p:64",
        .text = "zip8p x5, x6, x7",
        .mnemonic = "zip8p",
        .xlen = 64,
        .operands = &operands_1072,
    },
    .{
        .label = "rd_rs1_rs2_bs:aes32dsi:32",
        .text = "aes32dsi x5, x6, x7, 1",
        .mnemonic = "aes32dsi",
        .xlen = 32,
        .operands = &operands_1073,
    },
    .{
        .label = "rd_rs1_rs2_bs:aes32dsmi:32",
        .text = "aes32dsmi x5, x6, x7, 1",
        .mnemonic = "aes32dsmi",
        .xlen = 32,
        .operands = &operands_1074,
    },
    .{
        .label = "rd_rs1_rs2_bs:aes32esi:32",
        .text = "aes32esi x5, x6, x7, 1",
        .mnemonic = "aes32esi",
        .xlen = 32,
        .operands = &operands_1075,
    },
    .{
        .label = "rd_rs1_rs2_bs:aes32esmi:32",
        .text = "aes32esmi x5, x6, x7, 1",
        .mnemonic = "aes32esmi",
        .xlen = 32,
        .operands = &operands_1076,
    },
    .{
        .label = "rd_rs1_rs2_bs:sm4ed:64",
        .text = "sm4ed x5, x6, x7, 1",
        .mnemonic = "sm4ed",
        .xlen = 64,
        .operands = &operands_1077,
    },
    .{
        .label = "rd_rs1_rs2_bs:sm4ks:64",
        .text = "sm4ks x5, x6, x7, 1",
        .mnemonic = "sm4ks",
        .xlen = 64,
        .operands = &operands_1078,
    },
    .{
        .label = "rd_rs1_rs2_rm:fadd_d:64",
        .text = "fadd.d x5, x6, x7, rne",
        .mnemonic = "fadd.d",
        .xlen = 64,
        .operands = &operands_1079,
    },
    .{
        .label = "rd_rs1_rs2_rm:fadd_h:64",
        .text = "fadd.h x5, x6, x7, rne",
        .mnemonic = "fadd.h",
        .xlen = 64,
        .operands = &operands_1080,
    },
    .{
        .label = "rd_rs1_rs2_rm:fadd_q:64",
        .text = "fadd.q x5, x6, x7, rne",
        .mnemonic = "fadd.q",
        .xlen = 64,
        .operands = &operands_1081,
    },
    .{
        .label = "rd_rs1_rs2_rm:fadd_s:64",
        .text = "fadd.s x5, x6, x7, rne",
        .mnemonic = "fadd.s",
        .xlen = 64,
        .operands = &operands_1082,
    },
    .{
        .label = "rd_rs1_rs2_rm:fdiv_d:64",
        .text = "fdiv.d x5, x6, x7, rne",
        .mnemonic = "fdiv.d",
        .xlen = 64,
        .operands = &operands_1083,
    },
    .{
        .label = "rd_rs1_rs2_rm:fdiv_h:64",
        .text = "fdiv.h x5, x6, x7, rne",
        .mnemonic = "fdiv.h",
        .xlen = 64,
        .operands = &operands_1084,
    },
    .{
        .label = "rd_rs1_rs2_rm:fdiv_q:64",
        .text = "fdiv.q x5, x6, x7, rne",
        .mnemonic = "fdiv.q",
        .xlen = 64,
        .operands = &operands_1085,
    },
    .{
        .label = "rd_rs1_rs2_rm:fdiv_s:64",
        .text = "fdiv.s x5, x6, x7, rne",
        .mnemonic = "fdiv.s",
        .xlen = 64,
        .operands = &operands_1086,
    },
    .{
        .label = "rd_rs1_rs2_rm:fmul_d:64",
        .text = "fmul.d x5, x6, x7, rne",
        .mnemonic = "fmul.d",
        .xlen = 64,
        .operands = &operands_1087,
    },
    .{
        .label = "rd_rs1_rs2_rm:fmul_h:64",
        .text = "fmul.h x5, x6, x7, rne",
        .mnemonic = "fmul.h",
        .xlen = 64,
        .operands = &operands_1088,
    },
    .{
        .label = "rd_rs1_rs2_rm:fmul_q:64",
        .text = "fmul.q x5, x6, x7, rne",
        .mnemonic = "fmul.q",
        .xlen = 64,
        .operands = &operands_1089,
    },
    .{
        .label = "rd_rs1_rs2_rm:fmul_s:64",
        .text = "fmul.s x5, x6, x7, rne",
        .mnemonic = "fmul.s",
        .xlen = 64,
        .operands = &operands_1090,
    },
    .{
        .label = "rd_rs1_rs2_rm:fsub_d:64",
        .text = "fsub.d x5, x6, x7, rne",
        .mnemonic = "fsub.d",
        .xlen = 64,
        .operands = &operands_1091,
    },
    .{
        .label = "rd_rs1_rs2_rm:fsub_h:64",
        .text = "fsub.h x5, x6, x7, rne",
        .mnemonic = "fsub.h",
        .xlen = 64,
        .operands = &operands_1092,
    },
    .{
        .label = "rd_rs1_rs2_rm:fsub_q:64",
        .text = "fsub.q x5, x6, x7, rne",
        .mnemonic = "fsub.q",
        .xlen = 64,
        .operands = &operands_1093,
    },
    .{
        .label = "rd_rs1_rs2_rm:fsub_s:64",
        .text = "fsub.s x5, x6, x7, rne",
        .mnemonic = "fsub.s",
        .xlen = 64,
        .operands = &operands_1094,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmadd_d:64",
        .text = "fmadd.d x5, x6, x7, x8, rne",
        .mnemonic = "fmadd.d",
        .xlen = 64,
        .operands = &operands_1095,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmadd_h:64",
        .text = "fmadd.h x5, x6, x7, x8, rne",
        .mnemonic = "fmadd.h",
        .xlen = 64,
        .operands = &operands_1096,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmadd_q:64",
        .text = "fmadd.q x5, x6, x7, x8, rne",
        .mnemonic = "fmadd.q",
        .xlen = 64,
        .operands = &operands_1097,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmadd_s:64",
        .text = "fmadd.s x5, x6, x7, x8, rne",
        .mnemonic = "fmadd.s",
        .xlen = 64,
        .operands = &operands_1098,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmsub_d:64",
        .text = "fmsub.d x5, x6, x7, x8, rne",
        .mnemonic = "fmsub.d",
        .xlen = 64,
        .operands = &operands_1099,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmsub_h:64",
        .text = "fmsub.h x5, x6, x7, x8, rne",
        .mnemonic = "fmsub.h",
        .xlen = 64,
        .operands = &operands_1100,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmsub_q:64",
        .text = "fmsub.q x5, x6, x7, x8, rne",
        .mnemonic = "fmsub.q",
        .xlen = 64,
        .operands = &operands_1101,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fmsub_s:64",
        .text = "fmsub.s x5, x6, x7, x8, rne",
        .mnemonic = "fmsub.s",
        .xlen = 64,
        .operands = &operands_1102,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmadd_d:64",
        .text = "fnmadd.d x5, x6, x7, x8, rne",
        .mnemonic = "fnmadd.d",
        .xlen = 64,
        .operands = &operands_1103,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmadd_h:64",
        .text = "fnmadd.h x5, x6, x7, x8, rne",
        .mnemonic = "fnmadd.h",
        .xlen = 64,
        .operands = &operands_1104,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmadd_q:64",
        .text = "fnmadd.q x5, x6, x7, x8, rne",
        .mnemonic = "fnmadd.q",
        .xlen = 64,
        .operands = &operands_1105,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmadd_s:64",
        .text = "fnmadd.s x5, x6, x7, x8, rne",
        .mnemonic = "fnmadd.s",
        .xlen = 64,
        .operands = &operands_1106,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmsub_d:64",
        .text = "fnmsub.d x5, x6, x7, x8, rne",
        .mnemonic = "fnmsub.d",
        .xlen = 64,
        .operands = &operands_1107,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmsub_h:64",
        .text = "fnmsub.h x5, x6, x7, x8, rne",
        .mnemonic = "fnmsub.h",
        .xlen = 64,
        .operands = &operands_1108,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmsub_q:64",
        .text = "fnmsub.q x5, x6, x7, x8, rne",
        .mnemonic = "fnmsub.q",
        .xlen = 64,
        .operands = &operands_1109,
    },
    .{
        .label = "rd_rs1_rs2_rs3_rm:fnmsub_s:64",
        .text = "fnmsub.s x5, x6, x7, x8, rne",
        .mnemonic = "fnmsub.s",
        .xlen = 64,
        .operands = &operands_1110,
    },
    .{
        .label = "rd_rs1_shamt:bclri:64",
        .text = "bclri x5, x6, 3",
        .mnemonic = "bclri",
        .xlen = 64,
        .operands = &operands_1111,
    },
    .{
        .label = "rd_rs1_shamt:bexti:64",
        .text = "bexti x5, x6, 3",
        .mnemonic = "bexti",
        .xlen = 64,
        .operands = &operands_1112,
    },
    .{
        .label = "rd_rs1_shamt:binvi:64",
        .text = "binvi x5, x6, 3",
        .mnemonic = "binvi",
        .xlen = 64,
        .operands = &operands_1113,
    },
    .{
        .label = "rd_rs1_shamt:bseti:64",
        .text = "bseti x5, x6, 3",
        .mnemonic = "bseti",
        .xlen = 64,
        .operands = &operands_1114,
    },
    .{
        .label = "rd_rs1_shamt:gorci:64",
        .text = "gorci x5, x6, 3",
        .mnemonic = "gorci",
        .xlen = 64,
        .operands = &operands_1115,
    },
    .{
        .label = "rd_rs1_shamt:grevi:64",
        .text = "grevi x5, x6, 3",
        .mnemonic = "grevi",
        .xlen = 64,
        .operands = &operands_1116,
    },
    .{
        .label = "rd_rs1_shamt:rori:64",
        .text = "rori x5, x6, 3",
        .mnemonic = "rori",
        .xlen = 64,
        .operands = &operands_1117,
    },
    .{
        .label = "rd_rs1_shamt:roriw:64",
        .text = "roriw x5, x6, 3",
        .mnemonic = "roriw",
        .xlen = 64,
        .operands = &operands_1118,
    },
    .{
        .label = "rd_rs1_shamt:shfli:64",
        .text = "shfli x5, x6, 3",
        .mnemonic = "shfli",
        .xlen = 64,
        .operands = &operands_1119,
    },
    .{
        .label = "rd_rs1_shamt:slli:32",
        .text = "slli x5, x6, 3",
        .mnemonic = "slli",
        .xlen = 32,
        .operands = &operands_1120,
    },
    .{
        .label = "rd_rs1_shamt:slli:64",
        .text = "slli x5, x6, 3",
        .mnemonic = "slli",
        .xlen = 64,
        .operands = &operands_1121,
    },
    .{
        .label = "rd_rs1_shamt:slli_uw:64",
        .text = "slli.uw x5, x6, 3",
        .mnemonic = "slli.uw",
        .xlen = 64,
        .operands = &operands_1122,
    },
    .{
        .label = "rd_rs1_shamt:slliw:64",
        .text = "slliw x5, x6, 3",
        .mnemonic = "slliw",
        .xlen = 64,
        .operands = &operands_1123,
    },
    .{
        .label = "rd_rs1_shamt:srai:32",
        .text = "srai x5, x6, 3",
        .mnemonic = "srai",
        .xlen = 32,
        .operands = &operands_1124,
    },
    .{
        .label = "rd_rs1_shamt:srai:64",
        .text = "srai x5, x6, 3",
        .mnemonic = "srai",
        .xlen = 64,
        .operands = &operands_1125,
    },
    .{
        .label = "rd_rs1_shamt:sraiw:64",
        .text = "sraiw x5, x6, 3",
        .mnemonic = "sraiw",
        .xlen = 64,
        .operands = &operands_1126,
    },
    .{
        .label = "rd_rs1_shamt:srli:32",
        .text = "srli x5, x6, 3",
        .mnemonic = "srli",
        .xlen = 32,
        .operands = &operands_1127,
    },
    .{
        .label = "rd_rs1_shamt:srli:64",
        .text = "srli x5, x6, 3",
        .mnemonic = "srli",
        .xlen = 64,
        .operands = &operands_1128,
    },
    .{
        .label = "rd_rs1_shamt:srliw:64",
        .text = "srliw x5, x6, 3",
        .mnemonic = "srliw",
        .xlen = 64,
        .operands = &operands_1129,
    },
    .{
        .label = "rd_rs1_shamt:unshfli:64",
        .text = "unshfli x5, x6, 3",
        .mnemonic = "unshfli",
        .xlen = 64,
        .operands = &operands_1130,
    },
    .{
        .label = "rd_rs1_uimm:psati_h:64",
        .text = "psati.h x5, x6, 3",
        .mnemonic = "psati.h",
        .xlen = 64,
        .operands = &operands_1131,
    },
    .{
        .label = "rd_rs1_uimm:psati_w:64",
        .text = "psati.w x5, x6, 3",
        .mnemonic = "psati.w",
        .xlen = 64,
        .operands = &operands_1132,
    },
    .{
        .label = "rd_rs1_uimm:pslli_b:64",
        .text = "pslli.b x5, x6, 3",
        .mnemonic = "pslli.b",
        .xlen = 64,
        .operands = &operands_1133,
    },
    .{
        .label = "rd_rs1_uimm:pslli_h:64",
        .text = "pslli.h x5, x6, 3",
        .mnemonic = "pslli.h",
        .xlen = 64,
        .operands = &operands_1134,
    },
    .{
        .label = "rd_rs1_uimm:pslli_w:64",
        .text = "pslli.w x5, x6, 3",
        .mnemonic = "pslli.w",
        .xlen = 64,
        .operands = &operands_1135,
    },
    .{
        .label = "rd_rs1_uimm:psrai_b:64",
        .text = "psrai.b x5, x6, 3",
        .mnemonic = "psrai.b",
        .xlen = 64,
        .operands = &operands_1136,
    },
    .{
        .label = "rd_rs1_uimm:psrai_h:64",
        .text = "psrai.h x5, x6, 3",
        .mnemonic = "psrai.h",
        .xlen = 64,
        .operands = &operands_1137,
    },
    .{
        .label = "rd_rs1_uimm:psrai_w:64",
        .text = "psrai.w x5, x6, 3",
        .mnemonic = "psrai.w",
        .xlen = 64,
        .operands = &operands_1138,
    },
    .{
        .label = "rd_rs1_uimm:psrari_h:64",
        .text = "psrari.h x5, x6, 3",
        .mnemonic = "psrari.h",
        .xlen = 64,
        .operands = &operands_1139,
    },
    .{
        .label = "rd_rs1_uimm:psrari_w:64",
        .text = "psrari.w x5, x6, 3",
        .mnemonic = "psrari.w",
        .xlen = 64,
        .operands = &operands_1140,
    },
    .{
        .label = "rd_rs1_uimm:psrli_b:64",
        .text = "psrli.b x5, x6, 3",
        .mnemonic = "psrli.b",
        .xlen = 64,
        .operands = &operands_1141,
    },
    .{
        .label = "rd_rs1_uimm:psrli_h:64",
        .text = "psrli.h x5, x6, 3",
        .mnemonic = "psrli.h",
        .xlen = 64,
        .operands = &operands_1142,
    },
    .{
        .label = "rd_rs1_uimm:psrli_w:64",
        .text = "psrli.w x5, x6, 3",
        .mnemonic = "psrli.w",
        .xlen = 64,
        .operands = &operands_1143,
    },
    .{
        .label = "rd_rs1_uimm:psslai_h:64",
        .text = "psslai.h x5, x6, 3",
        .mnemonic = "psslai.h",
        .xlen = 64,
        .operands = &operands_1144,
    },
    .{
        .label = "rd_rs1_uimm:psslai_w:64",
        .text = "psslai.w x5, x6, 3",
        .mnemonic = "psslai.w",
        .xlen = 64,
        .operands = &operands_1145,
    },
    .{
        .label = "rd_rs1_uimm:pusati_h:64",
        .text = "pusati.h x5, x6, 3",
        .mnemonic = "pusati.h",
        .xlen = 64,
        .operands = &operands_1146,
    },
    .{
        .label = "rd_rs1_uimm:pusati_w:64",
        .text = "pusati.w x5, x6, 3",
        .mnemonic = "pusati.w",
        .xlen = 64,
        .operands = &operands_1147,
    },
    .{
        .label = "rd_rs1_uimm:sati:64",
        .text = "sati x5, x6, 3",
        .mnemonic = "sati",
        .xlen = 64,
        .operands = &operands_1148,
    },
    .{
        .label = "rd_rs1_uimm:srari:64",
        .text = "srari x5, x6, 3",
        .mnemonic = "srari",
        .xlen = 64,
        .operands = &operands_1149,
    },
    .{
        .label = "rd_rs1_uimm:sslai:32",
        .text = "sslai x5, x6, 3",
        .mnemonic = "sslai",
        .xlen = 32,
        .operands = &operands_1150,
    },
    .{
        .label = "rd_rs1_uimm:usati:64",
        .text = "usati x5, x6, 3",
        .mnemonic = "usati",
        .xlen = 64,
        .operands = &operands_1151,
    },
    .{
        .label = "rd_rs1_zimm11:vsetvli:64",
        .text = "vsetvli x5, x6, e8,m1,ta,ma",
        .mnemonic = "vsetvli",
        .xlen = 64,
        .operands = &operands_1152,
    },
    .{
        .label = "rd_rs2:sgtz:64",
        .text = "sgtz x5, x7",
        .mnemonic = "sgtz",
        .xlen = 64,
        .operands = &operands_1153,
    },
    .{
        .label = "rd_rs2:snez:64",
        .text = "snez x5, x7",
        .mnemonic = "snez",
        .xlen = 64,
        .operands = &operands_1154,
    },
    .{
        .label = "rd_uimm:pli_b:64",
        .text = "pli.b x5, 3",
        .mnemonic = "pli.b",
        .xlen = 64,
        .operands = &operands_1155,
    },
    .{
        .label = "rd_uimm:pli_h:64",
        .text = "pli.h x5, 3",
        .mnemonic = "pli.h",
        .xlen = 64,
        .operands = &operands_1156,
    },
    .{
        .label = "rd_uimm:pli_w:64",
        .text = "pli.w x5, 3",
        .mnemonic = "pli.w",
        .xlen = 64,
        .operands = &operands_1157,
    },
    .{
        .label = "rd_uimm:plui_h:64",
        .text = "plui.h x5, 3",
        .mnemonic = "plui.h",
        .xlen = 64,
        .operands = &operands_1158,
    },
    .{
        .label = "rd_uimm:plui_w:64",
        .text = "plui.w x5, 3",
        .mnemonic = "plui.w",
        .xlen = 64,
        .operands = &operands_1159,
    },
    .{
        .label = "rd_vs2:vfmv_f_s:64",
        .text = "vfmv.f.s x5, v6",
        .mnemonic = "vfmv.f.s",
        .xlen = 64,
        .operands = &operands_1160,
    },
    .{
        .label = "rd_vs2:vmv_x_s:64",
        .text = "vmv.x.s x5, v6",
        .mnemonic = "vmv.x.s",
        .xlen = 64,
        .operands = &operands_1161,
    },
    .{
        .label = "rd_vs2_vm:vcpop_m:64",
        .text = "vcpop.m x5, v6, v0.t",
        .mnemonic = "vcpop.m",
        .xlen = 64,
        .operands = &operands_1162,
    },
    .{
        .label = "rd_vs2_vm:vfirst_m:64",
        .text = "vfirst.m x5, v6, v0.t",
        .mnemonic = "vfirst.m",
        .xlen = 64,
        .operands = &operands_1163,
    },
    .{
        .label = "rd_vs2_vm:vpopc_m:64",
        .text = "vpopc.m x5, v6, v0.t",
        .mnemonic = "vpopc.m",
        .xlen = 64,
        .operands = &operands_1164,
    },
    .{
        .label = "rd_zimm:fsflagsi:64",
        .text = "fsflagsi x5, 3",
        .mnemonic = "fsflagsi",
        .xlen = 64,
        .operands = &operands_1165,
    },
    .{
        .label = "rd_zimm:fsrmi:64",
        .text = "fsrmi x5, 3",
        .mnemonic = "fsrmi",
        .xlen = 64,
        .operands = &operands_1166,
    },
    .{
        .label = "rd_zimm5_zimm10:vsetivli:64",
        .text = "vsetivli x5, 4, e16,m2,ta,mu",
        .mnemonic = "vsetivli",
        .xlen = 64,
        .operands = &operands_1167,
    },
    .{
        .label = "rd_zimm_csr:csrrci:64",
        .text = "csrrci x5, mstatus, 3",
        .mnemonic = "csrrci",
        .xlen = 64,
        .operands = &operands_1168,
    },
    .{
        .label = "rd_zimm_csr:csrrsi:64",
        .text = "csrrsi x5, mstatus, 3",
        .mnemonic = "csrrsi",
        .xlen = 64,
        .operands = &operands_1169,
    },
    .{
        .label = "rd_zimm_csr:csrrwi:64",
        .text = "csrrwi x5, mstatus, 3",
        .mnemonic = "csrrwi",
        .xlen = 64,
        .operands = &operands_1170,
    },
    .{
        .label = "rs1:cbo_clean:64",
        .text = "cbo.clean x6",
        .mnemonic = "cbo.clean",
        .xlen = 64,
        .operands = &operands_1171,
    },
    .{
        .label = "rs1:cbo_flush:64",
        .text = "cbo.flush x6",
        .mnemonic = "cbo.flush",
        .xlen = 64,
        .operands = &operands_1172,
    },
    .{
        .label = "rs1:cbo_inval:64",
        .text = "cbo.inval x6",
        .mnemonic = "cbo.inval",
        .xlen = 64,
        .operands = &operands_1173,
    },
    .{
        .label = "rs1:cbo_zero:64",
        .text = "cbo.zero x6",
        .mnemonic = "cbo.zero",
        .xlen = 64,
        .operands = &operands_1174,
    },
    .{
        .label = "rs1:jalr_pseudo:64",
        .text = "jalr.pseudo x6",
        .mnemonic = "jalr.pseudo",
        .xlen = 64,
        .operands = &operands_1175,
    },
    .{
        .label = "rs1:jr:64",
        .text = "jr x6",
        .mnemonic = "jr",
        .xlen = 64,
        .operands = &operands_1176,
    },
    .{
        .label = "rs1_csr:csrc:64",
        .text = "csrc mstatus, x6",
        .mnemonic = "csrc",
        .xlen = 64,
        .operands = &operands_1177,
    },
    .{
        .label = "rs1_csr:csrs:64",
        .text = "csrs mstatus, x6",
        .mnemonic = "csrs",
        .xlen = 64,
        .operands = &operands_1178,
    },
    .{
        .label = "rs1_csr:csrw:64",
        .text = "csrw mstatus, x6",
        .mnemonic = "csrw",
        .xlen = 64,
        .operands = &operands_1179,
    },
    .{
        .label = "rs1_imm5_offset:beqi:64",
        .text = "beqi x6, 3, 16",
        .mnemonic = "beqi",
        .xlen = 64,
        .operands = &operands_1180,
    },
    .{
        .label = "rs1_imm5_offset:bnei:64",
        .text = "bnei x6, 3, 16",
        .mnemonic = "bnei",
        .xlen = 64,
        .operands = &operands_1181,
    },
    .{
        .label = "rs1_offset:beqz:64",
        .text = "beqz x6, 16",
        .mnemonic = "beqz",
        .xlen = 64,
        .operands = &operands_1182,
    },
    .{
        .label = "rs1_offset:bgez:64",
        .text = "bgez x6, 16",
        .mnemonic = "bgez",
        .xlen = 64,
        .operands = &operands_1183,
    },
    .{
        .label = "rs1_offset:bltz:64",
        .text = "bltz x6, 16",
        .mnemonic = "bltz",
        .xlen = 64,
        .operands = &operands_1184,
    },
    .{
        .label = "rs1_offset:bnez:64",
        .text = "bnez x6, 16",
        .mnemonic = "bnez",
        .xlen = 64,
        .operands = &operands_1185,
    },
    .{
        .label = "rs1_prefetch_offset:prefetch_i:64",
        .text = "prefetch.i x6, 32",
        .mnemonic = "prefetch.i",
        .xlen = 64,
        .operands = &operands_1186,
    },
    .{
        .label = "rs1_prefetch_offset:prefetch_r:64",
        .text = "prefetch.r x6, 32",
        .mnemonic = "prefetch.r",
        .xlen = 64,
        .operands = &operands_1187,
    },
    .{
        .label = "rs1_prefetch_offset:prefetch_w:64",
        .text = "prefetch.w x6, 32",
        .mnemonic = "prefetch.w",
        .xlen = 64,
        .operands = &operands_1188,
    },
    .{
        .label = "rs1_rs2:hfence_gvma:64",
        .text = "hfence.gvma x6, x7",
        .mnemonic = "hfence.gvma",
        .xlen = 64,
        .operands = &operands_1189,
    },
    .{
        .label = "rs1_rs2:hfence_vvma:64",
        .text = "hfence.vvma x6, x7",
        .mnemonic = "hfence.vvma",
        .xlen = 64,
        .operands = &operands_1190,
    },
    .{
        .label = "rs1_rs2:hinval_gvma:64",
        .text = "hinval.gvma x6, x7",
        .mnemonic = "hinval.gvma",
        .xlen = 64,
        .operands = &operands_1191,
    },
    .{
        .label = "rs1_rs2:hinval_vvma:64",
        .text = "hinval.vvma x6, x7",
        .mnemonic = "hinval.vvma",
        .xlen = 64,
        .operands = &operands_1192,
    },
    .{
        .label = "rs1_rs2:hsv_b:64",
        .text = "hsv.b x6, x7",
        .mnemonic = "hsv.b",
        .xlen = 64,
        .operands = &operands_1193,
    },
    .{
        .label = "rs1_rs2:hsv_d:64",
        .text = "hsv.d x6, x7",
        .mnemonic = "hsv.d",
        .xlen = 64,
        .operands = &operands_1194,
    },
    .{
        .label = "rs1_rs2:hsv_h:64",
        .text = "hsv.h x6, x7",
        .mnemonic = "hsv.h",
        .xlen = 64,
        .operands = &operands_1195,
    },
    .{
        .label = "rs1_rs2:hsv_w:64",
        .text = "hsv.w x6, x7",
        .mnemonic = "hsv.w",
        .xlen = 64,
        .operands = &operands_1196,
    },
    .{
        .label = "rs1_rs2:sfence_vma:64",
        .text = "sfence.vma x6, x7",
        .mnemonic = "sfence.vma",
        .xlen = 64,
        .operands = &operands_1197,
    },
    .{
        .label = "rs1_rs2:sinval_vma:64",
        .text = "sinval.vma x6, x7",
        .mnemonic = "sinval.vma",
        .xlen = 64,
        .operands = &operands_1198,
    },
    .{
        .label = "rs1_rs2_aq:sb_rl:64",
        .text = "sb.rl x7, x6",
        .mnemonic = "sb.rl",
        .xlen = 64,
        .operands = &operands_1199,
    },
    .{
        .label = "rs1_rs2_aq:sd_rl:64",
        .text = "sd.rl x7, x6",
        .mnemonic = "sd.rl",
        .xlen = 64,
        .operands = &operands_1200,
    },
    .{
        .label = "rs1_rs2_aq:sh_rl:64",
        .text = "sh.rl x7, x6",
        .mnemonic = "sh.rl",
        .xlen = 64,
        .operands = &operands_1201,
    },
    .{
        .label = "rs1_rs2_aq:sw_rl:64",
        .text = "sw.rl x7, x6",
        .mnemonic = "sw.rl",
        .xlen = 64,
        .operands = &operands_1202,
    },
    .{
        .label = "rs1_rs2_offset:beq:64",
        .text = "beq x6, x7, 16",
        .mnemonic = "beq",
        .xlen = 64,
        .operands = &operands_1203,
    },
    .{
        .label = "rs1_rs2_offset:bge:64",
        .text = "bge x6, x7, 16",
        .mnemonic = "bge",
        .xlen = 64,
        .operands = &operands_1204,
    },
    .{
        .label = "rs1_rs2_offset:bgeu:64",
        .text = "bgeu x6, x7, 16",
        .mnemonic = "bgeu",
        .xlen = 64,
        .operands = &operands_1205,
    },
    .{
        .label = "rs1_rs2_offset:blt:64",
        .text = "blt x6, x7, 16",
        .mnemonic = "blt",
        .xlen = 64,
        .operands = &operands_1206,
    },
    .{
        .label = "rs1_rs2_offset:bltu:64",
        .text = "bltu x6, x7, 16",
        .mnemonic = "bltu",
        .xlen = 64,
        .operands = &operands_1207,
    },
    .{
        .label = "rs1_rs2_offset:bne:64",
        .text = "bne x6, x7, 16",
        .mnemonic = "bne",
        .xlen = 64,
        .operands = &operands_1208,
    },
    .{
        .label = "rs2_imm_rs1:fsd:64",
        .text = "fsd x7, 16(x6)",
        .mnemonic = "fsd",
        .xlen = 64,
        .operands = &operands_1209,
    },
    .{
        .label = "rs2_imm_rs1:fsh:64",
        .text = "fsh x7, 16(x6)",
        .mnemonic = "fsh",
        .xlen = 64,
        .operands = &operands_1210,
    },
    .{
        .label = "rs2_imm_rs1:fsq:64",
        .text = "fsq x7, 16(x6)",
        .mnemonic = "fsq",
        .xlen = 64,
        .operands = &operands_1211,
    },
    .{
        .label = "rs2_imm_rs1:fsw:64",
        .text = "fsw x7, 16(x6)",
        .mnemonic = "fsw",
        .xlen = 64,
        .operands = &operands_1212,
    },
    .{
        .label = "rs2_imm_rs1:sb:64",
        .text = "sb x7, 16(x6)",
        .mnemonic = "sb",
        .xlen = 64,
        .operands = &operands_1213,
    },
    .{
        .label = "rs2_imm_rs1:sd:64",
        .text = "sd x7, 16(x6)",
        .mnemonic = "sd",
        .xlen = 64,
        .operands = &operands_1214,
    },
    .{
        .label = "rs2_imm_rs1:sh:64",
        .text = "sh x7, 16(x6)",
        .mnemonic = "sh",
        .xlen = 64,
        .operands = &operands_1215,
    },
    .{
        .label = "rs2_imm_rs1:sw:64",
        .text = "sw x7, 16(x6)",
        .mnemonic = "sw",
        .xlen = 64,
        .operands = &operands_1216,
    },
    .{
        .label = "rs2_offset:bgtz:64",
        .text = "bgtz x7, 16",
        .mnemonic = "bgtz",
        .xlen = 64,
        .operands = &operands_1217,
    },
    .{
        .label = "rs2_offset:blez:64",
        .text = "blez x7, 16",
        .mnemonic = "blez",
        .xlen = 64,
        .operands = &operands_1218,
    },
    .{
        .label = "rs2_rs1_offset:bgt:64",
        .text = "bgt x7, x6, 16",
        .mnemonic = "bgt",
        .xlen = 64,
        .operands = &operands_1219,
    },
    .{
        .label = "rs2_rs1_offset:bgtu:64",
        .text = "bgtu x7, x6, 16",
        .mnemonic = "bgtu",
        .xlen = 64,
        .operands = &operands_1220,
    },
    .{
        .label = "rs2_rs1_offset:ble:64",
        .text = "ble x7, x6, 16",
        .mnemonic = "ble",
        .xlen = 64,
        .operands = &operands_1221,
    },
    .{
        .label = "rs2_rs1_offset:bleu:64",
        .text = "bleu x7, x6, 16",
        .mnemonic = "bleu",
        .xlen = 64,
        .operands = &operands_1222,
    },
    .{
        .label = "sc:sc_d:64",
        .text = "sc.d.aqrl x5, x7, x6",
        .mnemonic = "sc.d",
        .xlen = 64,
        .operands = &operands_1223,
    },
    .{
        .label = "sc:sc_w:64",
        .text = "sc.w.aqrl x5, x7, x6",
        .mnemonic = "sc.w",
        .xlen = 64,
        .operands = &operands_1224,
    },
    .{
        .label = "vd_rs1:vfmv_s_f:64",
        .text = "vfmv.s.f v5, x6",
        .mnemonic = "vfmv.s.f",
        .xlen = 64,
        .operands = &operands_1225,
    },
    .{
        .label = "vd_rs1:vfmv_v_f:64",
        .text = "vfmv.v.f v5, x6",
        .mnemonic = "vfmv.v.f",
        .xlen = 64,
        .operands = &operands_1226,
    },
    .{
        .label = "vd_rs1:vl1r_v:64",
        .text = "vl1r.v v5, x6",
        .mnemonic = "vl1r.v",
        .xlen = 64,
        .operands = &operands_1227,
    },
    .{
        .label = "vd_rs1:vl1re16_v:64",
        .text = "vl1re16.v v5, x6",
        .mnemonic = "vl1re16.v",
        .xlen = 64,
        .operands = &operands_1228,
    },
    .{
        .label = "vd_rs1:vl1re32_v:64",
        .text = "vl1re32.v v5, x6",
        .mnemonic = "vl1re32.v",
        .xlen = 64,
        .operands = &operands_1229,
    },
    .{
        .label = "vd_rs1:vl1re64_v:64",
        .text = "vl1re64.v v5, x6",
        .mnemonic = "vl1re64.v",
        .xlen = 64,
        .operands = &operands_1230,
    },
    .{
        .label = "vd_rs1:vl1re8_v:64",
        .text = "vl1re8.v v5, x6",
        .mnemonic = "vl1re8.v",
        .xlen = 64,
        .operands = &operands_1231,
    },
    .{
        .label = "vd_rs1:vl2r_v:64",
        .text = "vl2r.v v5, x6",
        .mnemonic = "vl2r.v",
        .xlen = 64,
        .operands = &operands_1232,
    },
    .{
        .label = "vd_rs1:vl2re16_v:64",
        .text = "vl2re16.v v5, x6",
        .mnemonic = "vl2re16.v",
        .xlen = 64,
        .operands = &operands_1233,
    },
    .{
        .label = "vd_rs1:vl2re32_v:64",
        .text = "vl2re32.v v5, x6",
        .mnemonic = "vl2re32.v",
        .xlen = 64,
        .operands = &operands_1234,
    },
    .{
        .label = "vd_rs1:vl2re64_v:64",
        .text = "vl2re64.v v5, x6",
        .mnemonic = "vl2re64.v",
        .xlen = 64,
        .operands = &operands_1235,
    },
    .{
        .label = "vd_rs1:vl2re8_v:64",
        .text = "vl2re8.v v5, x6",
        .mnemonic = "vl2re8.v",
        .xlen = 64,
        .operands = &operands_1236,
    },
    .{
        .label = "vd_rs1:vl4r_v:64",
        .text = "vl4r.v v5, x6",
        .mnemonic = "vl4r.v",
        .xlen = 64,
        .operands = &operands_1237,
    },
    .{
        .label = "vd_rs1:vl4re16_v:64",
        .text = "vl4re16.v v5, x6",
        .mnemonic = "vl4re16.v",
        .xlen = 64,
        .operands = &operands_1238,
    },
    .{
        .label = "vd_rs1:vl4re32_v:64",
        .text = "vl4re32.v v5, x6",
        .mnemonic = "vl4re32.v",
        .xlen = 64,
        .operands = &operands_1239,
    },
    .{
        .label = "vd_rs1:vl4re64_v:64",
        .text = "vl4re64.v v5, x6",
        .mnemonic = "vl4re64.v",
        .xlen = 64,
        .operands = &operands_1240,
    },
    .{
        .label = "vd_rs1:vl4re8_v:64",
        .text = "vl4re8.v v5, x6",
        .mnemonic = "vl4re8.v",
        .xlen = 64,
        .operands = &operands_1241,
    },
    .{
        .label = "vd_rs1:vl8r_v:64",
        .text = "vl8r.v v5, x6",
        .mnemonic = "vl8r.v",
        .xlen = 64,
        .operands = &operands_1242,
    },
    .{
        .label = "vd_rs1:vl8re16_v:64",
        .text = "vl8re16.v v5, x6",
        .mnemonic = "vl8re16.v",
        .xlen = 64,
        .operands = &operands_1243,
    },
    .{
        .label = "vd_rs1:vl8re32_v:64",
        .text = "vl8re32.v v5, x6",
        .mnemonic = "vl8re32.v",
        .xlen = 64,
        .operands = &operands_1244,
    },
    .{
        .label = "vd_rs1:vl8re64_v:64",
        .text = "vl8re64.v v5, x6",
        .mnemonic = "vl8re64.v",
        .xlen = 64,
        .operands = &operands_1245,
    },
    .{
        .label = "vd_rs1:vl8re8_v:64",
        .text = "vl8re8.v v5, x6",
        .mnemonic = "vl8re8.v",
        .xlen = 64,
        .operands = &operands_1246,
    },
    .{
        .label = "vd_rs1:vle1_v:64",
        .text = "vle1.v v5, x6",
        .mnemonic = "vle1.v",
        .xlen = 64,
        .operands = &operands_1247,
    },
    .{
        .label = "vd_rs1:vlm_v:64",
        .text = "vlm.v v5, x6",
        .mnemonic = "vlm.v",
        .xlen = 64,
        .operands = &operands_1248,
    },
    .{
        .label = "vd_rs1:vmv_s_x:64",
        .text = "vmv.s.x v5, x6",
        .mnemonic = "vmv.s.x",
        .xlen = 64,
        .operands = &operands_1249,
    },
    .{
        .label = "vd_rs1:vmv_v_x:64",
        .text = "vmv.v.x v5, x6",
        .mnemonic = "vmv.v.x",
        .xlen = 64,
        .operands = &operands_1250,
    },
    .{
        .label = "vd_rs1_nf_vm:vle16_v:64",
        .text = "vle16.v v5, (x6), v0.t",
        .mnemonic = "vle16.v",
        .xlen = 64,
        .operands = &operands_1251,
    },
    .{
        .label = "vd_rs1_nf_vm:vle16ff_v:64",
        .text = "vle16ff.v v5, (x6), v0.t",
        .mnemonic = "vle16ff.v",
        .xlen = 64,
        .operands = &operands_1252,
    },
    .{
        .label = "vd_rs1_nf_vm:vle32_v:64",
        .text = "vle32.v v5, (x6), v0.t",
        .mnemonic = "vle32.v",
        .xlen = 64,
        .operands = &operands_1253,
    },
    .{
        .label = "vd_rs1_nf_vm:vle32ff_v:64",
        .text = "vle32ff.v v5, (x6), v0.t",
        .mnemonic = "vle32ff.v",
        .xlen = 64,
        .operands = &operands_1254,
    },
    .{
        .label = "vd_rs1_nf_vm:vle64_v:64",
        .text = "vle64.v v5, (x6), v0.t",
        .mnemonic = "vle64.v",
        .xlen = 64,
        .operands = &operands_1255,
    },
    .{
        .label = "vd_rs1_nf_vm:vle64ff_v:64",
        .text = "vle64ff.v v5, (x6), v0.t",
        .mnemonic = "vle64ff.v",
        .xlen = 64,
        .operands = &operands_1256,
    },
    .{
        .label = "vd_rs1_nf_vm:vle8_v:64",
        .text = "vle8.v v5, (x6), v0.t",
        .mnemonic = "vle8.v",
        .xlen = 64,
        .operands = &operands_1257,
    },
    .{
        .label = "vd_rs1_nf_vm:vle8ff_v:64",
        .text = "vle8ff.v v5, (x6), v0.t",
        .mnemonic = "vle8ff.v",
        .xlen = 64,
        .operands = &operands_1258,
    },
    .{
        .label = "vd_rs1_rs2_nf_vm:vlse16_v:64",
        .text = "vlse16.v v5, (x6), x7, v0.t",
        .mnemonic = "vlse16.v",
        .xlen = 64,
        .operands = &operands_1259,
    },
    .{
        .label = "vd_rs1_rs2_nf_vm:vlse32_v:64",
        .text = "vlse32.v v5, (x6), x7, v0.t",
        .mnemonic = "vlse32.v",
        .xlen = 64,
        .operands = &operands_1260,
    },
    .{
        .label = "vd_rs1_rs2_nf_vm:vlse64_v:64",
        .text = "vlse64.v v5, (x6), x7, v0.t",
        .mnemonic = "vlse64.v",
        .xlen = 64,
        .operands = &operands_1261,
    },
    .{
        .label = "vd_rs1_rs2_nf_vm:vlse8_v:64",
        .text = "vlse8.v v5, (x6), x7, v0.t",
        .mnemonic = "vlse8.v",
        .xlen = 64,
        .operands = &operands_1262,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vloxei16_v:64",
        .text = "vloxei16.v v5, (x6), v7, v0.t",
        .mnemonic = "vloxei16.v",
        .xlen = 64,
        .operands = &operands_1263,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vloxei32_v:64",
        .text = "vloxei32.v v5, (x6), v7, v0.t",
        .mnemonic = "vloxei32.v",
        .xlen = 64,
        .operands = &operands_1264,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vloxei64_v:64",
        .text = "vloxei64.v v5, (x6), v7, v0.t",
        .mnemonic = "vloxei64.v",
        .xlen = 64,
        .operands = &operands_1265,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vloxei8_v:64",
        .text = "vloxei8.v v5, (x6), v7, v0.t",
        .mnemonic = "vloxei8.v",
        .xlen = 64,
        .operands = &operands_1266,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vluxei16_v:64",
        .text = "vluxei16.v v5, (x6), v7, v0.t",
        .mnemonic = "vluxei16.v",
        .xlen = 64,
        .operands = &operands_1267,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vluxei32_v:64",
        .text = "vluxei32.v v5, (x6), v7, v0.t",
        .mnemonic = "vluxei32.v",
        .xlen = 64,
        .operands = &operands_1268,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vluxei64_v:64",
        .text = "vluxei64.v v5, (x6), v7, v0.t",
        .mnemonic = "vluxei64.v",
        .xlen = 64,
        .operands = &operands_1269,
    },
    .{
        .label = "vd_rs1_vs2_nf_vm:vluxei8_v:64",
        .text = "vluxei8.v v5, (x6), v7, v0.t",
        .mnemonic = "vluxei8.v",
        .xlen = 64,
        .operands = &operands_1270,
    },
    .{
        .label = "vd_simm5:vmv_v_i:64",
        .text = "vmv.v.i v5, -1",
        .mnemonic = "vmv.v.i",
        .xlen = 64,
        .operands = &operands_1271,
    },
    .{
        .label = "vd_vm:vid_v:64",
        .text = "vid.v v5, v0.t",
        .mnemonic = "vid.v",
        .xlen = 64,
        .operands = &operands_1272,
    },
    .{
        .label = "vd_vs1:vmv_v_v:64",
        .text = "vmv.v.v v5, v7",
        .mnemonic = "vmv.v.v",
        .xlen = 64,
        .operands = &operands_1273,
    },
    .{
        .label = "vd_vs2:vaesdf_vs:64",
        .text = "vaesdf.vs v5, v6",
        .mnemonic = "vaesdf.vs",
        .xlen = 64,
        .operands = &operands_1274,
    },
    .{
        .label = "vd_vs2:vaesdf_vv:64",
        .text = "vaesdf.vv v5, v6",
        .mnemonic = "vaesdf.vv",
        .xlen = 64,
        .operands = &operands_1275,
    },
    .{
        .label = "vd_vs2:vaesdm_vs:64",
        .text = "vaesdm.vs v5, v6",
        .mnemonic = "vaesdm.vs",
        .xlen = 64,
        .operands = &operands_1276,
    },
    .{
        .label = "vd_vs2:vaesdm_vv:64",
        .text = "vaesdm.vv v5, v6",
        .mnemonic = "vaesdm.vv",
        .xlen = 64,
        .operands = &operands_1277,
    },
    .{
        .label = "vd_vs2:vaesef_vs:64",
        .text = "vaesef.vs v5, v6",
        .mnemonic = "vaesef.vs",
        .xlen = 64,
        .operands = &operands_1278,
    },
    .{
        .label = "vd_vs2:vaesef_vv:64",
        .text = "vaesef.vv v5, v6",
        .mnemonic = "vaesef.vv",
        .xlen = 64,
        .operands = &operands_1279,
    },
    .{
        .label = "vd_vs2:vaesem_vs:64",
        .text = "vaesem.vs v5, v6",
        .mnemonic = "vaesem.vs",
        .xlen = 64,
        .operands = &operands_1280,
    },
    .{
        .label = "vd_vs2:vaesem_vv:64",
        .text = "vaesem.vv v5, v6",
        .mnemonic = "vaesem.vv",
        .xlen = 64,
        .operands = &operands_1281,
    },
    .{
        .label = "vd_vs2:vaesz_vs:64",
        .text = "vaesz.vs v5, v6",
        .mnemonic = "vaesz.vs",
        .xlen = 64,
        .operands = &operands_1282,
    },
    .{
        .label = "vd_vs2:vgmul_vv:64",
        .text = "vgmul.vv v5, v6",
        .mnemonic = "vgmul.vv",
        .xlen = 64,
        .operands = &operands_1283,
    },
    .{
        .label = "vd_vs2:vmv1r_v:64",
        .text = "vmv1r.v v5, v6",
        .mnemonic = "vmv1r.v",
        .xlen = 64,
        .operands = &operands_1284,
    },
    .{
        .label = "vd_vs2:vmv2r_v:64",
        .text = "vmv2r.v v5, v6",
        .mnemonic = "vmv2r.v",
        .xlen = 64,
        .operands = &operands_1285,
    },
    .{
        .label = "vd_vs2:vmv4r_v:64",
        .text = "vmv4r.v v5, v6",
        .mnemonic = "vmv4r.v",
        .xlen = 64,
        .operands = &operands_1286,
    },
    .{
        .label = "vd_vs2:vmv8r_v:64",
        .text = "vmv8r.v v5, v6",
        .mnemonic = "vmv8r.v",
        .xlen = 64,
        .operands = &operands_1287,
    },
    .{
        .label = "vd_vs2:vsm4r_vs:64",
        .text = "vsm4r.vs v5, v6",
        .mnemonic = "vsm4r.vs",
        .xlen = 64,
        .operands = &operands_1288,
    },
    .{
        .label = "vd_vs2:vsm4r_vv:64",
        .text = "vsm4r.vv v5, v6",
        .mnemonic = "vsm4r.vv",
        .xlen = 64,
        .operands = &operands_1289,
    },
    .{
        .label = "vd_vs2_rs1:vadc_vxm:64",
        .text = "vadc.vxm v5, v6, x7",
        .mnemonic = "vadc.vxm",
        .xlen = 64,
        .operands = &operands_1290,
    },
    .{
        .label = "vd_vs2_rs1:vfmerge_vfm:64",
        .text = "vfmerge.vfm v5, v6, x7",
        .mnemonic = "vfmerge.vfm",
        .xlen = 64,
        .operands = &operands_1291,
    },
    .{
        .label = "vd_vs2_rs1:vmadc_vx:64",
        .text = "vmadc.vx v5, v6, x7",
        .mnemonic = "vmadc.vx",
        .xlen = 64,
        .operands = &operands_1292,
    },
    .{
        .label = "vd_vs2_rs1:vmadc_vxm:64",
        .text = "vmadc.vxm v5, v6, x7",
        .mnemonic = "vmadc.vxm",
        .xlen = 64,
        .operands = &operands_1293,
    },
    .{
        .label = "vd_vs2_rs1:vmerge_vxm:64",
        .text = "vmerge.vxm v5, v6, x7",
        .mnemonic = "vmerge.vxm",
        .xlen = 64,
        .operands = &operands_1294,
    },
    .{
        .label = "vd_vs2_rs1:vmsbc_vx:64",
        .text = "vmsbc.vx v5, v6, x7",
        .mnemonic = "vmsbc.vx",
        .xlen = 64,
        .operands = &operands_1295,
    },
    .{
        .label = "vd_vs2_rs1:vmsbc_vxm:64",
        .text = "vmsbc.vxm v5, v6, x7",
        .mnemonic = "vmsbc.vxm",
        .xlen = 64,
        .operands = &operands_1296,
    },
    .{
        .label = "vd_vs2_rs1:vsbc_vxm:64",
        .text = "vsbc.vxm v5, v6, x7",
        .mnemonic = "vsbc.vxm",
        .xlen = 64,
        .operands = &operands_1297,
    },
    .{
        .label = "vd_vs2_rs1_vm:vaadd_vx:64",
        .text = "vaadd.vx v5, v6, x7, v0.t",
        .mnemonic = "vaadd.vx",
        .xlen = 64,
        .operands = &operands_1298,
    },
    .{
        .label = "vd_vs2_rs1_vm:vaaddu_vx:64",
        .text = "vaaddu.vx v5, v6, x7, v0.t",
        .mnemonic = "vaaddu.vx",
        .xlen = 64,
        .operands = &operands_1299,
    },
    .{
        .label = "vd_vs2_rs1_vm:vadd_vx:64",
        .text = "vadd.vx v5, v6, x7, v0.t",
        .mnemonic = "vadd.vx",
        .xlen = 64,
        .operands = &operands_1300,
    },
    .{
        .label = "vd_vs2_rs1_vm:vand_vx:64",
        .text = "vand.vx v5, v6, x7, v0.t",
        .mnemonic = "vand.vx",
        .xlen = 64,
        .operands = &operands_1301,
    },
    .{
        .label = "vd_vs2_rs1_vm:vandn_vx:64",
        .text = "vandn.vx v5, v6, x7, v0.t",
        .mnemonic = "vandn.vx",
        .xlen = 64,
        .operands = &operands_1302,
    },
    .{
        .label = "vd_vs2_rs1_vm:vasub_vx:64",
        .text = "vasub.vx v5, v6, x7, v0.t",
        .mnemonic = "vasub.vx",
        .xlen = 64,
        .operands = &operands_1303,
    },
    .{
        .label = "vd_vs2_rs1_vm:vasubu_vx:64",
        .text = "vasubu.vx v5, v6, x7, v0.t",
        .mnemonic = "vasubu.vx",
        .xlen = 64,
        .operands = &operands_1304,
    },
    .{
        .label = "vd_vs2_rs1_vm:vclmul_vx:64",
        .text = "vclmul.vx v5, v6, x7, v0.t",
        .mnemonic = "vclmul.vx",
        .xlen = 64,
        .operands = &operands_1305,
    },
    .{
        .label = "vd_vs2_rs1_vm:vclmulh_vx:64",
        .text = "vclmulh.vx v5, v6, x7, v0.t",
        .mnemonic = "vclmulh.vx",
        .xlen = 64,
        .operands = &operands_1306,
    },
    .{
        .label = "vd_vs2_rs1_vm:vdiv_vx:64",
        .text = "vdiv.vx v5, v6, x7, v0.t",
        .mnemonic = "vdiv.vx",
        .xlen = 64,
        .operands = &operands_1307,
    },
    .{
        .label = "vd_vs2_rs1_vm:vdivu_vx:64",
        .text = "vdivu.vx v5, v6, x7, v0.t",
        .mnemonic = "vdivu.vx",
        .xlen = 64,
        .operands = &operands_1308,
    },
    .{
        .label = "vd_vs2_rs1_vm:vdot4a_vx:64",
        .text = "vdot4a.vx v5, v6, x7, v0.t",
        .mnemonic = "vdot4a.vx",
        .xlen = 64,
        .operands = &operands_1309,
    },
    .{
        .label = "vd_vs2_rs1_vm:vdot4asu_vx:64",
        .text = "vdot4asu.vx v5, v6, x7, v0.t",
        .mnemonic = "vdot4asu.vx",
        .xlen = 64,
        .operands = &operands_1310,
    },
    .{
        .label = "vd_vs2_rs1_vm:vdot4au_vx:64",
        .text = "vdot4au.vx v5, v6, x7, v0.t",
        .mnemonic = "vdot4au.vx",
        .xlen = 64,
        .operands = &operands_1311,
    },
    .{
        .label = "vd_vs2_rs1_vm:vdot4aus_vx:64",
        .text = "vdot4aus.vx v5, v6, x7, v0.t",
        .mnemonic = "vdot4aus.vx",
        .xlen = 64,
        .operands = &operands_1312,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfadd_vf:64",
        .text = "vfadd.vf v5, v6, x7, v0.t",
        .mnemonic = "vfadd.vf",
        .xlen = 64,
        .operands = &operands_1313,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfdiv_vf:64",
        .text = "vfdiv.vf v5, v6, x7, v0.t",
        .mnemonic = "vfdiv.vf",
        .xlen = 64,
        .operands = &operands_1314,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfmacc_vf:64",
        .text = "vfmacc.vf v5, v6, x7, v0.t",
        .mnemonic = "vfmacc.vf",
        .xlen = 64,
        .operands = &operands_1315,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfmadd_vf:64",
        .text = "vfmadd.vf v5, v6, x7, v0.t",
        .mnemonic = "vfmadd.vf",
        .xlen = 64,
        .operands = &operands_1316,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfmax_vf:64",
        .text = "vfmax.vf v5, v6, x7, v0.t",
        .mnemonic = "vfmax.vf",
        .xlen = 64,
        .operands = &operands_1317,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfmin_vf:64",
        .text = "vfmin.vf v5, v6, x7, v0.t",
        .mnemonic = "vfmin.vf",
        .xlen = 64,
        .operands = &operands_1318,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfmsac_vf:64",
        .text = "vfmsac.vf v5, v6, x7, v0.t",
        .mnemonic = "vfmsac.vf",
        .xlen = 64,
        .operands = &operands_1319,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfmsub_vf:64",
        .text = "vfmsub.vf v5, v6, x7, v0.t",
        .mnemonic = "vfmsub.vf",
        .xlen = 64,
        .operands = &operands_1320,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfmul_vf:64",
        .text = "vfmul.vf v5, v6, x7, v0.t",
        .mnemonic = "vfmul.vf",
        .xlen = 64,
        .operands = &operands_1321,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfnmacc_vf:64",
        .text = "vfnmacc.vf v5, v6, x7, v0.t",
        .mnemonic = "vfnmacc.vf",
        .xlen = 64,
        .operands = &operands_1322,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfnmadd_vf:64",
        .text = "vfnmadd.vf v5, v6, x7, v0.t",
        .mnemonic = "vfnmadd.vf",
        .xlen = 64,
        .operands = &operands_1323,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfnmsac_vf:64",
        .text = "vfnmsac.vf v5, v6, x7, v0.t",
        .mnemonic = "vfnmsac.vf",
        .xlen = 64,
        .operands = &operands_1324,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfnmsub_vf:64",
        .text = "vfnmsub.vf v5, v6, x7, v0.t",
        .mnemonic = "vfnmsub.vf",
        .xlen = 64,
        .operands = &operands_1325,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfrdiv_vf:64",
        .text = "vfrdiv.vf v5, v6, x7, v0.t",
        .mnemonic = "vfrdiv.vf",
        .xlen = 64,
        .operands = &operands_1326,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfrsub_vf:64",
        .text = "vfrsub.vf v5, v6, x7, v0.t",
        .mnemonic = "vfrsub.vf",
        .xlen = 64,
        .operands = &operands_1327,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfsgnj_vf:64",
        .text = "vfsgnj.vf v5, v6, x7, v0.t",
        .mnemonic = "vfsgnj.vf",
        .xlen = 64,
        .operands = &operands_1328,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfsgnjn_vf:64",
        .text = "vfsgnjn.vf v5, v6, x7, v0.t",
        .mnemonic = "vfsgnjn.vf",
        .xlen = 64,
        .operands = &operands_1329,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfsgnjx_vf:64",
        .text = "vfsgnjx.vf v5, v6, x7, v0.t",
        .mnemonic = "vfsgnjx.vf",
        .xlen = 64,
        .operands = &operands_1330,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfslide1down_vf:64",
        .text = "vfslide1down.vf v5, v6, x7, v0.t",
        .mnemonic = "vfslide1down.vf",
        .xlen = 64,
        .operands = &operands_1331,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfslide1up_vf:64",
        .text = "vfslide1up.vf v5, v6, x7, v0.t",
        .mnemonic = "vfslide1up.vf",
        .xlen = 64,
        .operands = &operands_1332,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfsub_vf:64",
        .text = "vfsub.vf v5, v6, x7, v0.t",
        .mnemonic = "vfsub.vf",
        .xlen = 64,
        .operands = &operands_1333,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwadd_vf:64",
        .text = "vfwadd.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwadd.vf",
        .xlen = 64,
        .operands = &operands_1334,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwadd_wf:64",
        .text = "vfwadd.wf v5, v6, x7, v0.t",
        .mnemonic = "vfwadd.wf",
        .xlen = 64,
        .operands = &operands_1335,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwmacc_vf:64",
        .text = "vfwmacc.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwmacc.vf",
        .xlen = 64,
        .operands = &operands_1336,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwmaccbf16_vf:64",
        .text = "vfwmaccbf16.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwmaccbf16.vf",
        .xlen = 64,
        .operands = &operands_1337,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwmsac_vf:64",
        .text = "vfwmsac.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwmsac.vf",
        .xlen = 64,
        .operands = &operands_1338,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwmul_vf:64",
        .text = "vfwmul.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwmul.vf",
        .xlen = 64,
        .operands = &operands_1339,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwnmacc_vf:64",
        .text = "vfwnmacc.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwnmacc.vf",
        .xlen = 64,
        .operands = &operands_1340,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwnmsac_vf:64",
        .text = "vfwnmsac.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwnmsac.vf",
        .xlen = 64,
        .operands = &operands_1341,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwsub_vf:64",
        .text = "vfwsub.vf v5, v6, x7, v0.t",
        .mnemonic = "vfwsub.vf",
        .xlen = 64,
        .operands = &operands_1342,
    },
    .{
        .label = "vd_vs2_rs1_vm:vfwsub_wf:64",
        .text = "vfwsub.wf v5, v6, x7, v0.t",
        .mnemonic = "vfwsub.wf",
        .xlen = 64,
        .operands = &operands_1343,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmacc_vx:64",
        .text = "vmacc.vx v5, v6, x7, v0.t",
        .mnemonic = "vmacc.vx",
        .xlen = 64,
        .operands = &operands_1344,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmadd_vx:64",
        .text = "vmadd.vx v5, v6, x7, v0.t",
        .mnemonic = "vmadd.vx",
        .xlen = 64,
        .operands = &operands_1345,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmax_vx:64",
        .text = "vmax.vx v5, v6, x7, v0.t",
        .mnemonic = "vmax.vx",
        .xlen = 64,
        .operands = &operands_1346,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmaxu_vx:64",
        .text = "vmaxu.vx v5, v6, x7, v0.t",
        .mnemonic = "vmaxu.vx",
        .xlen = 64,
        .operands = &operands_1347,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmfeq_vf:64",
        .text = "vmfeq.vf v5, v6, x7, v0.t",
        .mnemonic = "vmfeq.vf",
        .xlen = 64,
        .operands = &operands_1348,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmfge_vf:64",
        .text = "vmfge.vf v5, v6, x7, v0.t",
        .mnemonic = "vmfge.vf",
        .xlen = 64,
        .operands = &operands_1349,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmfgt_vf:64",
        .text = "vmfgt.vf v5, v6, x7, v0.t",
        .mnemonic = "vmfgt.vf",
        .xlen = 64,
        .operands = &operands_1350,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmfle_vf:64",
        .text = "vmfle.vf v5, v6, x7, v0.t",
        .mnemonic = "vmfle.vf",
        .xlen = 64,
        .operands = &operands_1351,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmflt_vf:64",
        .text = "vmflt.vf v5, v6, x7, v0.t",
        .mnemonic = "vmflt.vf",
        .xlen = 64,
        .operands = &operands_1352,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmfne_vf:64",
        .text = "vmfne.vf v5, v6, x7, v0.t",
        .mnemonic = "vmfne.vf",
        .xlen = 64,
        .operands = &operands_1353,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmin_vx:64",
        .text = "vmin.vx v5, v6, x7, v0.t",
        .mnemonic = "vmin.vx",
        .xlen = 64,
        .operands = &operands_1354,
    },
    .{
        .label = "vd_vs2_rs1_vm:vminu_vx:64",
        .text = "vminu.vx v5, v6, x7, v0.t",
        .mnemonic = "vminu.vx",
        .xlen = 64,
        .operands = &operands_1355,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmseq_vx:64",
        .text = "vmseq.vx v5, v6, x7, v0.t",
        .mnemonic = "vmseq.vx",
        .xlen = 64,
        .operands = &operands_1356,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmsgt_vx:64",
        .text = "vmsgt.vx v5, v6, x7, v0.t",
        .mnemonic = "vmsgt.vx",
        .xlen = 64,
        .operands = &operands_1357,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmsgtu_vx:64",
        .text = "vmsgtu.vx v5, v6, x7, v0.t",
        .mnemonic = "vmsgtu.vx",
        .xlen = 64,
        .operands = &operands_1358,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmsle_vx:64",
        .text = "vmsle.vx v5, v6, x7, v0.t",
        .mnemonic = "vmsle.vx",
        .xlen = 64,
        .operands = &operands_1359,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmsleu_vx:64",
        .text = "vmsleu.vx v5, v6, x7, v0.t",
        .mnemonic = "vmsleu.vx",
        .xlen = 64,
        .operands = &operands_1360,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmslt_vx:64",
        .text = "vmslt.vx v5, v6, x7, v0.t",
        .mnemonic = "vmslt.vx",
        .xlen = 64,
        .operands = &operands_1361,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmsltu_vx:64",
        .text = "vmsltu.vx v5, v6, x7, v0.t",
        .mnemonic = "vmsltu.vx",
        .xlen = 64,
        .operands = &operands_1362,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmsne_vx:64",
        .text = "vmsne.vx v5, v6, x7, v0.t",
        .mnemonic = "vmsne.vx",
        .xlen = 64,
        .operands = &operands_1363,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmul_vx:64",
        .text = "vmul.vx v5, v6, x7, v0.t",
        .mnemonic = "vmul.vx",
        .xlen = 64,
        .operands = &operands_1364,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmulh_vx:64",
        .text = "vmulh.vx v5, v6, x7, v0.t",
        .mnemonic = "vmulh.vx",
        .xlen = 64,
        .operands = &operands_1365,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmulhsu_vx:64",
        .text = "vmulhsu.vx v5, v6, x7, v0.t",
        .mnemonic = "vmulhsu.vx",
        .xlen = 64,
        .operands = &operands_1366,
    },
    .{
        .label = "vd_vs2_rs1_vm:vmulhu_vx:64",
        .text = "vmulhu.vx v5, v6, x7, v0.t",
        .mnemonic = "vmulhu.vx",
        .xlen = 64,
        .operands = &operands_1367,
    },
    .{
        .label = "vd_vs2_rs1_vm:vnclip_wx:64",
        .text = "vnclip.wx v5, v6, x7, v0.t",
        .mnemonic = "vnclip.wx",
        .xlen = 64,
        .operands = &operands_1368,
    },
    .{
        .label = "vd_vs2_rs1_vm:vnclipu_wx:64",
        .text = "vnclipu.wx v5, v6, x7, v0.t",
        .mnemonic = "vnclipu.wx",
        .xlen = 64,
        .operands = &operands_1369,
    },
    .{
        .label = "vd_vs2_rs1_vm:vnmsac_vx:64",
        .text = "vnmsac.vx v5, v6, x7, v0.t",
        .mnemonic = "vnmsac.vx",
        .xlen = 64,
        .operands = &operands_1370,
    },
    .{
        .label = "vd_vs2_rs1_vm:vnmsub_vx:64",
        .text = "vnmsub.vx v5, v6, x7, v0.t",
        .mnemonic = "vnmsub.vx",
        .xlen = 64,
        .operands = &operands_1371,
    },
    .{
        .label = "vd_vs2_rs1_vm:vnsra_wx:64",
        .text = "vnsra.wx v5, v6, x7, v0.t",
        .mnemonic = "vnsra.wx",
        .xlen = 64,
        .operands = &operands_1372,
    },
    .{
        .label = "vd_vs2_rs1_vm:vnsrl_wx:64",
        .text = "vnsrl.wx v5, v6, x7, v0.t",
        .mnemonic = "vnsrl.wx",
        .xlen = 64,
        .operands = &operands_1373,
    },
    .{
        .label = "vd_vs2_rs1_vm:vor_vx:64",
        .text = "vor.vx v5, v6, x7, v0.t",
        .mnemonic = "vor.vx",
        .xlen = 64,
        .operands = &operands_1374,
    },
    .{
        .label = "vd_vs2_rs1_vm:vrem_vx:64",
        .text = "vrem.vx v5, v6, x7, v0.t",
        .mnemonic = "vrem.vx",
        .xlen = 64,
        .operands = &operands_1375,
    },
    .{
        .label = "vd_vs2_rs1_vm:vremu_vx:64",
        .text = "vremu.vx v5, v6, x7, v0.t",
        .mnemonic = "vremu.vx",
        .xlen = 64,
        .operands = &operands_1376,
    },
    .{
        .label = "vd_vs2_rs1_vm:vrgather_vx:64",
        .text = "vrgather.vx v5, v6, x7, v0.t",
        .mnemonic = "vrgather.vx",
        .xlen = 64,
        .operands = &operands_1377,
    },
    .{
        .label = "vd_vs2_rs1_vm:vrol_vx:64",
        .text = "vrol.vx v5, v6, x7, v0.t",
        .mnemonic = "vrol.vx",
        .xlen = 64,
        .operands = &operands_1378,
    },
    .{
        .label = "vd_vs2_rs1_vm:vror_vx:64",
        .text = "vror.vx v5, v6, x7, v0.t",
        .mnemonic = "vror.vx",
        .xlen = 64,
        .operands = &operands_1379,
    },
    .{
        .label = "vd_vs2_rs1_vm:vrsub_vx:64",
        .text = "vrsub.vx v5, v6, x7, v0.t",
        .mnemonic = "vrsub.vx",
        .xlen = 64,
        .operands = &operands_1380,
    },
    .{
        .label = "vd_vs2_rs1_vm:vsadd_vx:64",
        .text = "vsadd.vx v5, v6, x7, v0.t",
        .mnemonic = "vsadd.vx",
        .xlen = 64,
        .operands = &operands_1381,
    },
    .{
        .label = "vd_vs2_rs1_vm:vsaddu_vx:64",
        .text = "vsaddu.vx v5, v6, x7, v0.t",
        .mnemonic = "vsaddu.vx",
        .xlen = 64,
        .operands = &operands_1382,
    },
    .{
        .label = "vd_vs2_rs1_vm:vslide1down_vx:64",
        .text = "vslide1down.vx v5, v6, x7, v0.t",
        .mnemonic = "vslide1down.vx",
        .xlen = 64,
        .operands = &operands_1383,
    },
    .{
        .label = "vd_vs2_rs1_vm:vslide1up_vx:64",
        .text = "vslide1up.vx v5, v6, x7, v0.t",
        .mnemonic = "vslide1up.vx",
        .xlen = 64,
        .operands = &operands_1384,
    },
    .{
        .label = "vd_vs2_rs1_vm:vslidedown_vx:64",
        .text = "vslidedown.vx v5, v6, x7, v0.t",
        .mnemonic = "vslidedown.vx",
        .xlen = 64,
        .operands = &operands_1385,
    },
    .{
        .label = "vd_vs2_rs1_vm:vslideup_vx:64",
        .text = "vslideup.vx v5, v6, x7, v0.t",
        .mnemonic = "vslideup.vx",
        .xlen = 64,
        .operands = &operands_1386,
    },
    .{
        .label = "vd_vs2_rs1_vm:vsll_vx:64",
        .text = "vsll.vx v5, v6, x7, v0.t",
        .mnemonic = "vsll.vx",
        .xlen = 64,
        .operands = &operands_1387,
    },
    .{
        .label = "vd_vs2_rs1_vm:vsmul_vx:64",
        .text = "vsmul.vx v5, v6, x7, v0.t",
        .mnemonic = "vsmul.vx",
        .xlen = 64,
        .operands = &operands_1388,
    },
    .{
        .label = "vd_vs2_rs1_vm:vsra_vx:64",
        .text = "vsra.vx v5, v6, x7, v0.t",
        .mnemonic = "vsra.vx",
        .xlen = 64,
        .operands = &operands_1389,
    },
    .{
        .label = "vd_vs2_rs1_vm:vsrl_vx:64",
        .text = "vsrl.vx v5, v6, x7, v0.t",
        .mnemonic = "vsrl.vx",
        .xlen = 64,
        .operands = &operands_1390,
    },
    .{
        .label = "vd_vs2_rs1_vm:vssra_vx:64",
        .text = "vssra.vx v5, v6, x7, v0.t",
        .mnemonic = "vssra.vx",
        .xlen = 64,
        .operands = &operands_1391,
    },
    .{
        .label = "vd_vs2_rs1_vm:vssrl_vx:64",
        .text = "vssrl.vx v5, v6, x7, v0.t",
        .mnemonic = "vssrl.vx",
        .xlen = 64,
        .operands = &operands_1392,
    },
    .{
        .label = "vd_vs2_rs1_vm:vssub_vx:64",
        .text = "vssub.vx v5, v6, x7, v0.t",
        .mnemonic = "vssub.vx",
        .xlen = 64,
        .operands = &operands_1393,
    },
    .{
        .label = "vd_vs2_rs1_vm:vssubu_vx:64",
        .text = "vssubu.vx v5, v6, x7, v0.t",
        .mnemonic = "vssubu.vx",
        .xlen = 64,
        .operands = &operands_1394,
    },
    .{
        .label = "vd_vs2_rs1_vm:vsub_vx:64",
        .text = "vsub.vx v5, v6, x7, v0.t",
        .mnemonic = "vsub.vx",
        .xlen = 64,
        .operands = &operands_1395,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwadd_vx:64",
        .text = "vwadd.vx v5, v6, x7, v0.t",
        .mnemonic = "vwadd.vx",
        .xlen = 64,
        .operands = &operands_1396,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwadd_wx:64",
        .text = "vwadd.wx v5, v6, x7, v0.t",
        .mnemonic = "vwadd.wx",
        .xlen = 64,
        .operands = &operands_1397,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwaddu_vx:64",
        .text = "vwaddu.vx v5, v6, x7, v0.t",
        .mnemonic = "vwaddu.vx",
        .xlen = 64,
        .operands = &operands_1398,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwaddu_wx:64",
        .text = "vwaddu.wx v5, v6, x7, v0.t",
        .mnemonic = "vwaddu.wx",
        .xlen = 64,
        .operands = &operands_1399,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwmacc_vx:64",
        .text = "vwmacc.vx v5, v6, x7, v0.t",
        .mnemonic = "vwmacc.vx",
        .xlen = 64,
        .operands = &operands_1400,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwmaccsu_vx:64",
        .text = "vwmaccsu.vx v5, v6, x7, v0.t",
        .mnemonic = "vwmaccsu.vx",
        .xlen = 64,
        .operands = &operands_1401,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwmaccu_vx:64",
        .text = "vwmaccu.vx v5, v6, x7, v0.t",
        .mnemonic = "vwmaccu.vx",
        .xlen = 64,
        .operands = &operands_1402,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwmaccus_vx:64",
        .text = "vwmaccus.vx v5, v6, x7, v0.t",
        .mnemonic = "vwmaccus.vx",
        .xlen = 64,
        .operands = &operands_1403,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwmul_vx:64",
        .text = "vwmul.vx v5, v6, x7, v0.t",
        .mnemonic = "vwmul.vx",
        .xlen = 64,
        .operands = &operands_1404,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwmulsu_vx:64",
        .text = "vwmulsu.vx v5, v6, x7, v0.t",
        .mnemonic = "vwmulsu.vx",
        .xlen = 64,
        .operands = &operands_1405,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwmulu_vx:64",
        .text = "vwmulu.vx v5, v6, x7, v0.t",
        .mnemonic = "vwmulu.vx",
        .xlen = 64,
        .operands = &operands_1406,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwsll_vx:64",
        .text = "vwsll.vx v5, v6, x7, v0.t",
        .mnemonic = "vwsll.vx",
        .xlen = 64,
        .operands = &operands_1407,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwsub_vx:64",
        .text = "vwsub.vx v5, v6, x7, v0.t",
        .mnemonic = "vwsub.vx",
        .xlen = 64,
        .operands = &operands_1408,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwsub_wx:64",
        .text = "vwsub.wx v5, v6, x7, v0.t",
        .mnemonic = "vwsub.wx",
        .xlen = 64,
        .operands = &operands_1409,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwsubu_vx:64",
        .text = "vwsubu.vx v5, v6, x7, v0.t",
        .mnemonic = "vwsubu.vx",
        .xlen = 64,
        .operands = &operands_1410,
    },
    .{
        .label = "vd_vs2_rs1_vm:vwsubu_wx:64",
        .text = "vwsubu.wx v5, v6, x7, v0.t",
        .mnemonic = "vwsubu.wx",
        .xlen = 64,
        .operands = &operands_1411,
    },
    .{
        .label = "vd_vs2_rs1_vm:vxor_vx:64",
        .text = "vxor.vx v5, v6, x7, v0.t",
        .mnemonic = "vxor.vx",
        .xlen = 64,
        .operands = &operands_1412,
    },
    .{
        .label = "vd_vs2_simm5:vadc_vim:64",
        .text = "vadc.vim v5, v6, -1",
        .mnemonic = "vadc.vim",
        .xlen = 64,
        .operands = &operands_1413,
    },
    .{
        .label = "vd_vs2_simm5:vmadc_vi:64",
        .text = "vmadc.vi v5, v6, -1",
        .mnemonic = "vmadc.vi",
        .xlen = 64,
        .operands = &operands_1414,
    },
    .{
        .label = "vd_vs2_simm5:vmadc_vim:64",
        .text = "vmadc.vim v5, v6, -1",
        .mnemonic = "vmadc.vim",
        .xlen = 64,
        .operands = &operands_1415,
    },
    .{
        .label = "vd_vs2_simm5:vmerge_vim:64",
        .text = "vmerge.vim v5, v6, -1",
        .mnemonic = "vmerge.vim",
        .xlen = 64,
        .operands = &operands_1416,
    },
    .{
        .label = "vd_vs2_simm5_vm:vadd_vi:64",
        .text = "vadd.vi v5, v6, -1, v0.t",
        .mnemonic = "vadd.vi",
        .xlen = 64,
        .operands = &operands_1417,
    },
    .{
        .label = "vd_vs2_simm5_vm:vand_vi:64",
        .text = "vand.vi v5, v6, -1, v0.t",
        .mnemonic = "vand.vi",
        .xlen = 64,
        .operands = &operands_1418,
    },
    .{
        .label = "vd_vs2_simm5_vm:vmseq_vi:64",
        .text = "vmseq.vi v5, v6, -1, v0.t",
        .mnemonic = "vmseq.vi",
        .xlen = 64,
        .operands = &operands_1419,
    },
    .{
        .label = "vd_vs2_simm5_vm:vmsgt_vi:64",
        .text = "vmsgt.vi v5, v6, -1, v0.t",
        .mnemonic = "vmsgt.vi",
        .xlen = 64,
        .operands = &operands_1420,
    },
    .{
        .label = "vd_vs2_simm5_vm:vmsgtu_vi:64",
        .text = "vmsgtu.vi v5, v6, -1, v0.t",
        .mnemonic = "vmsgtu.vi",
        .xlen = 64,
        .operands = &operands_1421,
    },
    .{
        .label = "vd_vs2_simm5_vm:vmsle_vi:64",
        .text = "vmsle.vi v5, v6, -1, v0.t",
        .mnemonic = "vmsle.vi",
        .xlen = 64,
        .operands = &operands_1422,
    },
    .{
        .label = "vd_vs2_simm5_vm:vmsleu_vi:64",
        .text = "vmsleu.vi v5, v6, -1, v0.t",
        .mnemonic = "vmsleu.vi",
        .xlen = 64,
        .operands = &operands_1423,
    },
    .{
        .label = "vd_vs2_simm5_vm:vmsne_vi:64",
        .text = "vmsne.vi v5, v6, -1, v0.t",
        .mnemonic = "vmsne.vi",
        .xlen = 64,
        .operands = &operands_1424,
    },
    .{
        .label = "vd_vs2_simm5_vm:vor_vi:64",
        .text = "vor.vi v5, v6, -1, v0.t",
        .mnemonic = "vor.vi",
        .xlen = 64,
        .operands = &operands_1425,
    },
    .{
        .label = "vd_vs2_simm5_vm:vrsub_vi:64",
        .text = "vrsub.vi v5, v6, -1, v0.t",
        .mnemonic = "vrsub.vi",
        .xlen = 64,
        .operands = &operands_1426,
    },
    .{
        .label = "vd_vs2_simm5_vm:vsadd_vi:64",
        .text = "vsadd.vi v5, v6, -1, v0.t",
        .mnemonic = "vsadd.vi",
        .xlen = 64,
        .operands = &operands_1427,
    },
    .{
        .label = "vd_vs2_simm5_vm:vsaddu_vi:64",
        .text = "vsaddu.vi v5, v6, -1, v0.t",
        .mnemonic = "vsaddu.vi",
        .xlen = 64,
        .operands = &operands_1428,
    },
    .{
        .label = "vd_vs2_simm5_vm:vxor_vi:64",
        .text = "vxor.vi v5, v6, -1, v0.t",
        .mnemonic = "vxor.vi",
        .xlen = 64,
        .operands = &operands_1429,
    },
    .{
        .label = "vd_vs2_vm:vabs_v:64",
        .text = "vabs.v v5, v6, v0.t",
        .mnemonic = "vabs.v",
        .xlen = 64,
        .operands = &operands_1430,
    },
    .{
        .label = "vd_vs2_vm:vbrev8_v:64",
        .text = "vbrev8.v v5, v6, v0.t",
        .mnemonic = "vbrev8.v",
        .xlen = 64,
        .operands = &operands_1431,
    },
    .{
        .label = "vd_vs2_vm:vbrev_v:64",
        .text = "vbrev.v v5, v6, v0.t",
        .mnemonic = "vbrev.v",
        .xlen = 64,
        .operands = &operands_1432,
    },
    .{
        .label = "vd_vs2_vm:vclz_v:64",
        .text = "vclz.v v5, v6, v0.t",
        .mnemonic = "vclz.v",
        .xlen = 64,
        .operands = &operands_1433,
    },
    .{
        .label = "vd_vs2_vm:vcpop_v:64",
        .text = "vcpop.v v5, v6, v0.t",
        .mnemonic = "vcpop.v",
        .xlen = 64,
        .operands = &operands_1434,
    },
    .{
        .label = "vd_vs2_vm:vctz_v:64",
        .text = "vctz.v v5, v6, v0.t",
        .mnemonic = "vctz.v",
        .xlen = 64,
        .operands = &operands_1435,
    },
    .{
        .label = "vd_vs2_vm:vfclass_v:64",
        .text = "vfclass.v v5, v6, v0.t",
        .mnemonic = "vfclass.v",
        .xlen = 64,
        .operands = &operands_1436,
    },
    .{
        .label = "vd_vs2_vm:vfcvt_f_x_v:64",
        .text = "vfcvt.f.x.v v5, v6, v0.t",
        .mnemonic = "vfcvt.f.x.v",
        .xlen = 64,
        .operands = &operands_1437,
    },
    .{
        .label = "vd_vs2_vm:vfcvt_f_xu_v:64",
        .text = "vfcvt.f.xu.v v5, v6, v0.t",
        .mnemonic = "vfcvt.f.xu.v",
        .xlen = 64,
        .operands = &operands_1438,
    },
    .{
        .label = "vd_vs2_vm:vfcvt_rtz_x_f_v:64",
        .text = "vfcvt.rtz.x.f.v v5, v6, v0.t",
        .mnemonic = "vfcvt.rtz.x.f.v",
        .xlen = 64,
        .operands = &operands_1439,
    },
    .{
        .label = "vd_vs2_vm:vfcvt_rtz_xu_f_v:64",
        .text = "vfcvt.rtz.xu.f.v v5, v6, v0.t",
        .mnemonic = "vfcvt.rtz.xu.f.v",
        .xlen = 64,
        .operands = &operands_1440,
    },
    .{
        .label = "vd_vs2_vm:vfcvt_x_f_v:64",
        .text = "vfcvt.x.f.v v5, v6, v0.t",
        .mnemonic = "vfcvt.x.f.v",
        .xlen = 64,
        .operands = &operands_1441,
    },
    .{
        .label = "vd_vs2_vm:vfcvt_xu_f_v:64",
        .text = "vfcvt.xu.f.v v5, v6, v0.t",
        .mnemonic = "vfcvt.xu.f.v",
        .xlen = 64,
        .operands = &operands_1442,
    },
    .{
        .label = "vd_vs2_vm:vfext_vf2:64",
        .text = "vfext.vf2 v5, v6, v0.t",
        .mnemonic = "vfext.vf2",
        .xlen = 64,
        .operands = &operands_1443,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_f_f_q:64",
        .text = "vfncvt.f.f.q v5, v6, v0.t",
        .mnemonic = "vfncvt.f.f.q",
        .xlen = 64,
        .operands = &operands_1444,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_f_f_w:64",
        .text = "vfncvt.f.f.w v5, v6, v0.t",
        .mnemonic = "vfncvt.f.f.w",
        .xlen = 64,
        .operands = &operands_1445,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_f_x_w:64",
        .text = "vfncvt.f.x.w v5, v6, v0.t",
        .mnemonic = "vfncvt.f.x.w",
        .xlen = 64,
        .operands = &operands_1446,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_f_xu_w:64",
        .text = "vfncvt.f.xu.w v5, v6, v0.t",
        .mnemonic = "vfncvt.f.xu.w",
        .xlen = 64,
        .operands = &operands_1447,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_rod_f_f_w:64",
        .text = "vfncvt.rod.f.f.w v5, v6, v0.t",
        .mnemonic = "vfncvt.rod.f.f.w",
        .xlen = 64,
        .operands = &operands_1448,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_rtz_x_f_w:64",
        .text = "vfncvt.rtz.x.f.w v5, v6, v0.t",
        .mnemonic = "vfncvt.rtz.x.f.w",
        .xlen = 64,
        .operands = &operands_1449,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_rtz_xu_f_w:64",
        .text = "vfncvt.rtz.xu.f.w v5, v6, v0.t",
        .mnemonic = "vfncvt.rtz.xu.f.w",
        .xlen = 64,
        .operands = &operands_1450,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_sat_f_f_q:64",
        .text = "vfncvt.sat.f.f.q v5, v6, v0.t",
        .mnemonic = "vfncvt.sat.f.f.q",
        .xlen = 64,
        .operands = &operands_1451,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_x_f_w:64",
        .text = "vfncvt.x.f.w v5, v6, v0.t",
        .mnemonic = "vfncvt.x.f.w",
        .xlen = 64,
        .operands = &operands_1452,
    },
    .{
        .label = "vd_vs2_vm:vfncvt_xu_f_w:64",
        .text = "vfncvt.xu.f.w v5, v6, v0.t",
        .mnemonic = "vfncvt.xu.f.w",
        .xlen = 64,
        .operands = &operands_1453,
    },
    .{
        .label = "vd_vs2_vm:vfncvtbf16_f_f_w:64",
        .text = "vfncvtbf16.f.f.w v5, v6, v0.t",
        .mnemonic = "vfncvtbf16.f.f.w",
        .xlen = 64,
        .operands = &operands_1454,
    },
    .{
        .label = "vd_vs2_vm:vfncvtbf16_sat_f_f_w:64",
        .text = "vfncvtbf16.sat.f.f.w v5, v6, v0.t",
        .mnemonic = "vfncvtbf16.sat.f.f.w",
        .xlen = 64,
        .operands = &operands_1455,
    },
    .{
        .label = "vd_vs2_vm:vfrec7_v:64",
        .text = "vfrec7.v v5, v6, v0.t",
        .mnemonic = "vfrec7.v",
        .xlen = 64,
        .operands = &operands_1456,
    },
    .{
        .label = "vd_vs2_vm:vfrsqrt7_v:64",
        .text = "vfrsqrt7.v v5, v6, v0.t",
        .mnemonic = "vfrsqrt7.v",
        .xlen = 64,
        .operands = &operands_1457,
    },
    .{
        .label = "vd_vs2_vm:vfsqrt_v:64",
        .text = "vfsqrt.v v5, v6, v0.t",
        .mnemonic = "vfsqrt.v",
        .xlen = 64,
        .operands = &operands_1458,
    },
    .{
        .label = "vd_vs2_vm:vfwcvt_f_f_v:64",
        .text = "vfwcvt.f.f.v v5, v6, v0.t",
        .mnemonic = "vfwcvt.f.f.v",
        .xlen = 64,
        .operands = &operands_1459,
    },
    .{
        .label = "vd_vs2_vm:vfwcvt_f_x_v:64",
        .text = "vfwcvt.f.x.v v5, v6, v0.t",
        .mnemonic = "vfwcvt.f.x.v",
        .xlen = 64,
        .operands = &operands_1460,
    },
    .{
        .label = "vd_vs2_vm:vfwcvt_f_xu_v:64",
        .text = "vfwcvt.f.xu.v v5, v6, v0.t",
        .mnemonic = "vfwcvt.f.xu.v",
        .xlen = 64,
        .operands = &operands_1461,
    },
    .{
        .label = "vd_vs2_vm:vfwcvt_rtz_x_f_v:64",
        .text = "vfwcvt.rtz.x.f.v v5, v6, v0.t",
        .mnemonic = "vfwcvt.rtz.x.f.v",
        .xlen = 64,
        .operands = &operands_1462,
    },
    .{
        .label = "vd_vs2_vm:vfwcvt_rtz_xu_f_v:64",
        .text = "vfwcvt.rtz.xu.f.v v5, v6, v0.t",
        .mnemonic = "vfwcvt.rtz.xu.f.v",
        .xlen = 64,
        .operands = &operands_1463,
    },
    .{
        .label = "vd_vs2_vm:vfwcvt_x_f_v:64",
        .text = "vfwcvt.x.f.v v5, v6, v0.t",
        .mnemonic = "vfwcvt.x.f.v",
        .xlen = 64,
        .operands = &operands_1464,
    },
    .{
        .label = "vd_vs2_vm:vfwcvt_xu_f_v:64",
        .text = "vfwcvt.xu.f.v v5, v6, v0.t",
        .mnemonic = "vfwcvt.xu.f.v",
        .xlen = 64,
        .operands = &operands_1465,
    },
    .{
        .label = "vd_vs2_vm:vfwcvtbf16_f_f_v:64",
        .text = "vfwcvtbf16.f.f.v v5, v6, v0.t",
        .mnemonic = "vfwcvtbf16.f.f.v",
        .xlen = 64,
        .operands = &operands_1466,
    },
    .{
        .label = "vd_vs2_vm:viota_m:64",
        .text = "viota.m v5, v6, v0.t",
        .mnemonic = "viota.m",
        .xlen = 64,
        .operands = &operands_1467,
    },
    .{
        .label = "vd_vs2_vm:vmsbf_m:64",
        .text = "vmsbf.m v5, v6, v0.t",
        .mnemonic = "vmsbf.m",
        .xlen = 64,
        .operands = &operands_1468,
    },
    .{
        .label = "vd_vs2_vm:vmsif_m:64",
        .text = "vmsif.m v5, v6, v0.t",
        .mnemonic = "vmsif.m",
        .xlen = 64,
        .operands = &operands_1469,
    },
    .{
        .label = "vd_vs2_vm:vmsof_m:64",
        .text = "vmsof.m v5, v6, v0.t",
        .mnemonic = "vmsof.m",
        .xlen = 64,
        .operands = &operands_1470,
    },
    .{
        .label = "vd_vs2_vm:vrev8_v:64",
        .text = "vrev8.v v5, v6, v0.t",
        .mnemonic = "vrev8.v",
        .xlen = 64,
        .operands = &operands_1471,
    },
    .{
        .label = "vd_vs2_vm:vsext_vf2:64",
        .text = "vsext.vf2 v5, v6, v0.t",
        .mnemonic = "vsext.vf2",
        .xlen = 64,
        .operands = &operands_1472,
    },
    .{
        .label = "vd_vs2_vm:vsext_vf4:64",
        .text = "vsext.vf4 v5, v6, v0.t",
        .mnemonic = "vsext.vf4",
        .xlen = 64,
        .operands = &operands_1473,
    },
    .{
        .label = "vd_vs2_vm:vsext_vf8:64",
        .text = "vsext.vf8 v5, v6, v0.t",
        .mnemonic = "vsext.vf8",
        .xlen = 64,
        .operands = &operands_1474,
    },
    .{
        .label = "vd_vs2_vm:vunzipe_v:64",
        .text = "vunzipe.v v5, v6, v0.t",
        .mnemonic = "vunzipe.v",
        .xlen = 64,
        .operands = &operands_1475,
    },
    .{
        .label = "vd_vs2_vm:vunzipo_v:64",
        .text = "vunzipo.v v5, v6, v0.t",
        .mnemonic = "vunzipo.v",
        .xlen = 64,
        .operands = &operands_1476,
    },
    .{
        .label = "vd_vs2_vm:vzext_vf2:64",
        .text = "vzext.vf2 v5, v6, v0.t",
        .mnemonic = "vzext.vf2",
        .xlen = 64,
        .operands = &operands_1477,
    },
    .{
        .label = "vd_vs2_vm:vzext_vf4:64",
        .text = "vzext.vf4 v5, v6, v0.t",
        .mnemonic = "vzext.vf4",
        .xlen = 64,
        .operands = &operands_1478,
    },
    .{
        .label = "vd_vs2_vm:vzext_vf8:64",
        .text = "vzext.vf8 v5, v6, v0.t",
        .mnemonic = "vzext.vf8",
        .xlen = 64,
        .operands = &operands_1479,
    },
    .{
        .label = "vd_vs2_vs1:vadc_vvm:64",
        .text = "vadc.vvm v5, v6, v7",
        .mnemonic = "vadc.vvm",
        .xlen = 64,
        .operands = &operands_1480,
    },
    .{
        .label = "vd_vs2_vs1:vcompress_vm:64",
        .text = "vcompress.vm v5, v6, v7",
        .mnemonic = "vcompress.vm",
        .xlen = 64,
        .operands = &operands_1481,
    },
    .{
        .label = "vd_vs2_vs1:vghsh_vv:64",
        .text = "vghsh.vv v5, v6, v7",
        .mnemonic = "vghsh.vv",
        .xlen = 64,
        .operands = &operands_1482,
    },
    .{
        .label = "vd_vs2_vs1:vmadc_vv:64",
        .text = "vmadc.vv v5, v6, v7",
        .mnemonic = "vmadc.vv",
        .xlen = 64,
        .operands = &operands_1483,
    },
    .{
        .label = "vd_vs2_vs1:vmadc_vvm:64",
        .text = "vmadc.vvm v5, v6, v7",
        .mnemonic = "vmadc.vvm",
        .xlen = 64,
        .operands = &operands_1484,
    },
    .{
        .label = "vd_vs2_vs1:vmand_mm:64",
        .text = "vmand.mm v5, v6, v7",
        .mnemonic = "vmand.mm",
        .xlen = 64,
        .operands = &operands_1485,
    },
    .{
        .label = "vd_vs2_vs1:vmandn_mm:64",
        .text = "vmandn.mm v5, v6, v7",
        .mnemonic = "vmandn.mm",
        .xlen = 64,
        .operands = &operands_1486,
    },
    .{
        .label = "vd_vs2_vs1:vmerge_vvm:64",
        .text = "vmerge.vvm v5, v6, v7",
        .mnemonic = "vmerge.vvm",
        .xlen = 64,
        .operands = &operands_1487,
    },
    .{
        .label = "vd_vs2_vs1:vmnand_mm:64",
        .text = "vmnand.mm v5, v6, v7",
        .mnemonic = "vmnand.mm",
        .xlen = 64,
        .operands = &operands_1488,
    },
    .{
        .label = "vd_vs2_vs1:vmnor_mm:64",
        .text = "vmnor.mm v5, v6, v7",
        .mnemonic = "vmnor.mm",
        .xlen = 64,
        .operands = &operands_1489,
    },
    .{
        .label = "vd_vs2_vs1:vmor_mm:64",
        .text = "vmor.mm v5, v6, v7",
        .mnemonic = "vmor.mm",
        .xlen = 64,
        .operands = &operands_1490,
    },
    .{
        .label = "vd_vs2_vs1:vmorn_mm:64",
        .text = "vmorn.mm v5, v6, v7",
        .mnemonic = "vmorn.mm",
        .xlen = 64,
        .operands = &operands_1491,
    },
    .{
        .label = "vd_vs2_vs1:vmsbc_vv:64",
        .text = "vmsbc.vv v5, v6, v7",
        .mnemonic = "vmsbc.vv",
        .xlen = 64,
        .operands = &operands_1492,
    },
    .{
        .label = "vd_vs2_vs1:vmsbc_vvm:64",
        .text = "vmsbc.vvm v5, v6, v7",
        .mnemonic = "vmsbc.vvm",
        .xlen = 64,
        .operands = &operands_1493,
    },
    .{
        .label = "vd_vs2_vs1:vmxnor_mm:64",
        .text = "vmxnor.mm v5, v6, v7",
        .mnemonic = "vmxnor.mm",
        .xlen = 64,
        .operands = &operands_1494,
    },
    .{
        .label = "vd_vs2_vs1:vmxor_mm:64",
        .text = "vmxor.mm v5, v6, v7",
        .mnemonic = "vmxor.mm",
        .xlen = 64,
        .operands = &operands_1495,
    },
    .{
        .label = "vd_vs2_vs1:vsbc_vvm:64",
        .text = "vsbc.vvm v5, v6, v7",
        .mnemonic = "vsbc.vvm",
        .xlen = 64,
        .operands = &operands_1496,
    },
    .{
        .label = "vd_vs2_vs1:vsha2ch_vv:64",
        .text = "vsha2ch.vv v5, v6, v7",
        .mnemonic = "vsha2ch.vv",
        .xlen = 64,
        .operands = &operands_1497,
    },
    .{
        .label = "vd_vs2_vs1:vsha2cl_vv:64",
        .text = "vsha2cl.vv v5, v6, v7",
        .mnemonic = "vsha2cl.vv",
        .xlen = 64,
        .operands = &operands_1498,
    },
    .{
        .label = "vd_vs2_vs1:vsha2ms_vv:64",
        .text = "vsha2ms.vv v5, v6, v7",
        .mnemonic = "vsha2ms.vv",
        .xlen = 64,
        .operands = &operands_1499,
    },
    .{
        .label = "vd_vs2_vs1:vsm3me_vv:64",
        .text = "vsm3me.vv v5, v6, v7",
        .mnemonic = "vsm3me.vv",
        .xlen = 64,
        .operands = &operands_1500,
    },
    .{
        .label = "vd_vs2_vs1_vm:vaadd_vv:64",
        .text = "vaadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vaadd.vv",
        .xlen = 64,
        .operands = &operands_1501,
    },
    .{
        .label = "vd_vs2_vs1_vm:vaaddu_vv:64",
        .text = "vaaddu.vv v5, v6, v7, v0.t",
        .mnemonic = "vaaddu.vv",
        .xlen = 64,
        .operands = &operands_1502,
    },
    .{
        .label = "vd_vs2_vs1_vm:vabd_vv:64",
        .text = "vabd.vv v5, v6, v7, v0.t",
        .mnemonic = "vabd.vv",
        .xlen = 64,
        .operands = &operands_1503,
    },
    .{
        .label = "vd_vs2_vs1_vm:vabdu_vv:64",
        .text = "vabdu.vv v5, v6, v7, v0.t",
        .mnemonic = "vabdu.vv",
        .xlen = 64,
        .operands = &operands_1504,
    },
    .{
        .label = "vd_vs2_vs1_vm:vadd_vv:64",
        .text = "vadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vadd.vv",
        .xlen = 64,
        .operands = &operands_1505,
    },
    .{
        .label = "vd_vs2_vs1_vm:vand_vv:64",
        .text = "vand.vv v5, v6, v7, v0.t",
        .mnemonic = "vand.vv",
        .xlen = 64,
        .operands = &operands_1506,
    },
    .{
        .label = "vd_vs2_vs1_vm:vandn_vv:64",
        .text = "vandn.vv v5, v6, v7, v0.t",
        .mnemonic = "vandn.vv",
        .xlen = 64,
        .operands = &operands_1507,
    },
    .{
        .label = "vd_vs2_vs1_vm:vasub_vv:64",
        .text = "vasub.vv v5, v6, v7, v0.t",
        .mnemonic = "vasub.vv",
        .xlen = 64,
        .operands = &operands_1508,
    },
    .{
        .label = "vd_vs2_vs1_vm:vasubu_vv:64",
        .text = "vasubu.vv v5, v6, v7, v0.t",
        .mnemonic = "vasubu.vv",
        .xlen = 64,
        .operands = &operands_1509,
    },
    .{
        .label = "vd_vs2_vs1_vm:vclmul_vv:64",
        .text = "vclmul.vv v5, v6, v7, v0.t",
        .mnemonic = "vclmul.vv",
        .xlen = 64,
        .operands = &operands_1510,
    },
    .{
        .label = "vd_vs2_vs1_vm:vclmulh_vv:64",
        .text = "vclmulh.vv v5, v6, v7, v0.t",
        .mnemonic = "vclmulh.vv",
        .xlen = 64,
        .operands = &operands_1511,
    },
    .{
        .label = "vd_vs2_vs1_vm:vdiv_vv:64",
        .text = "vdiv.vv v5, v6, v7, v0.t",
        .mnemonic = "vdiv.vv",
        .xlen = 64,
        .operands = &operands_1512,
    },
    .{
        .label = "vd_vs2_vs1_vm:vdivu_vv:64",
        .text = "vdivu.vv v5, v6, v7, v0.t",
        .mnemonic = "vdivu.vv",
        .xlen = 64,
        .operands = &operands_1513,
    },
    .{
        .label = "vd_vs2_vs1_vm:vdot4a_vv:64",
        .text = "vdot4a.vv v5, v6, v7, v0.t",
        .mnemonic = "vdot4a.vv",
        .xlen = 64,
        .operands = &operands_1514,
    },
    .{
        .label = "vd_vs2_vs1_vm:vdot4asu_vv:64",
        .text = "vdot4asu.vv v5, v6, v7, v0.t",
        .mnemonic = "vdot4asu.vv",
        .xlen = 64,
        .operands = &operands_1515,
    },
    .{
        .label = "vd_vs2_vs1_vm:vdot4au_vv:64",
        .text = "vdot4au.vv v5, v6, v7, v0.t",
        .mnemonic = "vdot4au.vv",
        .xlen = 64,
        .operands = &operands_1516,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfadd_vv:64",
        .text = "vfadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vfadd.vv",
        .xlen = 64,
        .operands = &operands_1517,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfbdot_vv:64",
        .text = "vfbdot.vv v5, v6, v7, v0.t",
        .mnemonic = "vfbdot.vv",
        .xlen = 64,
        .operands = &operands_1518,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfdiv_vv:64",
        .text = "vfdiv.vv v5, v6, v7, v0.t",
        .mnemonic = "vfdiv.vv",
        .xlen = 64,
        .operands = &operands_1519,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfmacc_vv:64",
        .text = "vfmacc.vv v5, v6, v7, v0.t",
        .mnemonic = "vfmacc.vv",
        .xlen = 64,
        .operands = &operands_1520,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfmadd_vv:64",
        .text = "vfmadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vfmadd.vv",
        .xlen = 64,
        .operands = &operands_1521,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfmax_vv:64",
        .text = "vfmax.vv v5, v6, v7, v0.t",
        .mnemonic = "vfmax.vv",
        .xlen = 64,
        .operands = &operands_1522,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfmin_vv:64",
        .text = "vfmin.vv v5, v6, v7, v0.t",
        .mnemonic = "vfmin.vv",
        .xlen = 64,
        .operands = &operands_1523,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfmsac_vv:64",
        .text = "vfmsac.vv v5, v6, v7, v0.t",
        .mnemonic = "vfmsac.vv",
        .xlen = 64,
        .operands = &operands_1524,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfmsub_vv:64",
        .text = "vfmsub.vv v5, v6, v7, v0.t",
        .mnemonic = "vfmsub.vv",
        .xlen = 64,
        .operands = &operands_1525,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfmul_vv:64",
        .text = "vfmul.vv v5, v6, v7, v0.t",
        .mnemonic = "vfmul.vv",
        .xlen = 64,
        .operands = &operands_1526,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfnmacc_vv:64",
        .text = "vfnmacc.vv v5, v6, v7, v0.t",
        .mnemonic = "vfnmacc.vv",
        .xlen = 64,
        .operands = &operands_1527,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfnmadd_vv:64",
        .text = "vfnmadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vfnmadd.vv",
        .xlen = 64,
        .operands = &operands_1528,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfnmsac_vv:64",
        .text = "vfnmsac.vv v5, v6, v7, v0.t",
        .mnemonic = "vfnmsac.vv",
        .xlen = 64,
        .operands = &operands_1529,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfnmsub_vv:64",
        .text = "vfnmsub.vv v5, v6, v7, v0.t",
        .mnemonic = "vfnmsub.vv",
        .xlen = 64,
        .operands = &operands_1530,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfqbdot_alt_vv:64",
        .text = "vfqbdot.alt.vv v5, v6, v7, v0.t",
        .mnemonic = "vfqbdot.alt.vv",
        .xlen = 64,
        .operands = &operands_1531,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfqbdot_vv:64",
        .text = "vfqbdot.vv v5, v6, v7, v0.t",
        .mnemonic = "vfqbdot.vv",
        .xlen = 64,
        .operands = &operands_1532,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfqldot_alt_vv:64",
        .text = "vfqldot.alt.vv v5, v6, v7, v0.t",
        .mnemonic = "vfqldot.alt.vv",
        .xlen = 64,
        .operands = &operands_1533,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfqldot_vv:64",
        .text = "vfqldot.vv v5, v6, v7, v0.t",
        .mnemonic = "vfqldot.vv",
        .xlen = 64,
        .operands = &operands_1534,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfredmax_vs:64",
        .text = "vfredmax.vs v5, v6, v7, v0.t",
        .mnemonic = "vfredmax.vs",
        .xlen = 64,
        .operands = &operands_1535,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfredmin_vs:64",
        .text = "vfredmin.vs v5, v6, v7, v0.t",
        .mnemonic = "vfredmin.vs",
        .xlen = 64,
        .operands = &operands_1536,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfredosum_vs:64",
        .text = "vfredosum.vs v5, v6, v7, v0.t",
        .mnemonic = "vfredosum.vs",
        .xlen = 64,
        .operands = &operands_1537,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfredsum_vs:64",
        .text = "vfredsum.vs v5, v6, v7, v0.t",
        .mnemonic = "vfredsum.vs",
        .xlen = 64,
        .operands = &operands_1538,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfredusum_vs:64",
        .text = "vfredusum.vs v5, v6, v7, v0.t",
        .mnemonic = "vfredusum.vs",
        .xlen = 64,
        .operands = &operands_1539,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfsgnj_vv:64",
        .text = "vfsgnj.vv v5, v6, v7, v0.t",
        .mnemonic = "vfsgnj.vv",
        .xlen = 64,
        .operands = &operands_1540,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfsgnjn_vv:64",
        .text = "vfsgnjn.vv v5, v6, v7, v0.t",
        .mnemonic = "vfsgnjn.vv",
        .xlen = 64,
        .operands = &operands_1541,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfsgnjx_vv:64",
        .text = "vfsgnjx.vv v5, v6, v7, v0.t",
        .mnemonic = "vfsgnjx.vv",
        .xlen = 64,
        .operands = &operands_1542,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfsub_vv:64",
        .text = "vfsub.vv v5, v6, v7, v0.t",
        .mnemonic = "vfsub.vv",
        .xlen = 64,
        .operands = &operands_1543,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwadd_vv:64",
        .text = "vfwadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwadd.vv",
        .xlen = 64,
        .operands = &operands_1544,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwadd_wv:64",
        .text = "vfwadd.wv v5, v6, v7, v0.t",
        .mnemonic = "vfwadd.wv",
        .xlen = 64,
        .operands = &operands_1545,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwbdot_vv:64",
        .text = "vfwbdot.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwbdot.vv",
        .xlen = 64,
        .operands = &operands_1546,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwldot_vv:64",
        .text = "vfwldot.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwldot.vv",
        .xlen = 64,
        .operands = &operands_1547,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwmacc_vv:64",
        .text = "vfwmacc.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwmacc.vv",
        .xlen = 64,
        .operands = &operands_1548,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwmaccbf16_vv:64",
        .text = "vfwmaccbf16.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwmaccbf16.vv",
        .xlen = 64,
        .operands = &operands_1549,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwmsac_vv:64",
        .text = "vfwmsac.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwmsac.vv",
        .xlen = 64,
        .operands = &operands_1550,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwmul_vv:64",
        .text = "vfwmul.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwmul.vv",
        .xlen = 64,
        .operands = &operands_1551,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwnmacc_vv:64",
        .text = "vfwnmacc.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwnmacc.vv",
        .xlen = 64,
        .operands = &operands_1552,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwnmsac_vv:64",
        .text = "vfwnmsac.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwnmsac.vv",
        .xlen = 64,
        .operands = &operands_1553,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwredosum_vs:64",
        .text = "vfwredosum.vs v5, v6, v7, v0.t",
        .mnemonic = "vfwredosum.vs",
        .xlen = 64,
        .operands = &operands_1554,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwredsum_vs:64",
        .text = "vfwredsum.vs v5, v6, v7, v0.t",
        .mnemonic = "vfwredsum.vs",
        .xlen = 64,
        .operands = &operands_1555,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwredusum_vs:64",
        .text = "vfwredusum.vs v5, v6, v7, v0.t",
        .mnemonic = "vfwredusum.vs",
        .xlen = 64,
        .operands = &operands_1556,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwsub_vv:64",
        .text = "vfwsub.vv v5, v6, v7, v0.t",
        .mnemonic = "vfwsub.vv",
        .xlen = 64,
        .operands = &operands_1557,
    },
    .{
        .label = "vd_vs2_vs1_vm:vfwsub_wv:64",
        .text = "vfwsub.wv v5, v6, v7, v0.t",
        .mnemonic = "vfwsub.wv",
        .xlen = 64,
        .operands = &operands_1558,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmacc_vv:64",
        .text = "vmacc.vv v5, v6, v7, v0.t",
        .mnemonic = "vmacc.vv",
        .xlen = 64,
        .operands = &operands_1559,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmadd_vv:64",
        .text = "vmadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vmadd.vv",
        .xlen = 64,
        .operands = &operands_1560,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmandnot_mm:64",
        .text = "vmandnot.mm v5, v6, v7, v0.t",
        .mnemonic = "vmandnot.mm",
        .xlen = 64,
        .operands = &operands_1561,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmax_vv:64",
        .text = "vmax.vv v5, v6, v7, v0.t",
        .mnemonic = "vmax.vv",
        .xlen = 64,
        .operands = &operands_1562,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmaxu_vv:64",
        .text = "vmaxu.vv v5, v6, v7, v0.t",
        .mnemonic = "vmaxu.vv",
        .xlen = 64,
        .operands = &operands_1563,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmfeq_vv:64",
        .text = "vmfeq.vv v5, v6, v7, v0.t",
        .mnemonic = "vmfeq.vv",
        .xlen = 64,
        .operands = &operands_1564,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmfle_vv:64",
        .text = "vmfle.vv v5, v6, v7, v0.t",
        .mnemonic = "vmfle.vv",
        .xlen = 64,
        .operands = &operands_1565,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmflt_vv:64",
        .text = "vmflt.vv v5, v6, v7, v0.t",
        .mnemonic = "vmflt.vv",
        .xlen = 64,
        .operands = &operands_1566,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmfne_vv:64",
        .text = "vmfne.vv v5, v6, v7, v0.t",
        .mnemonic = "vmfne.vv",
        .xlen = 64,
        .operands = &operands_1567,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmin_vv:64",
        .text = "vmin.vv v5, v6, v7, v0.t",
        .mnemonic = "vmin.vv",
        .xlen = 64,
        .operands = &operands_1568,
    },
    .{
        .label = "vd_vs2_vs1_vm:vminu_vv:64",
        .text = "vminu.vv v5, v6, v7, v0.t",
        .mnemonic = "vminu.vv",
        .xlen = 64,
        .operands = &operands_1569,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmornot_mm:64",
        .text = "vmornot.mm v5, v6, v7, v0.t",
        .mnemonic = "vmornot.mm",
        .xlen = 64,
        .operands = &operands_1570,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmseq_vv:64",
        .text = "vmseq.vv v5, v6, v7, v0.t",
        .mnemonic = "vmseq.vv",
        .xlen = 64,
        .operands = &operands_1571,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmsle_vv:64",
        .text = "vmsle.vv v5, v6, v7, v0.t",
        .mnemonic = "vmsle.vv",
        .xlen = 64,
        .operands = &operands_1572,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmsleu_vv:64",
        .text = "vmsleu.vv v5, v6, v7, v0.t",
        .mnemonic = "vmsleu.vv",
        .xlen = 64,
        .operands = &operands_1573,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmslt_vv:64",
        .text = "vmslt.vv v5, v6, v7, v0.t",
        .mnemonic = "vmslt.vv",
        .xlen = 64,
        .operands = &operands_1574,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmsltu_vv:64",
        .text = "vmsltu.vv v5, v6, v7, v0.t",
        .mnemonic = "vmsltu.vv",
        .xlen = 64,
        .operands = &operands_1575,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmsne_vv:64",
        .text = "vmsne.vv v5, v6, v7, v0.t",
        .mnemonic = "vmsne.vv",
        .xlen = 64,
        .operands = &operands_1576,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmul_vv:64",
        .text = "vmul.vv v5, v6, v7, v0.t",
        .mnemonic = "vmul.vv",
        .xlen = 64,
        .operands = &operands_1577,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmulh_vv:64",
        .text = "vmulh.vv v5, v6, v7, v0.t",
        .mnemonic = "vmulh.vv",
        .xlen = 64,
        .operands = &operands_1578,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmulhsu_vv:64",
        .text = "vmulhsu.vv v5, v6, v7, v0.t",
        .mnemonic = "vmulhsu.vv",
        .xlen = 64,
        .operands = &operands_1579,
    },
    .{
        .label = "vd_vs2_vs1_vm:vmulhu_vv:64",
        .text = "vmulhu.vv v5, v6, v7, v0.t",
        .mnemonic = "vmulhu.vv",
        .xlen = 64,
        .operands = &operands_1580,
    },
    .{
        .label = "vd_vs2_vs1_vm:vnclip_wv:64",
        .text = "vnclip.wv v5, v6, v7, v0.t",
        .mnemonic = "vnclip.wv",
        .xlen = 64,
        .operands = &operands_1581,
    },
    .{
        .label = "vd_vs2_vs1_vm:vnclipu_wv:64",
        .text = "vnclipu.wv v5, v6, v7, v0.t",
        .mnemonic = "vnclipu.wv",
        .xlen = 64,
        .operands = &operands_1582,
    },
    .{
        .label = "vd_vs2_vs1_vm:vnmsac_vv:64",
        .text = "vnmsac.vv v5, v6, v7, v0.t",
        .mnemonic = "vnmsac.vv",
        .xlen = 64,
        .operands = &operands_1583,
    },
    .{
        .label = "vd_vs2_vs1_vm:vnmsub_vv:64",
        .text = "vnmsub.vv v5, v6, v7, v0.t",
        .mnemonic = "vnmsub.vv",
        .xlen = 64,
        .operands = &operands_1584,
    },
    .{
        .label = "vd_vs2_vs1_vm:vnsra_wv:64",
        .text = "vnsra.wv v5, v6, v7, v0.t",
        .mnemonic = "vnsra.wv",
        .xlen = 64,
        .operands = &operands_1585,
    },
    .{
        .label = "vd_vs2_vs1_vm:vnsrl_wv:64",
        .text = "vnsrl.wv v5, v6, v7, v0.t",
        .mnemonic = "vnsrl.wv",
        .xlen = 64,
        .operands = &operands_1586,
    },
    .{
        .label = "vd_vs2_vs1_vm:vor_vv:64",
        .text = "vor.vv v5, v6, v7, v0.t",
        .mnemonic = "vor.vv",
        .xlen = 64,
        .operands = &operands_1587,
    },
    .{
        .label = "vd_vs2_vs1_vm:vpaire_vv:64",
        .text = "vpaire.vv v5, v6, v7, v0.t",
        .mnemonic = "vpaire.vv",
        .xlen = 64,
        .operands = &operands_1588,
    },
    .{
        .label = "vd_vs2_vs1_vm:vpairo_vv:64",
        .text = "vpairo.vv v5, v6, v7, v0.t",
        .mnemonic = "vpairo.vv",
        .xlen = 64,
        .operands = &operands_1589,
    },
    .{
        .label = "vd_vs2_vs1_vm:vqbdots_vv:64",
        .text = "vqbdots.vv v5, v6, v7, v0.t",
        .mnemonic = "vqbdots.vv",
        .xlen = 64,
        .operands = &operands_1590,
    },
    .{
        .label = "vd_vs2_vs1_vm:vqbdotu_vv:64",
        .text = "vqbdotu.vv v5, v6, v7, v0.t",
        .mnemonic = "vqbdotu.vv",
        .xlen = 64,
        .operands = &operands_1591,
    },
    .{
        .label = "vd_vs2_vs1_vm:vqldots_vv:64",
        .text = "vqldots.vv v5, v6, v7, v0.t",
        .mnemonic = "vqldots.vv",
        .xlen = 64,
        .operands = &operands_1592,
    },
    .{
        .label = "vd_vs2_vs1_vm:vqldotu_vv:64",
        .text = "vqldotu.vv v5, v6, v7, v0.t",
        .mnemonic = "vqldotu.vv",
        .xlen = 64,
        .operands = &operands_1593,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredand_vs:64",
        .text = "vredand.vs v5, v6, v7, v0.t",
        .mnemonic = "vredand.vs",
        .xlen = 64,
        .operands = &operands_1594,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredmax_vs:64",
        .text = "vredmax.vs v5, v6, v7, v0.t",
        .mnemonic = "vredmax.vs",
        .xlen = 64,
        .operands = &operands_1595,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredmaxu_vs:64",
        .text = "vredmaxu.vs v5, v6, v7, v0.t",
        .mnemonic = "vredmaxu.vs",
        .xlen = 64,
        .operands = &operands_1596,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredmin_vs:64",
        .text = "vredmin.vs v5, v6, v7, v0.t",
        .mnemonic = "vredmin.vs",
        .xlen = 64,
        .operands = &operands_1597,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredminu_vs:64",
        .text = "vredminu.vs v5, v6, v7, v0.t",
        .mnemonic = "vredminu.vs",
        .xlen = 64,
        .operands = &operands_1598,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredor_vs:64",
        .text = "vredor.vs v5, v6, v7, v0.t",
        .mnemonic = "vredor.vs",
        .xlen = 64,
        .operands = &operands_1599,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredsum_vs:64",
        .text = "vredsum.vs v5, v6, v7, v0.t",
        .mnemonic = "vredsum.vs",
        .xlen = 64,
        .operands = &operands_1600,
    },
    .{
        .label = "vd_vs2_vs1_vm:vredxor_vs:64",
        .text = "vredxor.vs v5, v6, v7, v0.t",
        .mnemonic = "vredxor.vs",
        .xlen = 64,
        .operands = &operands_1601,
    },
    .{
        .label = "vd_vs2_vs1_vm:vrem_vv:64",
        .text = "vrem.vv v5, v6, v7, v0.t",
        .mnemonic = "vrem.vv",
        .xlen = 64,
        .operands = &operands_1602,
    },
    .{
        .label = "vd_vs2_vs1_vm:vremu_vv:64",
        .text = "vremu.vv v5, v6, v7, v0.t",
        .mnemonic = "vremu.vv",
        .xlen = 64,
        .operands = &operands_1603,
    },
    .{
        .label = "vd_vs2_vs1_vm:vrgather_vv:64",
        .text = "vrgather.vv v5, v6, v7, v0.t",
        .mnemonic = "vrgather.vv",
        .xlen = 64,
        .operands = &operands_1604,
    },
    .{
        .label = "vd_vs2_vs1_vm:vrgatherei16_vv:64",
        .text = "vrgatherei16.vv v5, v6, v7, v0.t",
        .mnemonic = "vrgatherei16.vv",
        .xlen = 64,
        .operands = &operands_1605,
    },
    .{
        .label = "vd_vs2_vs1_vm:vrol_vv:64",
        .text = "vrol.vv v5, v6, v7, v0.t",
        .mnemonic = "vrol.vv",
        .xlen = 64,
        .operands = &operands_1606,
    },
    .{
        .label = "vd_vs2_vs1_vm:vror_vv:64",
        .text = "vror.vv v5, v6, v7, v0.t",
        .mnemonic = "vror.vv",
        .xlen = 64,
        .operands = &operands_1607,
    },
    .{
        .label = "vd_vs2_vs1_vm:vsadd_vv:64",
        .text = "vsadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vsadd.vv",
        .xlen = 64,
        .operands = &operands_1608,
    },
    .{
        .label = "vd_vs2_vs1_vm:vsaddu_vv:64",
        .text = "vsaddu.vv v5, v6, v7, v0.t",
        .mnemonic = "vsaddu.vv",
        .xlen = 64,
        .operands = &operands_1609,
    },
    .{
        .label = "vd_vs2_vs1_vm:vsll_vv:64",
        .text = "vsll.vv v5, v6, v7, v0.t",
        .mnemonic = "vsll.vv",
        .xlen = 64,
        .operands = &operands_1610,
    },
    .{
        .label = "vd_vs2_vs1_vm:vsmul_vv:64",
        .text = "vsmul.vv v5, v6, v7, v0.t",
        .mnemonic = "vsmul.vv",
        .xlen = 64,
        .operands = &operands_1611,
    },
    .{
        .label = "vd_vs2_vs1_vm:vsra_vv:64",
        .text = "vsra.vv v5, v6, v7, v0.t",
        .mnemonic = "vsra.vv",
        .xlen = 64,
        .operands = &operands_1612,
    },
    .{
        .label = "vd_vs2_vs1_vm:vsrl_vv:64",
        .text = "vsrl.vv v5, v6, v7, v0.t",
        .mnemonic = "vsrl.vv",
        .xlen = 64,
        .operands = &operands_1613,
    },
    .{
        .label = "vd_vs2_vs1_vm:vssra_vv:64",
        .text = "vssra.vv v5, v6, v7, v0.t",
        .mnemonic = "vssra.vv",
        .xlen = 64,
        .operands = &operands_1614,
    },
    .{
        .label = "vd_vs2_vs1_vm:vssrl_vv:64",
        .text = "vssrl.vv v5, v6, v7, v0.t",
        .mnemonic = "vssrl.vv",
        .xlen = 64,
        .operands = &operands_1615,
    },
    .{
        .label = "vd_vs2_vs1_vm:vssub_vv:64",
        .text = "vssub.vv v5, v6, v7, v0.t",
        .mnemonic = "vssub.vv",
        .xlen = 64,
        .operands = &operands_1616,
    },
    .{
        .label = "vd_vs2_vs1_vm:vssubu_vv:64",
        .text = "vssubu.vv v5, v6, v7, v0.t",
        .mnemonic = "vssubu.vv",
        .xlen = 64,
        .operands = &operands_1617,
    },
    .{
        .label = "vd_vs2_vs1_vm:vsub_vv:64",
        .text = "vsub.vv v5, v6, v7, v0.t",
        .mnemonic = "vsub.vv",
        .xlen = 64,
        .operands = &operands_1618,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwabda_vv:64",
        .text = "vwabda.vv v5, v6, v7, v0.t",
        .mnemonic = "vwabda.vv",
        .xlen = 64,
        .operands = &operands_1619,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwabdau_vv:64",
        .text = "vwabdau.vv v5, v6, v7, v0.t",
        .mnemonic = "vwabdau.vv",
        .xlen = 64,
        .operands = &operands_1620,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwadd_vv:64",
        .text = "vwadd.vv v5, v6, v7, v0.t",
        .mnemonic = "vwadd.vv",
        .xlen = 64,
        .operands = &operands_1621,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwadd_wv:64",
        .text = "vwadd.wv v5, v6, v7, v0.t",
        .mnemonic = "vwadd.wv",
        .xlen = 64,
        .operands = &operands_1622,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwaddu_vv:64",
        .text = "vwaddu.vv v5, v6, v7, v0.t",
        .mnemonic = "vwaddu.vv",
        .xlen = 64,
        .operands = &operands_1623,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwaddu_wv:64",
        .text = "vwaddu.wv v5, v6, v7, v0.t",
        .mnemonic = "vwaddu.wv",
        .xlen = 64,
        .operands = &operands_1624,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwmacc_vv:64",
        .text = "vwmacc.vv v5, v6, v7, v0.t",
        .mnemonic = "vwmacc.vv",
        .xlen = 64,
        .operands = &operands_1625,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwmaccsu_vv:64",
        .text = "vwmaccsu.vv v5, v6, v7, v0.t",
        .mnemonic = "vwmaccsu.vv",
        .xlen = 64,
        .operands = &operands_1626,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwmaccu_vv:64",
        .text = "vwmaccu.vv v5, v6, v7, v0.t",
        .mnemonic = "vwmaccu.vv",
        .xlen = 64,
        .operands = &operands_1627,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwmul_vv:64",
        .text = "vwmul.vv v5, v6, v7, v0.t",
        .mnemonic = "vwmul.vv",
        .xlen = 64,
        .operands = &operands_1628,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwmulsu_vv:64",
        .text = "vwmulsu.vv v5, v6, v7, v0.t",
        .mnemonic = "vwmulsu.vv",
        .xlen = 64,
        .operands = &operands_1629,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwmulu_vv:64",
        .text = "vwmulu.vv v5, v6, v7, v0.t",
        .mnemonic = "vwmulu.vv",
        .xlen = 64,
        .operands = &operands_1630,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwredsum_vs:64",
        .text = "vwredsum.vs v5, v6, v7, v0.t",
        .mnemonic = "vwredsum.vs",
        .xlen = 64,
        .operands = &operands_1631,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwredsumu_vs:64",
        .text = "vwredsumu.vs v5, v6, v7, v0.t",
        .mnemonic = "vwredsumu.vs",
        .xlen = 64,
        .operands = &operands_1632,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwsll_vv:64",
        .text = "vwsll.vv v5, v6, v7, v0.t",
        .mnemonic = "vwsll.vv",
        .xlen = 64,
        .operands = &operands_1633,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwsub_vv:64",
        .text = "vwsub.vv v5, v6, v7, v0.t",
        .mnemonic = "vwsub.vv",
        .xlen = 64,
        .operands = &operands_1634,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwsub_wv:64",
        .text = "vwsub.wv v5, v6, v7, v0.t",
        .mnemonic = "vwsub.wv",
        .xlen = 64,
        .operands = &operands_1635,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwsubu_vv:64",
        .text = "vwsubu.vv v5, v6, v7, v0.t",
        .mnemonic = "vwsubu.vv",
        .xlen = 64,
        .operands = &operands_1636,
    },
    .{
        .label = "vd_vs2_vs1_vm:vwsubu_wv:64",
        .text = "vwsubu.wv v5, v6, v7, v0.t",
        .mnemonic = "vwsubu.wv",
        .xlen = 64,
        .operands = &operands_1637,
    },
    .{
        .label = "vd_vs2_vs1_vm:vxor_vv:64",
        .text = "vxor.vv v5, v6, v7, v0.t",
        .mnemonic = "vxor.vv",
        .xlen = 64,
        .operands = &operands_1638,
    },
    .{
        .label = "vd_vs2_vs1_vm:vzip_vv:64",
        .text = "vzip.vv v5, v6, v7, v0.t",
        .mnemonic = "vzip.vv",
        .xlen = 64,
        .operands = &operands_1639,
    },
    .{
        .label = "vd_vs2_zimm5:vaeskf1_vi:64",
        .text = "vaeskf1.vi v5, v6, 3",
        .mnemonic = "vaeskf1.vi",
        .xlen = 64,
        .operands = &operands_1640,
    },
    .{
        .label = "vd_vs2_zimm5:vaeskf2_vi:64",
        .text = "vaeskf2.vi v5, v6, 3",
        .mnemonic = "vaeskf2.vi",
        .xlen = 64,
        .operands = &operands_1641,
    },
    .{
        .label = "vd_vs2_zimm5:vsm3c_vi:64",
        .text = "vsm3c.vi v5, v6, 3",
        .mnemonic = "vsm3c.vi",
        .xlen = 64,
        .operands = &operands_1642,
    },
    .{
        .label = "vd_vs2_zimm5:vsm4k_vi:64",
        .text = "vsm4k.vi v5, v6, 3",
        .mnemonic = "vsm4k.vi",
        .xlen = 64,
        .operands = &operands_1643,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vnclip_wi:64",
        .text = "vnclip.wi v5, v6, 3, v0.t",
        .mnemonic = "vnclip.wi",
        .xlen = 64,
        .operands = &operands_1644,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vnclipu_wi:64",
        .text = "vnclipu.wi v5, v6, 3, v0.t",
        .mnemonic = "vnclipu.wi",
        .xlen = 64,
        .operands = &operands_1645,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vnsra_wi:64",
        .text = "vnsra.wi v5, v6, 3, v0.t",
        .mnemonic = "vnsra.wi",
        .xlen = 64,
        .operands = &operands_1646,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vnsrl_wi:64",
        .text = "vnsrl.wi v5, v6, 3, v0.t",
        .mnemonic = "vnsrl.wi",
        .xlen = 64,
        .operands = &operands_1647,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vrgather_vi:64",
        .text = "vrgather.vi v5, v6, 3, v0.t",
        .mnemonic = "vrgather.vi",
        .xlen = 64,
        .operands = &operands_1648,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vslidedown_vi:64",
        .text = "vslidedown.vi v5, v6, 3, v0.t",
        .mnemonic = "vslidedown.vi",
        .xlen = 64,
        .operands = &operands_1649,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vslideup_vi:64",
        .text = "vslideup.vi v5, v6, 3, v0.t",
        .mnemonic = "vslideup.vi",
        .xlen = 64,
        .operands = &operands_1650,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vsll_vi:64",
        .text = "vsll.vi v5, v6, 3, v0.t",
        .mnemonic = "vsll.vi",
        .xlen = 64,
        .operands = &operands_1651,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vsra_vi:64",
        .text = "vsra.vi v5, v6, 3, v0.t",
        .mnemonic = "vsra.vi",
        .xlen = 64,
        .operands = &operands_1652,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vsrl_vi:64",
        .text = "vsrl.vi v5, v6, 3, v0.t",
        .mnemonic = "vsrl.vi",
        .xlen = 64,
        .operands = &operands_1653,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vssra_vi:64",
        .text = "vssra.vi v5, v6, 3, v0.t",
        .mnemonic = "vssra.vi",
        .xlen = 64,
        .operands = &operands_1654,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vssrl_vi:64",
        .text = "vssrl.vi v5, v6, 3, v0.t",
        .mnemonic = "vssrl.vi",
        .xlen = 64,
        .operands = &operands_1655,
    },
    .{
        .label = "vd_vs2_zimm5_vm:vwsll_vi:64",
        .text = "vwsll.vi v5, v6, 3, v0.t",
        .mnemonic = "vwsll.vi",
        .xlen = 64,
        .operands = &operands_1656,
    },
    .{
        .label = "vd_vs2_zimm6_vm:vror_vi:64",
        .text = "vror.vi v5, v6, 17, v0.t",
        .mnemonic = "vror.vi",
        .xlen = 64,
        .operands = &operands_1657,
    },
    .{
        .label = "vs3_rs1:vs1r_v:64",
        .text = "vs1r.v v5, (x6)",
        .mnemonic = "vs1r.v",
        .xlen = 64,
        .operands = &operands_1658,
    },
    .{
        .label = "vs3_rs1:vs2r_v:64",
        .text = "vs2r.v v5, (x6)",
        .mnemonic = "vs2r.v",
        .xlen = 64,
        .operands = &operands_1659,
    },
    .{
        .label = "vs3_rs1:vs4r_v:64",
        .text = "vs4r.v v5, (x6)",
        .mnemonic = "vs4r.v",
        .xlen = 64,
        .operands = &operands_1660,
    },
    .{
        .label = "vs3_rs1:vs8r_v:64",
        .text = "vs8r.v v5, (x6)",
        .mnemonic = "vs8r.v",
        .xlen = 64,
        .operands = &operands_1661,
    },
    .{
        .label = "vs3_rs1:vse1_v:64",
        .text = "vse1.v v5, (x6)",
        .mnemonic = "vse1.v",
        .xlen = 64,
        .operands = &operands_1662,
    },
    .{
        .label = "vs3_rs1:vsm_v:64",
        .text = "vsm.v v5, (x6)",
        .mnemonic = "vsm.v",
        .xlen = 64,
        .operands = &operands_1663,
    },
    .{
        .label = "vs3_rs1_nf_vm:vse16_v:64",
        .text = "vse16.v v5, (x6), v0.t",
        .mnemonic = "vse16.v",
        .xlen = 64,
        .operands = &operands_1664,
    },
    .{
        .label = "vs3_rs1_nf_vm:vse32_v:64",
        .text = "vse32.v v5, (x6), v0.t",
        .mnemonic = "vse32.v",
        .xlen = 64,
        .operands = &operands_1665,
    },
    .{
        .label = "vs3_rs1_nf_vm:vse64_v:64",
        .text = "vse64.v v5, (x6), v0.t",
        .mnemonic = "vse64.v",
        .xlen = 64,
        .operands = &operands_1666,
    },
    .{
        .label = "vs3_rs1_nf_vm:vse8_v:64",
        .text = "vse8.v v5, (x6), v0.t",
        .mnemonic = "vse8.v",
        .xlen = 64,
        .operands = &operands_1667,
    },
    .{
        .label = "vs3_rs1_rs2_nf_vm:vsse16_v:64",
        .text = "vsse16.v v5, (x6), x7, v0.t",
        .mnemonic = "vsse16.v",
        .xlen = 64,
        .operands = &operands_1668,
    },
    .{
        .label = "vs3_rs1_rs2_nf_vm:vsse32_v:64",
        .text = "vsse32.v v5, (x6), x7, v0.t",
        .mnemonic = "vsse32.v",
        .xlen = 64,
        .operands = &operands_1669,
    },
    .{
        .label = "vs3_rs1_rs2_nf_vm:vsse64_v:64",
        .text = "vsse64.v v5, (x6), x7, v0.t",
        .mnemonic = "vsse64.v",
        .xlen = 64,
        .operands = &operands_1670,
    },
    .{
        .label = "vs3_rs1_rs2_nf_vm:vsse8_v:64",
        .text = "vsse8.v v5, (x6), x7, v0.t",
        .mnemonic = "vsse8.v",
        .xlen = 64,
        .operands = &operands_1671,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsoxei16_v:64",
        .text = "vsoxei16.v v5, (x6), v7, v0.t",
        .mnemonic = "vsoxei16.v",
        .xlen = 64,
        .operands = &operands_1672,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsoxei32_v:64",
        .text = "vsoxei32.v v5, (x6), v7, v0.t",
        .mnemonic = "vsoxei32.v",
        .xlen = 64,
        .operands = &operands_1673,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsoxei64_v:64",
        .text = "vsoxei64.v v5, (x6), v7, v0.t",
        .mnemonic = "vsoxei64.v",
        .xlen = 64,
        .operands = &operands_1674,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsoxei8_v:64",
        .text = "vsoxei8.v v5, (x6), v7, v0.t",
        .mnemonic = "vsoxei8.v",
        .xlen = 64,
        .operands = &operands_1675,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsuxei16_v:64",
        .text = "vsuxei16.v v5, (x6), v7, v0.t",
        .mnemonic = "vsuxei16.v",
        .xlen = 64,
        .operands = &operands_1676,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsuxei32_v:64",
        .text = "vsuxei32.v v5, (x6), v7, v0.t",
        .mnemonic = "vsuxei32.v",
        .xlen = 64,
        .operands = &operands_1677,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsuxei64_v:64",
        .text = "vsuxei64.v v5, (x6), v7, v0.t",
        .mnemonic = "vsuxei64.v",
        .xlen = 64,
        .operands = &operands_1678,
    },
    .{
        .label = "vs3_rs1_vs2_nf_vm:vsuxei8_v:64",
        .text = "vsuxei8.v v5, (x6), v7, v0.t",
        .mnemonic = "vsuxei8.v",
        .xlen = 64,
        .operands = &operands_1679,
    },
    .{
        .label = "zimm_csr:csrci:64",
        .text = "csrci mstatus, 3",
        .mnemonic = "csrci",
        .xlen = 64,
        .operands = &operands_1680,
    },
    .{
        .label = "zimm_csr:csrsi:64",
        .text = "csrsi mstatus, 3",
        .mnemonic = "csrsi",
        .xlen = 64,
        .operands = &operands_1681,
    },
    .{
        .label = "zimm_csr:csrwi:64",
        .text = "csrwi mstatus, 3",
        .mnemonic = "csrwi",
        .xlen = 64,
        .operands = &operands_1682,
    },
};

test "generated RISC-V source text fixtures match encoder API" {
    for (fixtures) |fixture| {
        const parsed = try rv.parseInstructionText(fixture.text, null);
        try std.testing.expectEqualStrings(fixture.mnemonic, parsed.mnemonic);
        const from_text = try rv.encodeInstructionText(fixture.text, fixture.xlen, null);
        const from_api = try rv.encodeMnemonic(fixture.mnemonic, fixture.xlen, fixture.operands);
        try std.testing.expectEqual(from_api.word, from_text.word);
    }
}

// Generated coverage summary:
//   amo: 43 fixture(s)
//   c_addi16sp: 1 fixture(s)
//   c_addi4spn: 1 fixture(s)
//   c_index: 1 fixture(s)
//   c_mop_t: 1 fixture(s)
//   c_none: 16 fixture(s)
//   c_offset: 2 fixture(s)
//   c_rd: 7 fixture(s)
//   c_rd_imm6: 4 fixture(s)
//   c_rd_lui_imm: 1 fixture(s)
//   c_rd_p_rs1_p_uimm: 7 fixture(s)
//   c_rd_p_rs2_p: 7 fixture(s)
//   c_rd_rs2: 2 fixture(s)
//   c_rd_sp_uimm: 4 fixture(s)
//   c_rd_uimm6: 3 fixture(s)
//   c_rlist_spimm: 4 fixture(s)
//   c_rs1: 2 fixture(s)
//   c_rs1_p_offset: 2 fixture(s)
//   c_rs1_p_rs2_p_uimm: 6 fixture(s)
//   c_rs2_sp_uimm: 4 fixture(s)
//   c_sreg_sreg: 2 fixture(s)
//   fence: 1 fixture(s)
//   imm20: 1 fixture(s)
//   lr: 2 fixture(s)
//   mop_r_n: 1 fixture(s)
//   mop_rr_n: 1 fixture(s)
//   none: 27 fixture(s)
//   offset: 2 fixture(s)
//   p_rd_p_rs1_p: 5 fixture(s)
//   p_rd_p_rs1_p_rs2: 20 fixture(s)
//   p_rd_p_rs1_p_rs2_p: 75 fixture(s)
//   p_rd_p_rs1_p_uimm: 17 fixture(s)
//   p_rd_p_rs1_rs2: 63 fixture(s)
//   p_rd_p_rs1_uimm: 6 fixture(s)
//   p_rd_p_uimm: 3 fixture(s)
//   rd: 9 fixture(s)
//   rd_csr: 1 fixture(s)
//   rd_even_rs1_imm: 1 fixture(s)
//   rd_imm20: 2 fixture(s)
//   rd_n0: 1 fixture(s)
//   rd_offset: 1 fixture(s)
//   rd_p_rs1_p_rs2: 25 fixture(s)
//   rd_p_rs1_p_uimm: 21 fixture(s)
//   rd_pair_rs1_imm: 1 fixture(s)
//   rd_rs1: 118 fixture(s)
//   rd_rs1_csr: 3 fixture(s)
//   rd_rs1_imm: 19 fixture(s)
//   rd_rs1_rl: 4 fixture(s)
//   rd_rs1_rm: 58 fixture(s)
//   rd_rs1_rnum: 1 fixture(s)
//   rd_rs1_rs2: 464 fixture(s)
//   rd_rs1_rs2_bs: 6 fixture(s)
//   rd_rs1_rs2_rm: 16 fixture(s)
//   rd_rs1_rs2_rs3_rm: 16 fixture(s)
//   rd_rs1_shamt: 20 fixture(s)
//   rd_rs1_uimm: 21 fixture(s)
//   rd_rs1_zimm11: 1 fixture(s)
//   rd_rs2: 2 fixture(s)
//   rd_uimm: 5 fixture(s)
//   rd_vs2: 2 fixture(s)
//   rd_vs2_vm: 3 fixture(s)
//   rd_zimm: 2 fixture(s)
//   rd_zimm5_zimm10: 1 fixture(s)
//   rd_zimm_csr: 3 fixture(s)
//   rs1: 6 fixture(s)
//   rs1_csr: 3 fixture(s)
//   rs1_imm5_offset: 2 fixture(s)
//   rs1_offset: 4 fixture(s)
//   rs1_prefetch_offset: 3 fixture(s)
//   rs1_rs2: 10 fixture(s)
//   rs1_rs2_aq: 4 fixture(s)
//   rs1_rs2_offset: 6 fixture(s)
//   rs2_imm_rs1: 8 fixture(s)
//   rs2_offset: 2 fixture(s)
//   rs2_rs1_offset: 4 fixture(s)
//   sc: 2 fixture(s)
//   vd_rs1: 26 fixture(s)
//   vd_rs1_nf_vm: 8 fixture(s)
//   vd_rs1_rs2_nf_vm: 4 fixture(s)
//   vd_rs1_vs2_nf_vm: 8 fixture(s)
//   vd_simm5: 1 fixture(s)
//   vd_vm: 1 fixture(s)
//   vd_vs1: 1 fixture(s)
//   vd_vs2: 16 fixture(s)
//   vd_vs2_rs1: 8 fixture(s)
//   vd_vs2_rs1_vm: 115 fixture(s)
//   vd_vs2_simm5: 4 fixture(s)
//   vd_vs2_simm5_vm: 13 fixture(s)
//   vd_vs2_vm: 50 fixture(s)
//   vd_vs2_vs1: 21 fixture(s)
//   vd_vs2_vs1_vm: 139 fixture(s)
//   vd_vs2_zimm5: 4 fixture(s)
//   vd_vs2_zimm5_vm: 13 fixture(s)
//   vd_vs2_zimm6_vm: 1 fixture(s)
//   vs3_rs1: 6 fixture(s)
//   vs3_rs1_nf_vm: 4 fixture(s)
//   vs3_rs1_rs2_nf_vm: 4 fixture(s)
//   vs3_rs1_vs2_nf_vm: 8 fixture(s)
//   zimm_csr: 3 fixture(s)
// Skipped semantic counts are for source-parser planning only:
