# alwaysblock2

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Alwaysblock2
- **Category:** verilog_language/procedures

## Problem

Build an XOR gate three ways: a continuous `assign`, a combinational `always @(*)`
block, and a clocked `always @(posedge clk)` block.

## Notes

Clocked ("ff") blocks should use non-blocking (`<=`), not blocking (`=`) —
non-blocking evaluates all right-hand sides using values from *before* the clock
edge, then updates every target simultaneously, which matches how real flip-flops
behave and avoids simulation results depending on always-block ordering. Blocking
inside a combinational (`always @(*)`) block is fine since there's no clock-edge
ordering to preserve.
