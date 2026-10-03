# mux256to1v

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Mux256to1v
- **Category:** circuits/combinational/multiplexers

## Problem

Create a 4-bit wide 256-to-1 multiplexer. The 256 4-bit inputs are packed into one
1024-bit vector; `sel=0` selects `in[3:0]`, `sel=1` selects `in[7:4]`, and so on.

## Notes

Uses an indexed part select, `in[start +: width]`: the start (`sel*4`) can vary but
the width (4) is a constant. The plain form `in[sel*4+3 : sel*4]` fails because both
ends move with `sel`, so the tools can't prove the width is constant. `+:` is a
single operator token, so no space is allowed between the `+` and the `:`.
