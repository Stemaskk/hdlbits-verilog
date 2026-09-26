# adder100i

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Adder100i
- **Category:** verilog_language/more_features

## Problem

Build a 100-bit ripple-carry adder from 100 full adders. Outputs are the 100-bit
`sum` and the carry-out of every stage (`cout[99]` is the overall carry-out).

## Notes

Used an instance array (`fadd instance1[99:0]`) instead of a `generate` loop. Each
copy gets one bit of `a`, `b`, `sum` and `cout`, and the carry-in vector is built by
concatenation: `{cout[98:0], cin}`. That puts the outside `cin` into copy 0 and each
previous adder's `cout` into the next copy's `cin`.
