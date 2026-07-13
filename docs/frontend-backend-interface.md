# Frontend Backend Interface

This document is for the future `xirasm` assembler frontend implementer. It
explains how to use `xirasm-lib` as a pure ISA backend without bringing
frontend assembler state into the backend library.

## Mental Model

`xirasm-lib` answers one narrow question:

```text
given one local ISA instruction or SPIR-V module operation, encode it
```

`xirasm` owns everything around that question:

- source files, include/import policy, and module containers;
- labels, symbols, scopes, visibility, and constants;
- sections, fragments, alignment, origin, and output layout;
- Meta/DSL execution and compile-time code generation;
- pass scheduling, branch relaxation, and fixup convergence;
- object files, relocations, final binary formats, and diagnostics.

Do not move those concepts into `xirasm-lib`.

## User Syntax Is Still Assembly

The normal user-facing syntax should remain ISA text:

```asm
loop:
    mov rax, 0
    add rax, 1
    cmp rax, rcx
    jne loop
```

Modern syntax should wrap and generate assembly, not force users to write a
function-call representation of every instruction:

```text
let count = 16;

fn emit_loop() {
loop:
    mov rax, 0
    for i in 0..count {
        add rax, i
    }
    ret
}
```

Forms like `x86.add("rax", i)` are frontend implementation APIs or optional
Meta/DSL emit helpers. They are not the required user syntax for hand-written
assembly.

## Frontend Pipeline

A clean frontend pipeline should look like this:

```text
source text
  -> lexer/parser
  -> frontend AST
  -> Meta/DSL expansion
  -> frontend container: sections, fragments, symbols, fixups
  -> per-ISA backend calls in xirasm-lib
  -> bytes/words/fixup facts
  -> frontend pass convergence and output writer
```

The backend should never see the full source file or frontend container. It
receives one instruction-level request at a time.

## Shared Adapter Shape

The `xirasm` frontend should define its own adapter over `xirasm-lib` instead
of exposing random backend internals to the whole compiler:

```zig
pub const EncodedFragment = struct {
    bytes: []const u8,
    words: []const u32 = &.{},
    fixups: []const FixupFact = &.{},
    min_size: u32,
    max_size: u32,
    relaxable: bool,
};

pub const FixupFact = struct {
    symbol: []const u8,
    kind: FixupKind,
    offset: u32,
    width_bits: u16,
    pc_relative: bool,
};

pub const Resolver = struct {
    ctx: *anyopaque,
    resolve: *const fn (ctx: *anyopaque, name: []const u8) ?i64,
};
```

This adapter belongs in `xirasm`, not in `xirasm-lib`, because it knows about
source spans, diagnostics, section bases, symbol visibility, and pass state.

## x86 Backend Usage

Use `src/x86_encoder/` as the x86 truth source. The frontend may pass:

- mnemonic text;
- operand text or existing structured operands;
- mode/context flags;
- an optional resolver for known labels or expressions.

The x86 backend owns:

- register and operand parsing at instruction level;
- template matching;
- instruction size calculation;
- byte emission through the generated instruction tables.

The x86 backend must not own:

- labels or symbol tables;
- section bases or object relocations;
- frontend pseudo-directives;
- pass convergence.

Recommended frontend behavior:

```text
frontend parses line:     jne loop
frontend owns symbol:     loop
backend request:          encode x86 instruction text with resolver/fixup hook
backend returns:          bytes if resolved, or fixup/relaxation facts
frontend decides:         repeat pass, choose short/near form, emit relocation
```

If a future cleanup splits x86 instruction text parsing into a smaller public
function, keep the actual match/size/gencode path inside `x86_encoder`; do not
write a second x86 matcher in the frontend.

## RISC-V Backend Usage

RISC-V currently has two equivalent entry styles:

```zig
try riscv.encodeMnemonic("add", 64, &.{
    .{ .reg = 1 },
    .{ .reg = 2 },
    .{ .reg = 3 },
});

try riscv.source.encodeInstructionText("add x1, x2, x3", 64, null);
```

Use `riscv.source.encodeInstructionText` when the frontend has a native RISC-V
instruction line. Use `encodeMnemonic` when Meta/DSL code already has typed
operands.

The RISC-V source parser is instruction-level native syntax. It can handle
register names, CSR names, fence masks, rounding modes, vector masks, load/store
address forms, and atomic suffix projection into the existing encoder operands.

It must not become a GNU as clone. Do not add these to `riscv_encoder/source.zig`:

- `.section`, `.globl`, `.option`, or other assembler directives;
- `%hi/%lo` relocation syntax ownership;
- macro syntax;
- multi-instruction pseudo expansion that needs frontend state;
- symbol table or section-relative relocation ownership.

Those belong in `xirasm`.

## SPIR-V Backend Usage

SPIR-V is word/module oriented. The frontend can call:

- module/section builders when it already has structured SPIR-V operations;
- text parsing when it receives SPIRV-Tools style source lines.

The SPIR-V backend owns:

- SPIR-V word emission;
- module header/bound bookkeeping local to a module object;
- SPIR-V text opcode and operand parsing.

The frontend owns:

- where the SPIR-V module lives;
- whether it is emitted as a standalone artifact or embedded data;
- source diagnostics and project-level module policy.

## Symbols, Fixups, And Passes

The most important boundary is this:

```text
xirasm-lib can accept a resolver or return fixup facts.
xirasm-lib must not contain the resolver's symbol table.
```

For unresolved names, the frontend should keep a fragment record:

```text
fragment:
  section = .text
  source_span = ...
  isa = .x86
  original_instruction = "jmp target"
  min_size/max_size = ...
  fixups = [target]
```

Then the frontend reruns backend calls as symbols stabilize. Pass instability
should be explained by frontend facts:

- symbol value changed;
- fragment size changed;
- branch relaxation changed;
- relocation kind changed;
- output layout changed.

Do not hide pass convergence inside encoder modules.

## Frontend Implementation Notes

Useful frontend concepts:

- Meta language lexer/parser/AST ideas;
- expression evaluator concepts;
- diagnostics style;
- include/module ergonomics;
- tested ISA instruction text behavior.

Do not place these directly in backend state:

- main assembler pass driver;
- `SymbolStore`;
- `OutputBuffer`;
- bridge callbacks that emit directly into a hidden assembler;
- pseudo-directive implementation mixed into ISA parsing.

The new assembler should use one modern frontend container and call
`xirasm-lib` as a leaf backend.

## Implementation Advice

Start `xirasm` with the smallest honest loop:

1. Parse a file into line-level statements.
2. Store labels and instruction fragments in a frontend container.
3. For each instruction fragment, call the matching `xirasm-lib` backend.
4. Record bytes/words and fixup facts.
5. Repeat passes until fragment sizes and symbol values converge.
6. Add Meta/DSL expansion only after the plain instruction path is stable.

The frontend should be powerful, but the backend should stay boring.
