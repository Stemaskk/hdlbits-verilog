# bcdadd100

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Bcdadd100
- **Category:** verilog_language/more_features

## Problem

Given a provided `bcd_fadd` (one-digit BCD adder: `input [3:0] a, b`, `input cin`,
`output cout`, `output [3:0] sum`), instantiate 100 copies to build a 100-digit BCD
ripple-carry adder over two 400-bit packed BCD numbers.

## Notes

Same instance-array pattern as [adder100i](../adder100i/): `a`, `b`, and `sum` are
4x the port width, so they split into 4-bit slices per copy automatically. The
single-bit `cout` port needs a 100-bit `carry` wire to catch one bit per copy, and
`.cin({carry[98:0],cin})` shifts each copy's carry-in to the previous copy's
carry-out, with the outside `cin` feeding copy 0. The final `cout` is `carry[99]`,
since the top-level `cout` here is a single bit rather than a per-stage vector.
