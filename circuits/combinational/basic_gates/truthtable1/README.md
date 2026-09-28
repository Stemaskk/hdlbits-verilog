# truthtable1

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Truthtable1
- **Category:** circuits/combinational/basic_gates (Truth tables)

## Problem

Given a truth table over `x3, x2, x1`, build the circuit. `f = 1` on rows 2, 3, 5,
and 7 (out of 8), `f = 0` elsewhere.

## Notes

Classic sum-of-products: one AND term per row where `f = 1` (each input inverted if
the table has a 0 for it, kept as-is if a 1), all four terms OR'd together. Always
correct regardless of how "irregular" the truth table looks, though not necessarily
the smallest circuit (a Karnaugh map could simplify further).
