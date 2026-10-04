# four_bit_adder

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Exams/m2014_q4j
- **Category:** circuits/combinational/arithmetic (HDLBits page slug: Exams/m2014_q4j)

## Problem

Implement the given circuit diagram: a 4-bit ripple-carry adder built from full
adders, taking two 4-bit inputs `x` and `y` and producing a 5-bit `sum`, where
`sum[4]` is the final carry-out.

## Notes

Same instance-array pattern as [adder3](../adder3/), but the final carry-out goes
straight into `sum[4]` instead of a separate `cout` port. The carry-out vector is
`{sum[4], cout[2:0]}`, so only the lower three carries need an internal wire, and
the carry-in vector is `{cout[2:0], 1'b0}` (outside carry-in tied to 0).

Declaring the internal carries as `wire [2:0] cout` (brackets before the name, a
3-bit vector) rather than `wire cout[2:0]` (an array of three 1-bit wires) is what
allows slicing them in the port connections.
