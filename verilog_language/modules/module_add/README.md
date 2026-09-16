# module_add

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_add
- **Category:** verilog_language/modules

## Problem

Given `add16 (input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output
cout)`, instantiate two to build a 32-bit adder: the first handles the lower 16 bits
with `cin` tied to 0, the second handles the upper 16 bits using the first's carry-out,
with its own carry-out ignored.

## Notes

Connecting an output port to a constant (`.cout(0)` on the second instance) is legal
Verilog — equivalent to leaving that output unconnected, since we don't care about
the final carry-out.
