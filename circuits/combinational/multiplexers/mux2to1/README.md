# mux2to1

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Mux2to1
- **Category:** circuits/combinational/multiplexers

## Problem

Create a one-bit wide 2-to-1 multiplexer: `sel=0` chooses `a`, `sel=1` chooses `b`.

## Notes

Ternary operator (`sel ? b : a`) is the natural fit for a 2-to-1 mux.
