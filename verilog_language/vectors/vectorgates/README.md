# vectorgates

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vectorgates
- **Category:** verilog_language/vectors

## Problem

Given two 3-bit inputs `a` and `b`, compute their bitwise-OR (3-bit), logical-OR
(1-bit), and the concatenation of their bitwise inverses: `~b` in `out_not[5:3]`
and `~a` in `out_not[2:0]`.

## Notes

`|` is bitwise (per-bit, keeps width) vs `||` is logical (collapses the whole vector
to a single boolean bit) vs `~` is bitwise NOT (keeps width) vs `!` is logical NOT
(collapses to 1 bit). A wire can't be assigned twice, but different part-selects of
the same output (`out_not[5:3]` and `out_not[2:0]`) can each get their own `assign`.
