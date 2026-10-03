# adder3

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Adder3
- **Category:** circuits/combinational/arithmetic

## Problem

Build a 3-bit ripple-carry adder from three full adders (writing the `fadd` module
as part of the submission). Output the 3-bit sum and the carry-out of *each* full
adder, so `cout[2]` is the final carry-out.

## Notes

Instance array (`fadd instance1[2:0]`) with the carry chain built by concatenation:
`{cout[1:0], cin}` feeds the outside `cin` to stage 0 and each previous stage's
`cout` to the next stage. Same pattern as [adder100i](../../../verilog_language/more_features/adder100i/),
just 3 bits wide.
