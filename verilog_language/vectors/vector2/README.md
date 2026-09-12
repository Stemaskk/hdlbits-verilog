# vector2

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vector2
- **Category:** verilog_language/vectors

## Problem

Reverse the byte order of a 32-bit word: `AaaaaaaaBbbbbbbbCcccccccDddddddd` becomes
`DdddddddCcccccccBbbbbbbbAaaaaaaa`. Useful for converting between little-endian and
big-endian byte order.

## Notes

Part-select works on both sides of an `assign` — no shifting or concatenation needed,
just remap each byte directly.
