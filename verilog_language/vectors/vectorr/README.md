# vectorr

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vectorr
- **Category:** verilog_language/vectors

## Problem

Given an 8-bit input vector, reverse its bit ordering.

## Notes

`in[7:0]` can't be assigned as `in[0:7]` (Verilog doesn't let you flip a declared
range on the fly) — concatenation listing each bit in reverse order is the way to do
this in a single assignment.
