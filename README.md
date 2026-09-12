# HDLBits Solutions

My solutions to [HDLBits](https://hdlbits.01xz.net/wiki/Main_Page) — a set of Verilog exercises
covering language basics, combinational/sequential circuit design, reading simulations,
and testbench writing.

> **Note:** This repo is for my own learning record. If you're stuck on a problem, try
> solving it yourself first — HDLBits works best when you struggle with it a bit.

## Structure

Solutions are organized to mirror HDLBits' own category tree. Each problem gets its own
folder containing the solution and a short README with the problem statement/link and
any notes on my approach.

```
hdlbits-verilog/
├── getting_started/
├── verilog_language/
│   ├── basics/              # Wire, 4-bit adder, module hierarchy intro
│   ├── vectors/             # Vectors, vector part-select, bit-swizzling
│   ├── modules/             # Module instantiation, hierarchies, port connections
│   ├── procedures/          # always blocks, if/case, for loops
│   └── more_features/       # Conditional ternary, reduction ops, generate blocks
├── circuits/
│   ├── combinational/
│   │   ├── basic_gates/     # AND/OR/NAND/NOR/XOR/XNOR, wire decl
│   │   ├── multiplexers/    # 2-to-1, 9-to-1, wide muxes
│   │   ├── arithmetic/      # Adders, subtractors, popcount, comparators
│   │   └── karnaugh_map/    # K-map to circuit exercises
│   └── sequential/
│       ├── latches_flipflops/   # D-FF, DFF w/ reset/enable, SR latch
│       ├── counters/            # Binary, BCD, configurable counters
│       ├── shift_registers/     # Shift registers, rotators, LFSRs
│       ├── finite_state_machines/
│       └── exams/               # ECE241/CS450-style exam problems
├── reading_simulations/     # Deriving circuits/bugs from given waveforms
├── writing_testbenches/     # Non-synthesizable testbench-writing exercises
├── templates/               # Boilerplate for a new problem
└── scripts/                 # Helper script to scaffold a new problem
```

## Progress

| Category | Solved / Total |
|---|---|
| Getting Started | 2 / 2 |
| Verilog Language | 11 / ~45 |
| Circuits – Combinational | 0 / ~90 |
| Circuits – Sequential | 0 / ~60 |
| Reading Simulations | 0 / ~10 |
| Writing Testbenches | 0 / ~10 |

*(Counts are approximate — HDLBits adds problems over time. Update as you go.)*

## Adding a new solution

```bash
./scripts/new_problem.sh circuits/combinational/basic_gates wire
```

This copies `templates/` into the target folder, pre-filled with the problem name.
Then:

1. Fill in `README.md` with the HDLBits problem link and a one-line description.
2. Write and check your solution using HDLBits' own in-browser simulator.
3. Paste the passing solution into the `.v` file here.
4. Update the progress table above.

## License

Solutions are shared under the [MIT License](LICENSE) — HDLBits problem statements
themselves belong to HDLBits / the original course authors and are not reproduced
here beyond short descriptions and links.
