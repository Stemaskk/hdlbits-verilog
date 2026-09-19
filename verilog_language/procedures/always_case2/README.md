# always_case2

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Always_case2
- **Category:** verilog_language/procedures

## Problem

Build a 4-bit priority encoder: `pos` outputs the index of the lowest-order 1 bit in
`in`. If `in` is all zero, output 0.

## Notes

Used a priority `if`/`else if` chain instead of `case` — checking `in[0]` first
naturally gives the lowest-index bit priority, and the final `else` handles the
all-zero case.
