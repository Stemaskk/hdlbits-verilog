# kmap1

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Kmap1
- **Category:** circuits/combinational/karnaugh_map

## Problem

Implement the circuit described by a given 3-variable Karnaugh map (`a`, `b`, `c` in,
`out` out).

## Notes

The map's contents are given as an image only. Every cell is 1 except `a=b=c=0`, so
grouping the 1s collapses the whole map to a single 3-input OR: `a | b | c`.
