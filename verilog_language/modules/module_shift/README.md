# module_shift

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_shift
- **Category:** verilog_language/modules

## Problem

Given `my_dff (input clk, input d, output q)`, instantiate three of them and chain
them together to build a length-3 shift register. `clk` connects to all three.

## Notes

Two intermediate wires (`inst1to2`, `inst2to3`) carry the output of one flip-flop
into the `d` input of the next.
