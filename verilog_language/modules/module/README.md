# module

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Module
- **Category:** verilog_language/modules

## Problem

Create one instance of module `mod_a` (`input in1, input in2, output out`) and
connect its pins to `top_module`'s ports `a`, `b`, `out`.

## Notes

Used named port connections (`.port(signal)`), which don't depend on declaration
order — safer than positional connection once a module has more than a couple ports.
