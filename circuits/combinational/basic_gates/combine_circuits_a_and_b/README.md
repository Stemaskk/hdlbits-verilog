# combine_circuits_a_and_b

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Mt2015_q4
- **Category:** circuits/combinational/basic_gates (HDLBits page slug: Mt2015_q4)

## Problem

The top-level design uses two instantiations each of subcircuits A
([simple_circuit_a](../simple_circuit_a/): `(x^y)&x`) and B
([simple_circuit_b](../simple_circuit_b/): `!(x^y)`), combined per a given diagram
into output `z`.

## Notes

Since A and B are pure combinational functions of the same `x, y`, both
instantiations of each necessarily produce identical outputs (`a1==a2`, `b1==b2`).
The combine step is `z = (a1|b1) ^ (a2&b2)`, which reduces to the classic
`(A|B) ^ (A&B)` pattern once the duplicate signals are recognized as equal.
