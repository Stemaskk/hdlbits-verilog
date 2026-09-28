# ringer

- **HDLBits link:** https://hdlbits.01xz.net/wiki/Ringer
- **Category:** circuits/combinational/basic_gates

## Problem

Control a phone's ringer and vibration motor from an incoming call (`ring`) and a
mode select (`vibrate_mode`). Activate the motor when vibrating, the ringer
otherwise — never both.

## Notes

Both outputs share the `ring` term; `vibrate_mode` (and its inverse) picks which one
gets driven, so `ringer` and `motor` can never both be 1 at once.
