# 4-Bit Full Adder

## Overview
Compares ripple-carry and carry-lookahead architectures for a 4-bit adder. Includes a standalone 1-bit building block and shared testbenches for quick simulation.

## Contents
- `FA_1.v` (1-bit full adder)
- `FA_1_tb.v` (1-bit adder testbench)
- `FA_4_Ripple.v` (4-bit ripple-carry adder)
- `FA_4_Lookahead.v` (4-bit carry-lookahead adder)
- `FA_4_tb.v` (4-bit adder testbench)

## How to Simulate
1. Add all files to a Vivado project.
2. Run `FA_1_tb.v` to verify the 1-bit cell.
3. Run `FA_4_tb.v`, selecting ripple or lookahead as the UUT.
4. Compare waveforms to see latency and carry behavior differences.

## FPGA Deployment
1. Synthesize and implement your chosen 4-bit adder.
2. Generate a bitstream and program the Basys 3 board.
3. Drive inputs with switches and verify sums and carry on LEDs or a logic analyzer.
