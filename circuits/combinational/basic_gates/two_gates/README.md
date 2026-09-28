# two_gates

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Exams/m2014_q4g
- **Category:** circuits/combinational/basic_gates (HDLBits page slug: Exams/m2014_q4g)

## Problem

Implement the circuit shown: two gates chained on three inputs (`in1`, `in2`,
`in3`) into one output.

## Notes

First gate is an XNOR of `in1` and `in2` (`!(in1 ^ in2)`), then that result is XORed
with `in3`.
