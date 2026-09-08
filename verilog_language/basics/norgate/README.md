# norgate

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Norgate
- **Category:** verilog_language/basics

## Problem

Create a module that implements a NOR gate (an OR gate with inverted output). A NOR
function needs two operators in Verilog.

## Notes

Used De Morgan's Law instead of `!(a | b)`: `!a & !b == !(a | b)`.
