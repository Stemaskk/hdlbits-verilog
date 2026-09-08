# wire_decl

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Wire_decl
- **Category:** verilog_language/basics

## Problem

Build `out = (a AND b) OR (c AND d)` and `out_n` as its inverse, using intermediate
wires to connect the AND and OR gates.

## Notes

Used a third wire (`abcd`) to hold the OR output before feeding both `out` and
`out_n` — HDLBits notes this isn't strictly necessary since `out` itself could feed
the inverter, but it's clearer this way.
