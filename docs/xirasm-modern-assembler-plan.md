# XIRASM Modern Assembler Plan

This document is for the future `xirasm` frontend implementer. It explains how
to use `xirasm-lib` as a clean backend while keeping frontend language,
assembler state, and backend encoding as separate layers.

## Architectural Decision

`xirasm-lib` stays a backend-only package.

`xirasm` owns the assembler frontend:

- source files and module containers;
- labels, symbols, scopes, visibility, and imports;
- sections/domains/fragments;
- fixups, relocations, object/runtime output;
- diagnostics and source maps;
- pass convergence;
- compile-time Meta language execution;
- pseudo-directive DSL implemented as Meta functions.

This split is intentional. Traditional assembler designs often become fragile
when pseudo-directives, compile-time evaluation, format writers, bridge calls,
and pass state all mutate the same hidden state. XIRASM should keep those as
explicit layers.

## Target Pipeline

```text
source files
  -> frontend lexer/parser
  -> Meta language runtime for compile-time DSL
  -> frontend container: sections, fragments, symbols, fixups, diagnostics
  -> xirasm-lib ISA backend calls
  -> bytes / words / fixup facts
  -> object/runtime/output writer
```

The backend never owns the container. It only answers encoding questions.

## Source Language Shape

The goal is not to force users to write low-level API calls for normal assembly.
XIRASM should support normal ISA instruction text:

```text
mov rax, 123
add rax, rcx
beq x1, x2, target
OpCapability Shader
```

The modern part is the directive/control language. Instead of traditional
assembler pseudo-directives and a separate bridge language, XIRASM should make
Meta the only high-level compile-time language:

```text
let count = 16;

fn emit_prologue() {
    x86.push("rbp");
    x86.mov("rbp", "rsp");
}

label("loop");
for i in range(count) {
    x86.add("rax", i);
}
```

The exact syntax can evolve, but the ownership rule should not: ISA text emits
instructions, while Meta functions express pseudo-directives, layout helpers,
data generation, DSLs, and compile-time computation.

The `x86.push(...)`, `x86.mov(...)`, and `x86.add(...)` shape above is an
implementation API or optional Meta helper. It is not the default syntax
required from users writing assembly by hand. Ordinary users should be able to
keep writing `mov rax, 1`, `add rax, rcx`, `ret`, and equivalent native ISA
text.

## Frontend Building Blocks

Good candidates for the frontend layer:

- Meta lexer, parser, AST, value, runtime, and VM concepts;
- token-pattern, data, regex, and sequence helpers;
- diagnostics and source-span reporting;
- include/module ergonomics;
- data helpers that do not depend on assembler state.

Treat compile-time language features as valuable. Treat hidden bridge mutation
as a design risk. The new frontend should define a small host API that talks to
the new container.

## New Meta Host API

Use a declarative host API owned by `xirasm`:

```zig
pub const HostApi = struct {
    emitBytes: fn(section: SectionId, bytes: []const u8, source: SourceSpan) Error!FragmentId,
    reserve: fn(section: SectionId, size: u64, align: u64) Error!FragmentId,
    alignTo: fn(section: SectionId, align: u64, fill: u8) Error!void,
    defineLabel: fn(name: []const u8, binding: LabelBinding) Error!void,
    querySymbol: fn(name: []const u8) Error!?SymbolSnapshot,
    addFixup: fn(fragment: FragmentId, fixup: FixupFact) Error!void,
    encodeIsaText: fn(target: IsaTarget, text: []const u8, ctx: EncodeRequest) Error!EncodedInstruction,
};
```

Meta functions should append declarative operations to the container, not mutate
hidden main-assembler state.

## Symbols And Passes

Symbol management belongs in `xirasm`, not in `xirasm-lib`.

A pass engine is still useful, but it should be smaller and more explicit than
traditional assembler models:

- one pass is enough when all addresses and sizes are fixed;
- two passes are enough for many label/fixup cases;
- additional passes are only for relaxation or layout changes;
- every pass should operate on the same frontend container model;
- the backend should receive either known values or resolver/fixup callbacks.

The frontend should track why a pass is unstable:

- symbol value changed;
- fragment size changed;
- branch relaxation decision changed;
- section layout changed;
- object relocation/fixup changed.

This makes convergence auditable and prevents Meta from reading unstable state
as if it were final output.

## ISA Instruction Text

The frontend should not reimplement x86/RISC-V/SPIR-V encoding.

Recommended shape:

```text
IsaStmt("mov rax, 1")
  -> frontend determines target ISA and mode
  -> backend text parser / encoder
  -> container appends bytes and fixups
```

For RISC-V, use `riscv_encoder.source.encodeInstructionText`.

For SPIR-V, use the SPIR-V text/module APIs.

For x86, keep using the existing x86 encoder path as the truth source. If a
future cleanup splits x86 instruction text parsing from runtime convenience
runners, keep that split inside the backend boundary and keep match/size/gencode
as the only encoding truth source.

## Frontend Container Sketch

The new assembler should start with a clear container model:

```zig
pub const Module = struct {
    target: Target,
    sections: SectionStore,
    symbols: SymbolStore,
    fragments: FragmentStore,
    fixups: FixupStore,
    diagnostics: DiagnosticStore,
    source_map: SourceMap,
};

pub const Fragment = union(enum) {
    bytes: BytesFragment,
    reserve: ReserveFragment,
    align: AlignFragment,
    isa_instruction: IsaInstructionFragment,
    object_record: ObjectRecordFragment,
};
```

The container owns source spans and diagnostics. The backend should not know
where a line came from except through a narrow encode request.

## Implementation Stages

1. Keep `xirasm-lib` pure and verified.
2. Create the `xirasm` frontend repository/package around a container model.
3. Implement Meta core language pieces against the new container API.
4. Define the new `HostApi` against the container.
5. Implement ISA text statements that call `xirasm-lib`.
6. Implement labels, sections, fragments, and fixups.
7. Add a small pass driver with explicit instability reasons.
8. Add output writers only after the container/fixup model is stable.
9. Add useful Meta builtins gradually, routing effects through container host
   API calls.

## Rules For The Next Implementer

- Do not rebuild x86/RISC-V/SPIR-V encoders in the frontend.
- Do not put symbols or labels into `xirasm-lib`.
- Do not revive traditional pseudo-directives as a second language.
- Do not recreate hidden bridge mutation as the frontend/backend contract.
- Use Meta as the high-level directive/DSL language.
- Keep ISA text comfortable for assembly users.
- Make every cross-layer operation explicit through the frontend container.
