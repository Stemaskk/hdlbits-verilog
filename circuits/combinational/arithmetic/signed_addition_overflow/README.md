# signed_addition_overflow

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q1c
- **Category:** circuits/combinational/arithmetic (HDLBits page slug: Exams/ece241_2014_q1c)

## Problem

Add two 8-bit 2's complement numbers `a` and `b` into `s`, and also compute whether a
signed overflow occurred.

## Notes

The sum itself is just `a + b`; the work is in detecting overflow by comparing sign
bits. Overflow can only happen when both operands have the same sign and the result
has the opposite sign:

- both positive (`!a[7] & !b[7]`) but sum negative (`s[7]`), or
- both negative (`a[7] & b[7]`) but sum positive (`!s[7]`).

Mixed-sign addition can never overflow, since the true result always lies between
the two operands. An equivalent method compares the carry into the sign bit with the
carry out of it.
