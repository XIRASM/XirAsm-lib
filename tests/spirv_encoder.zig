const std = @import("std");
const spirv = @import("xirasm_backend").spirv;
const spec = spirv.spec;
const Section = spirv.section.Section;
const Module = spirv.module.Module;

fn readWordLe(bytes: []const u8, word_index: usize) u32 {
    const start = word_index * @sizeOf(u32);
    return @as(u32, bytes[start]) |
        (@as(u32, bytes[start + 1]) << 8) |
        (@as(u32, bytes[start + 2]) << 16) |
        (@as(u32, bytes[start + 3]) << 24);
}

fn expectWordsFromBytes(expected: []const u32, bytes: []const u8, start_word: usize) !void {
    try std.testing.expectEqual(expected.len * @sizeOf(u32), bytes.len - start_word * @sizeOf(u32));
    for (expected, 0..) |word, index| {
        try std.testing.expectEqual(word, readWordLe(bytes, start_word + index));
    }
}

fn headerWord(magic: u32, version: u32, generator: u32, bound: u32, schema: u32) [5]u32 {
    return .{ magic, version, generator, bound, schema };
}

test "spirv module header and nop" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emitRaw(std.testing.allocator, .op_nop, 0);
    const result = section.toWords();
    try std.testing.expectEqual(@as(u32, 0x00010000) | @as(u32, @intFromEnum(spec.Opcode.op_nop)), result[0]);
    try std.testing.expectEqual(@as(usize, 1), result.len);
}

test "spirv emit undef" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_undef, .{
        .id_result_type = @enumFromInt(1),
        .id_result = @enumFromInt(2),
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 3) << 16) | @intFromEnum(spec.Opcode.op_undef),
        1,
        2,
    }, result);
}

test "spirv type int 32-bit" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_type_int, .{
        .id_result = @enumFromInt(3),
        .width = 32,
        .signedness = 0,
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_type_int),
        @intFromEnum(@as(spec.Id, @enumFromInt(3))),
        32,
        0,
    }, result);
}

test "spirv type float 32-bit" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_type_float, .{
        .id_result = @enumFromInt(4),
        .width = 32,
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 3) << 16) | @intFromEnum(spec.Opcode.op_type_float),
        @intFromEnum(@as(spec.Id, @enumFromInt(4))),
        32,
    }, result);
}

test "spirv capability shader" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_capability, .{
        .capability = .shader,
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 2) << 16) | @intFromEnum(spec.Opcode.op_capability),
        @intFromEnum(spec.Capability.shader),
    }, result);
}

test "spirv memory model glsl450" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_memory_model, .{
        .addressing_model = .logical,
        .memory_model = .glsl450,
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 3) << 16) | @intFromEnum(spec.Opcode.op_memory_model),
        @intFromEnum(spec.AddressingModel.logical),
        @intFromEnum(spec.MemoryModel.glsl450),
    }, result);
}

test "spirv entry point vertex" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_entry_point, .{
        .execution_model = .vertex,
        .entry_point = @enumFromInt(1),
        .name = "main",
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 5) << 16) | @intFromEnum(spec.Opcode.op_entry_point),
        @intFromEnum(spec.ExecutionModel.vertex),
        @intFromEnum(@as(spec.Id, @enumFromInt(1))),
        'm' | (@as(u32, 'a') << 8) | (@as(u32, 'i') << 16) | (@as(u32, 'n') << 24),
        0,
    }, result);
}

test "spirv function begin" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_function, .{
        .id_result_type = @enumFromInt(5),
        .id_result = @enumFromInt(6),
        .function_control = .{},
        .function_type = @enumFromInt(7),
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 5) << 16) | @intFromEnum(spec.Opcode.op_function),
        @intFromEnum(@as(spec.Id, @enumFromInt(5))),
        @intFromEnum(@as(spec.Id, @enumFromInt(6))),
        0, // function control mask
        @intFromEnum(@as(spec.Id, @enumFromInt(7))),
    }, result);
}

test "spirv type pointer" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_type_pointer, .{
        .id_result = @enumFromInt(8),
        .storage_class = .function,
        .type = @enumFromInt(3),
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_type_pointer),
        @intFromEnum(@as(spec.Id, @enumFromInt(8))),
        @intFromEnum(spec.StorageClass.function),
        @intFromEnum(@as(spec.Id, @enumFromInt(3))),
    }, result);
}

test "spirv variable" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_variable, .{
        .id_result_type = @enumFromInt(8),
        .id_result = @enumFromInt(9),
        .storage_class = .function,
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_variable),
        @intFromEnum(@as(spec.Id, @enumFromInt(8))),
        @intFromEnum(@as(spec.Id, @enumFromInt(9))),
        @intFromEnum(spec.StorageClass.function),
    }, result);
}

test "spirv constant 42" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_constant, .{
        .id_result_type = @enumFromInt(3),
        .id_result = @enumFromInt(10),
        .value = .{ .uint32 = 42 },
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_constant),
        @intFromEnum(@as(spec.Id, @enumFromInt(3))),
        @intFromEnum(@as(spec.Id, @enumFromInt(10))),
        42,
    }, result);
}

test "spirv string" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_string, .{
        .id_result = @enumFromInt(11),
        .string = "test",
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_string),
        @intFromEnum(@as(spec.Id, @enumFromInt(11))),
        't' | (@as(u32, 'e') << 8) | (@as(u32, 's') << 16) | (@as(u32, 't') << 24),
        0,
    }, result);
}

test "spirv store" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_store, .{
        .pointer = @enumFromInt(9),
        .object = @enumFromInt(10),
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 3) << 16) | @intFromEnum(spec.Opcode.op_store),
        @intFromEnum(@as(spec.Id, @enumFromInt(9))),
        @intFromEnum(@as(spec.Id, @enumFromInt(10))),
    }, result);
}

test "spirv load" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_load, .{
        .id_result_type = @enumFromInt(3),
        .id_result = @enumFromInt(12),
        .pointer = @enumFromInt(9),
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_load),
        @intFromEnum(@as(spec.Id, @enumFromInt(3))),
        @intFromEnum(@as(spec.Id, @enumFromInt(12))),
        @intFromEnum(@as(spec.Id, @enumFromInt(9))),
    }, result);
}

test "spirv return" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_return, {});
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 1) << 16) | @intFromEnum(spec.Opcode.op_return),
    }, result);
}

test "spirv return value" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_return_value, .{
        .value = @enumFromInt(10),
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 2) << 16) | @intFromEnum(spec.Opcode.op_return_value),
        @intFromEnum(@as(spec.Id, @enumFromInt(10))),
    }, result);
}

test "spirv add" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_f_add, .{
        .id_result_type = @enumFromInt(4),
        .id_result = @enumFromInt(13),
        .operand_1 = @enumFromInt(10),
        .operand_2 = @enumFromInt(10),
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 5) << 16) | @intFromEnum(spec.Opcode.op_f_add),
        @intFromEnum(@as(spec.Id, @enumFromInt(4))),
        @intFromEnum(@as(spec.Id, @enumFromInt(13))),
        @intFromEnum(@as(spec.Id, @enumFromInt(10))),
        @intFromEnum(@as(spec.Id, @enumFromInt(10))),
    }, result);
}

test "spirv decorate location" {
    var section = Section{};
    defer section.deinit(std.testing.allocator);

    try section.emit(std.testing.allocator, .op_decorate, .{
        .target = @enumFromInt(14),
        .decoration = .{ .location = .{ .location = 0 } },
    });
    const result = section.toWords();
    try std.testing.expectEqualSlices(u32, &.{
        (@as(u32, 4) << 16) | @intFromEnum(spec.Opcode.op_decorate),
        @intFromEnum(@as(spec.Id, @enumFromInt(14))),
        @intFromEnum(spec.Decoration.location),
        0,
    }, result);
}

test "spirv module write to file" {
    const io = std.testing.io;
    const cwd = std.Io.Dir.cwd();

    var module = Module{};
    defer module.deinit(std.testing.allocator);

    try module.sections.globals.emit(std.testing.allocator, .op_undef, .{
        .id_result_type = @enumFromInt(1),
        .id_result = @enumFromInt(2),
    });
    try module.setIdBound(3);

    const tmp = "spv_write_test.tmp";
    defer cwd.deleteFile(io, tmp) catch {};

    const bytes = try module.toOwnedBytes(std.testing.allocator);
    defer std.testing.allocator.free(bytes);

    var file = try cwd.createFile(io, tmp, .{});
    defer file.close(io);
    try file.writeStreamingAll(io, bytes);

    const content = try cwd.readFileAlloc(io, tmp, std.testing.allocator, .unlimited);
    defer std.testing.allocator.free(content);

    try std.testing.expectEqual(@as(usize, 8 * @sizeOf(u32)), content.len);

    try std.testing.expectEqual(@as(u32, 0x07230203), readWordLe(content, 0));
    try std.testing.expectEqual(Module.Version.v1_6.toWord(), readWordLe(content, 1));
    try std.testing.expectEqual(@as(u32, 0), readWordLe(content, 2));
    try std.testing.expectEqual(@as(u32, 3), readWordLe(content, 3));
    try std.testing.expectEqual(@as(u32, 0), readWordLe(content, 4));
    try expectWordsFromBytes(module.sections.globals.toWords(), content, 5);
}

test "spirv module write to dir" {
    var module = Module{};
    defer module.deinit(std.testing.allocator);

    try module.sections.functions.emit(std.testing.allocator, .op_nop, {});

    var tmp_dir = std.testing.tmpDir(.{});
    defer tmp_dir.cleanup();

    const bytes = try module.toOwnedBytes(std.testing.allocator);
    defer std.testing.allocator.free(bytes);

    var file = try tmp_dir.dir.createFile(std.testing.io, "test.spv", .{});
    defer file.close(std.testing.io);
    try file.writeStreamingAll(std.testing.io, bytes);

    const content = try tmp_dir.dir.readFileAlloc(std.testing.io, "test.spv", std.testing.allocator, .unlimited);
    defer std.testing.allocator.free(content);

    try std.testing.expectEqual(@as(u32, 0x07230203), readWordLe(content, 0));
    try expectWordsFromBytes(module.sections.functions.toWords(), content, 5);
}
