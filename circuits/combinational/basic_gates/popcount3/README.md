# popcount3

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Popcount3
- **Category:** circuits/combinational/basic_gates

## Problem

Build a population-count circuit for a 3-bit input: count the number of 1s.

## Notes

Unlike [reduction](../../../verilog_language/more_features/reduction/) (which
collapses bits with `^`/`&`/`|`), counting needs arithmetic `+`, not a bitwise
operator — each 1-bit input is added as its numeric value (0 or 1), giving a 2-bit
sum from 0 to 3.
