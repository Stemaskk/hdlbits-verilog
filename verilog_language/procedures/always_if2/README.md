# always_if2

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Always_if2
- **Category:** verilog_language/procedures

## Problem

Fix buggy code that infers latches: `shut_off_computer` should be 1 only when
`cpu_overheated`, else 0. `keep_driving` should be 1 when not yet `arrived` and the
gas tank isn't empty, else 0.

## Notes

The original bug was missing `else` clauses — when a condition is false and nothing
assigns the output, Verilog infers a latch (the output "remembers" its last value)
instead of clean combinational logic. Adding an explicit `else` for every `if` fixes
it.
