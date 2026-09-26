# fadd

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Fadd
- **Category:** circuits/combinational/arithmetic

## Problem

Create a full adder: add three bits (`a`, `b`, `cin`) and produce a sum and a
carry-out.

## Notes

`sum` is the XOR of all three inputs; `cout` is 1 whenever at least two of the three
inputs are 1. Same logic as the `add1` module in [module_fadd](../../../verilog_language/modules/module_fadd/).
