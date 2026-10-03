# mux256to1

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Mux256to1
- **Category:** circuits/combinational/multiplexers

## Problem

Create a 1-bit wide 256-to-1 multiplexer. The 256 inputs are packed into one
256-bit vector; `sel=0` selects `in[0]`, `sel=1` selects `in[1]`, and so on.

## Notes

A variable index into a vector (`in[sel]`) is itself a multiplexer, so no `case` or
256 separate comparisons are needed.
