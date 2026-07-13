# xirasm-lib

`xirasm-lib` is the standalone ISA backend library used by XIRASM.

It is intentionally small in scope: it provides instruction encoders, source
parsers where they belong at ISA level, and backend-level tests. It does not own
assembler source files, labels, sections, object formats, executable memory, or
frontend language behavior.

## What It Provides

- x86 / x86-64 instruction matching, sizing, and byte encoding.
- RISC-V instruction encoding and source-text instruction parsing.
- SPIR-V word/module helpers and text support.
- A single public Zig module named `xirasm_backend`.
- Backend tests for ISA coverage and format-independent encoding behavior.

The public module root is:

```zig
const backend = @import("xirasm_backend");

const x86 = backend.x86;
const riscv = backend.riscv;
const spirv = backend.spirv;
```

## What It Does Not Provide

`xirasm-lib` is not a full assembler frontend. These responsibilities belong in
the caller:

- source files, include paths, diagnostics, and source maps;
- symbol tables, labels, scopes, and visibility;
- sections, fragments, layout, relaxation, and fixups;
- object formats, executable formats, linkers, and loaders;
- macro systems, pseudo-directives, or compile-time DSL runtimes;
- executable memory allocation or ABI call wrappers.

This boundary keeps the backend reusable. A frontend can choose its own source
language and layout model while still using the same ISA encoders.

## Install As A Zig Package

With Zig 0.17, add the package to a consumer project with `zig fetch`:

```powershell
zig fetch --save git+https://codeberg.org/kukuyun/xirasm-lib.git
```

That command adds a dependency entry to the consumer project's
`build.zig.zon`. The dependency name comes from this package manifest:

```zon
.dependencies = .{
    .xirasm_lib = .{
        .url = "git+https://codeberg.org/kukuyun/xirasm-lib.git",
        .hash = "...",
    },
}
```

For local development, a consumer project may use a path dependency instead:

```zon
.dependencies = .{
    .xirasm_lib = .{
        .path = "deps/xirasm-lib",
    },
}
```

Use URL dependencies for published projects and path dependencies only for local
workspace development.

## Use From `build.zig`

Import the package module from the dependency and pass it to your own module:

```zig
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const backend_dep = b.dependency("xirasm_lib", .{
        .target = target,
        .optimize = optimize,
    });
    const backend_mod = backend_dep.module("xirasm_backend");

    const app_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
        .imports = &.{
            .{ .name = "xirasm_backend", .module = backend_mod },
        },
    });

    const exe = b.addExecutable(.{
        .name = "demo",
        .root_module = app_mod,
    });
    b.installArtifact(exe);
}
```

Then use the backend APIs from Zig code. x86 returns owned encoding units that
can be materialized into bytes:

```zig
const std = @import("std");
const backend = @import("xirasm_backend");

pub fn encodeX86(allocator: std.mem.Allocator) ![]u8 {
    const x86 = backend.x86;

    var encoded = try x86.encodeBuiltinUnits(
        allocator,
        "mov",
        &.{ "rax", "0x1234" },
        x86.EncodeContext.init(64),
    );
    defer encoded.deinit(allocator);

    return x86.materializeOutput(allocator, encoded.units());
}
```

RISC-V returns a fixed 32-bit encoded instruction. Use `asSlice()` while the
encoded value is still alive, or copy the returned bytes into caller-owned
storage:

```zig
const backend = @import("xirasm_backend");

pub fn encodeRiscvAdd() ![4]u8 {
    const rv = backend.riscv;

    const encoded = try rv.encodeMnemonic("add", 64, &.{
        .{ .reg = 1 },
        .{ .reg = 2 },
        .{ .reg = 3 },
    });

    var bytes: [4]u8 = undefined;
    @memcpy(&bytes, encoded.asSlice());
    return bytes;
}
```

SPIR-V exposes word/module helpers for callers that build modules directly:

```zig
const std = @import("std");
const spirv = @import("xirasm_backend").spirv;

pub fn buildSpirvNop(allocator: std.mem.Allocator) ![]u32 {
    var section = spirv.Section{};
    defer section.deinit(allocator);

    try section.emitRaw(allocator, .op_nop, 0);

    var module = spirv.Module{};
    defer module.deinit(allocator);

    try module.sections.functions.append(allocator, section);
    return module.toOwnedWords(allocator);
}
```

## Optional Backend Exclusion

The package exposes build options for consumers that do not need every backend:

```zig
const backend_dep = b.dependency("xirasm_lib", .{
    .target = target,
    .optimize = optimize,
    .exclude_riscv = true,
    .exclude_spirv = true,
});
```

The x86 backend is always present. RISC-V and SPIR-V can be excluded to reduce
compile surface in consumers that only need x86/x86-64 encoding.

## Build And Test

Build the library:

```powershell
zig build
```

Run backend tests:

```powershell
zig build test --summary all
```

Run with optional backends disabled:

```powershell
zig build test -Dexclude-riscv=true --summary all
zig build test -Dexclude-spirv=true --summary all
```

## Repository Layout

```text
src/x86_encoder/       x86 and x86-64 encoder backend
src/riscv_encoder/     RISC-V encoder and source-text parser
src/spirv_encoder/     SPIR-V word/module/text helpers
src/xirasm_backend.zig public module root
tests/                 backend-level tests
docs/                  backend contract and frontend integration notes
```

## Version

Current version: `0.1.0`.

The same version is recorded in `VERSION` and `build.zig.zon`.
