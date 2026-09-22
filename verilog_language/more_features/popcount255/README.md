# popcount255

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Popcount255
- **Category:** verilog_language/more_features

## Problem

Build a population-count circuit: count the number of 1s in a 255-bit input vector.

## Notes

`count` is an `integer` (32-bit signed), so it never overflows while accumulating up
to 255 — the final value always fits back into the 8-bit `out`.
