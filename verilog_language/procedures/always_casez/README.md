# always_casez

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Always_casez
- **Category:** verilog_language/procedures

## Problem

Build an 8-bit priority encoder: report the position of the first (least
significant) 1 bit. Report 0 if no bits are set.

## Notes

`casez` treats `z` in a case item as don't-care, collapsing what would be 256 cases
down to 9 (one per bit position, checked LSB-first since case items are matched
top-to-bottom). Needed an explicit `default: pos = 0;` for the all-zero input — none
of the 8 bit-position patterns match it, so without a default `pos` would infer a
latch instead of reporting 0.
