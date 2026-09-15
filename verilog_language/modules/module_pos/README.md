# module_pos

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_pos
- **Category:** verilog_language/modules

## Problem

`mod_a` is declared with 2 outputs and 4 inputs but no port names
(`module mod_a ( output, output, input, input, input, input );`). Connect it by
position to `out1, out2, a, b, c, d`.

## Notes

Named port connection (`.portname(signal)`) isn't possible here since `mod_a`'s ports
have no names — positional connection is the only option, and order must exactly
match the declaration (2 outputs, then 4 inputs).
