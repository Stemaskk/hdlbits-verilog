# vector3

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vector3
- **Category:** verilog_language/vectors

## Problem

Given six 5-bit inputs (a-f, 30 bits total), concatenate them with two extra constant
bits (`2'b11`) to form 32 bits, then split that across four 8-bit outputs (w, x, y, z).

## Notes

Concatenation (`{...}`) can appear on both sides of `assign` at once — pack the
right side, unpack into named parts on the left, in one statement.
