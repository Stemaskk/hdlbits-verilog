# vector100r

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vector100r
- **Category:** verilog_language/more_features

## Problem

Given a 100-bit input vector, reverse its bit ordering.

## Notes

Same idea as [vectorr](../../vectors/vectorr/) (8-bit reversal by hand-writing every
bit), but at 100 bits a `for` loop inside a combinational `always @(*)` block is far
more practical than listing all 100 bits in a concatenation.
