# vector0

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vector0
- **Category:** verilog_language/vectors

## Problem

Build a circuit with a 3-bit input that outputs the same vector, and also splits it
into three separate 1-bit outputs (`o0`, `o1`, `o2` for bits 0, 1, 2).

## Notes

Whole-vector assignment (`outv = vec`) and per-bit part-select (`vec[0]`, etc.) can
coexist off the same input.
