# gates4

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Gates4
- **Category:** verilog_language/vectors

## Problem

Build a combinational circuit with a 4-bit input `in[3:0]` and three outputs: a
4-input AND, a 4-input OR, and a 4-input XOR of the bits.

## Notes

Chained the bitwise operators directly across each bit instead of using the reduction
operators (`&in`, `|in`, `^in`), which would collapse each to one line.
