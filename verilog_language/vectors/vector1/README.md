# vector1

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Vector1
- **Category:** verilog_language/vectors

## Problem

Build a combinational circuit that splits a 16-bit input into a lower byte
(`in[7:0]`) and an upper byte (`in[15:8]`).

## Notes

`` `default_nettype none `` catches typo'd net names at compile time instead of
silently creating a 1-bit wire for them.
