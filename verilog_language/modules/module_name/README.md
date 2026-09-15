# module_name

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module_name
- **Category:** verilog_language/modules

## Problem

`mod_a` is declared as `( output out1, output out2, input in1, input in2, input in3,
input in4 )`. Connect it to `top_module`'s ports **by name**, not by position.

## Notes

Named connection makes the order of `.port(signal)` pairs irrelevant — unlike
[module_pos](../module_pos/), where the module had no port names and position was
the only option.
