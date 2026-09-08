# 7458

- **HDLBits link:** https://hdlbits.01xz.net/wiki/7458
- **Category:** verilog_language/basics

## Problem

Implement the 7458 chip: four AND gates and two OR gates, wired as two independent
AND-OR circuits. Gate 1: `p1y = (p1a&p1b&p1c) | (p1d&p1e&p1f)` (two 3-input ANDs).
Gate 2: `p2y = (p2a&p2b) | (p2c&p2d)` (two 2-input ANDs).

## Notes

Used four intermediate wires, one per AND gate, then OR'd each pair into the outputs.
