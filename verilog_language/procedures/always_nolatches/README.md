# always_nolatches

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Always_nolatches
- **Category:** verilog_language/procedures

## Problem

Decode PS/2 arrow-key scancodes into four one-hot outputs: `16'he06b`→left,
`16'he072`→down, `16'he074`→right, `16'he075`→up, anything else → all zero.

## Notes

All four outputs are pre-assigned to 0 at the top of the block, then the `case`
only overrides the one that matches. This avoids needing an explicit `default` or
repeating all four assignments in every branch, while still assigning every output
on every path (no latch).
