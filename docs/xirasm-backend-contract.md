# XIRASM Backend Contract

`xirasm-lib` is the pure ISA backend layer for XIRASM. It is not the assembler
frontend, not the runtime shellcode runner, and not the object/linker layer.

The library exists so multiple frontends can share the same verified encoders:

- a modern XIRASM assembler frontend;
- a compile-time Meta/DSL driven assembler frontend;
- host-language runtime assembly wrappers;
- test/oracle tools that need direct ISA encoding.

## Current Backend Surface

| Module | Responsibility | Frontend-facing role |
| --- | --- | --- |
| `src/x86_encoder/` | x86/x86-64 match, size, and machine-code emission | Encode x86 instruction text or structured operands into bytes/fixups through the existing encoder truth source. |
| `src/riscv_encoder/` | RISC-V generated encoder plus native source/text instruction parser | Encode RISC-V API operands or native instruction text into a 32-bit word. |
| `src/spirv_encoder/` | SPIR-V module/section/text emission | Build SPIR-V words/modules and parse SPIR-V text lines. |
| `src/xirasm_backend.zig` | Public module root | Re-export only the three ISA backends. |

Anything above this table belongs outside `xirasm-lib`.

## Explicit Non-Goals

Do not add these back to this library:

- assembler symbol tables, labels, scopes, or visibility;
- `.section`, `.globl`, macro, include, or pseudo-directive frontend logic;
- Meta VM bridge state or host assembler callbacks;
- executable page allocation or function-pointer runtime runners;
- object writer ownership, linker relocation ownership, or final binary layout;
- main assembler multi-pass state;
- frontend diagnostics, source maps, module containers, or project systems.

Those are real features, but their owner is the future `xirasm` frontend or a
runtime wrapper package.

## Encoding Contract

The frontend should treat each backend call as a local instruction or local
module emission request.

### x86

The x86 backend owns instruction template matching, size calculation, and byte
generation. A frontend may provide:

- mnemonic text;
- operand text or existing structured operand forms;
- an `EncodeContext` describing mode bits and prefix flags;
- an optional resolver callback for symbols or expressions.

The backend may return:

- encoded units/bytes;
- fixup facts for unresolved or relocatable operands;
- branch relaxation decisions when applicable;
- typed errors such as unsupported operands, invalid literals, or no matching
  template.

The backend must not own the symbol table. If an operand references a label,
the frontend supplies a resolver result or accepts a fixup fact and retries
during its own pass/fixup phase.

### RISC-V

The RISC-V backend has two equivalent entry styles:

- API-level operands through `encodeMnemonic`;
- source/text instruction lines through `source.encodeInstructionText`.

The parser is instruction-level native RISC-V syntax, not GNU as compatibility.
It may project CSR names, fence masks, rounding modes, atomic suffixes, vector
mask spelling, and load/store offset forms into the existing encoder operands.

It must not grow GAS directives, relocation expressions, section state, macro
syntax, or pseudo-instruction expansion that needs multiple backend calls. Those
belong in the frontend.

### SPIR-V

The SPIR-V backend owns module/section word emission and text parsing for SPIR-V
instruction lines. It does not own a C ABI compile function or host runtime
memory. A frontend can choose whether SPIR-V is assembled into a module,
embedded as data, or written as a separate output artifact.

## Recommended Frontend Adapter

For a more concrete guide for the future assembler implementer, read
`docs/frontend-backend-interface.md`.

The future assembler frontend should introduce a small adapter around each ISA
instead of letting frontend code call random internals:

```zig
pub const EncodedInstruction = struct {
    bytes: []const u8,
    fixups: []const FixupFact,
    min_size: u32,
    max_size: u32,
    relaxable: bool,
};

pub const IsaBackend = union(enum) {
    x86,
    riscv,
    spirv,
};
```

That adapter should be in `xirasm`, not in `xirasm-lib`, because it will know
about containers, sections, labels, diagnostics, and pass state.

## Validation Contract

Backend changes should keep these gates:

- `zig build test --summary all`;
- SPIR-V word/module tests;
- x86 encoder tests that continue to prove match/size/gencode behavior.

Do not validate backend correctness by routing through a future frontend. The
backend must stay independently testable.
