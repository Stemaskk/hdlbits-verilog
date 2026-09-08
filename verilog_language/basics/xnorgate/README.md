# xnorgate

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Xnorgate
- **Category:** verilog_language/basics

## Problem

Create a module that implements an XNOR gate.

## Notes

Built it out by hand as `!(XOR expanded)` before remembering Verilog has a bitwise-XOR
operator (`^`), which would've made this `assign out = ~(a ^ b);` in one line.
