# two_bit_equality

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Mt2015_eq2
- **Category:** circuits/combinational/basic_gates (HDLBits page slug: Mt2015_eq2)

## Problem

Given two 2-bit inputs `A` and `B`, output `z = 1` if `A == B`, else `z = 0`.

## Notes

`A ^ B` is 0 only when every bit matches. Logical NOT (`!`) collapses that 2-bit
vector to a single boolean bit: 1 only if the whole vector is exactly 0, so
`!(A^B)` is true exactly when `A == B`.
