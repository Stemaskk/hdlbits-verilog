# always_case

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Always_case
- **Category:** verilog_language/procedures

## Problem

Build a 6-to-1 mux with a `case` statement: `sel` 0-5 selects the matching 4-bit
`data` input, anything else outputs 0.

## Notes

`default: out = 0` covers every unlisted `sel` value in one line, avoiding both a
latch and a long list of explicit unused cases.
