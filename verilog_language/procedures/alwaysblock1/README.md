# alwaysblock1

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Alwaysblock1
- **Category:** verilog_language/procedures

## Problem

Build an AND gate two ways: once with a continuous `assign` (driving a `wire`), and
once with a combinational `always @(*)` block (driving a `reg`). Both synthesize to
the same hardware.

## Notes

`out_alwaysblock` must be declared `reg` since it's the target of a procedural
assignment — unlike `wire`, which can only be driven by `assign` or a submodule's
output port.
