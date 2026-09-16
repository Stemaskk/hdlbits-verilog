# module_shift8

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_shift8
- **Category:** verilog_language/modules

## Problem

Given `my_dff8 (input clk, input [7:0] d, output [7:0] q)`, chain three of them into
an 8-bit, length-3 shift register, then mux the output on `sel[1:0]`: 0 = `d` itself
(0 cycles delay), 1/2/3 = after the 1st/2nd/3rd flip-flop.

## Notes

Tapped the output of each stage (`inst1to2`, `inst2to3`, `result`) into a
combinational `case` mux, matching the delay amount to `sel`.
