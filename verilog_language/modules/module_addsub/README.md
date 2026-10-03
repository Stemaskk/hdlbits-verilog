# module_addsub

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_addsub
- **Category:** verilog_language/modules

## Problem

Build a 32-bit adder-subtractor from two provided `add16` modules: conditionally
invert `b` when `sub` is 1 and feed `sub` into the lower adder's carry-in, so the
circuit computes `a + b + 0` or `a + ~b + 1` (i.e. `a - b`).

## Notes

The conditional invert is written as a `case` in an `always @(*)` block. `bxor` is
declared as a `wire` here, which passed on HDLBits' simulator, but standard Verilog
expects `reg` for anything assigned procedurally. The more portable options are
`reg [31:0] bxor;` or skipping the block entirely with `assign bxor = b ^ {32{sub}};`.
