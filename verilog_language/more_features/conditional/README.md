# conditional

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Conditional
- **Category:** verilog_language/more_features

## Problem

Given four unsigned 8-bit numbers, find the minimum using the ternary conditional
operator (`cond ? if_true : if_false`).

## Notes

Built two 2-way mins (`a` vs `b`, `c` vs `d`) then a final 2-way min between those
results — composing simple ternaries instead of one big nested expression.
