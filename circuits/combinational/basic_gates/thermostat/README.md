# thermostat

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Thermostat
- **Category:** circuits/combinational/basic_gates

## Problem

Control a heater, air conditioner, and fan from `too_cold`, `too_hot`, a heat/cool
`mode`, and a manual `fan_on`. Heater on in heat mode when too cold; aircon on in
cool mode when too hot; fan on whenever heater or aircon is on, or `fan_on` is set.

## Notes

`fan` re-derives the heater/aircon conditions inline (`too_cold & mode`,
`too_hot & !mode`) rather than referencing the `heater`/`aircon` wires directly —
either works since they're the same combinational expressions.
