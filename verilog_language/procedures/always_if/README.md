# always_if

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Always_if
- **Category:** verilog_language/procedures

## Problem

Build a 2-to-1 mux two ways: choose `b` if both `sel_b1` and `sel_b2` are true,
otherwise choose `a`. Implement it once with a continuous assign (ternary), once with
a procedural `if`/`else`.

## Notes

Both branches of the `if`/`else` are covered, so no latch is inferred — `out_always`
always gets a value in every possible path through the combinational block.
