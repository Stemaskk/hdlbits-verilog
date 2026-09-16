# module_cseladd

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_cseladd
- **Category:** verilog_language/modules (HDLBits: Modules: Hierarchy)

## Problem

Build a 32-bit carry-select adder from three `add16` instances: the lower half adds
normally, while the upper half is computed twice in parallel (once assuming
carry-in=0, once assuming carry-in=1). The lower half's carry-out selects which
upper-half result is correct via a 2-to-1 mux, avoiding the ripple-carry delay of
waiting for the lower half to finish before starting the upper half.

## Notes

`sum[15:0]` is driven structurally straight from `instance1`'s output port, while
`sum[31:16]` is driven procedurally by the `always` block's mux — both work on the
same `sum` vector since different, non-overlapping bit ranges are involved.
