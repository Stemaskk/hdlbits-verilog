# module_fadd

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_fadd
- **Category:** verilog_language/modules (HDLBits: Modules > Combinational)

## Problem

Same 32-bit adder wiring as [module_add](../module_add/) (`add16` is still provided),
but this time you must also write `add1`, the 1-bit full adder that `add16` is built
from internally.

## Notes

Standard full adder: `sum = a ^ b ^ cin`, `cout = ab + a*cin + b*cin` (carry out if
any two of the three inputs are 1).
