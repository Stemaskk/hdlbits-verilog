# vector4

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vector4
- **Category:** verilog_language/vectors

## Problem

Sign-extend an 8-bit number to 32 bits: replicate the sign bit (`in[7]`) into the
upper 24 bits, keep the original 8 bits as the lower byte.

## Notes

Replication operator syntax is `{count{expr}}`, and it needs an outer `{}` to
concatenate with the rest: `{{24{in[7]}}, in}`.
