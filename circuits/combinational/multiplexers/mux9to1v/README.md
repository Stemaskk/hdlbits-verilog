# mux9to1v

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Mux9to1v
- **Category:** circuits/combinational/multiplexers

## Problem

Create a 16-bit wide 9-to-1 multiplexer: `sel` 0-8 selects `a` through `i`, and
`sel` 9-15 sets all output bits to 1.

## Notes

Every one of the 16 possible `sel` values has its own case item, so no latch is
inferred. A single `default: out = 16'hFFFF;` would cover 9-15 in one line and
accomplish the same thing.
