# gatesv

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Gatesv
- **Category:** circuits/combinational/basic_gates (Gates and vectors)

## Problem

Given a 4-bit input, compute for each bit and its neighbor: `out_both` (AND with the
neighbor to the left), `out_any` (OR with the neighbor to the right), and
`out_different` (XOR with the neighbor to the left, wrapping around).

## Notes

Each output is one vector-wide operation between two offset slices of `in`, instead
of writing out each bit by hand. `out_both`/`out_any` use two 3-bit slices offset by
one position (`in[3:1]` vs `in[2:0]`); `out_different` needs a rotated copy of the
whole 4-bit vector, built with `{in[0], in[3:1]}`, since the wraparound can't be
expressed as a plain slice.
