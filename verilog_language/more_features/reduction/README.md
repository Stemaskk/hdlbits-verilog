# reduction

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Reduction
- **Category:** verilog_language/more_features

## Problem

Compute an even-parity bit for an 8-bit byte: the XOR of all 8 data bits.

## Notes

Reduction operators (`^`, `&`, `|` applied as a unary prefix) collapse a whole vector
to a single bit — `^in[7:0]` XORs every bit of `in` together in one expression.
