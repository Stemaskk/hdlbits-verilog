# adder100

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Adder100
- **Category:** circuits/combinational/arithmetic

## Problem

Create a 100-bit binary adder: add two 100-bit numbers and a carry-in to produce a
100-bit sum and a carry out.

## Notes

Too many full adders to instantiate by hand (compare [adder3](../adder3/) and
[four_bit_adder](../four_bit_adder/)), so this uses behavioral code: the `+` operator
does the addition. The sum of two 100-bit numbers plus a carry-in can need 101 bits,
so the concatenation `{cout, sum}` on the left side of the `assign` captures the
carry out as the top bit and the 100-bit sum below it.
