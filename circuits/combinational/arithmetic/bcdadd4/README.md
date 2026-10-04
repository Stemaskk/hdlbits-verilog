# bcdadd4

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Bcdadd4
- **Category:** circuits/combinational/arithmetic

## Problem

Given a provided `bcd_fadd` (one-digit BCD adder), instantiate 4 copies to build a
4-digit BCD ripple-carry adder over two BCD numbers packed into 16-bit vectors.

## Notes

Same instance-array pattern as [bcdadd100](../../../verilog_language/more_features/bcdadd100/),
just 4 digits instead of 100. `a`, `b` and `sum` are 4x the 4-bit port width, so they
split into 4-bit slices per copy automatically. The 1-bit `cin`/`cout` ports need one
bit per copy (4 bits), not 16: a common slip is sizing the carry wires like `a` and
`b`, which Quartus rejects with an "illegal connection to port in array of instances"
error. The final `cout` is `carry[3]`.
