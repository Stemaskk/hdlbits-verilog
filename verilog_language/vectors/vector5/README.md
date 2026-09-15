# vector5

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vector5
- **Category:** verilog_language/vectors

## Problem

Given five 1-bit inputs (a-e), produce a 25-bit output where each bit is the XNOR of
one pairwise comparison, covering all 5x5 combinations. `out[24] = ~a^a`,
`out[23] = ~a^b`, ... `out[0] = ~e^e`.

## Notes

Built two 25-bit vectors: `{5{a,b,c,d,e}}` (the pattern `abcde` repeated 5 times) and
`{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}}` (each input replicated across its own block of
5). XNOR'ing them lines up every pairwise comparison at once.

Used `~X ^ Y` instead of `~(X ^ Y)` — they're equivalent bitwise since NOT distributes
across XOR (`~(X^Y) == ~X^Y == X^~Y`), and `~` binds tighter than `^` so this parses
as `(~X) ^ Y`.
