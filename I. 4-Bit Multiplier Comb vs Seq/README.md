# 4-Bit Multipliers: Combinational vs. Sequential

## Overview
Implements two 4-bit multipliers to compare speed and resource trade-offs. The combinational version computes the product in one cycle; the sequential version uses a shift-and-add FSM over multiple cycles. Both target the Basys 3 board.

## Contents
- `Combinational_Multiplier_4_Bit.v` and `Combinational_Multiplier_4_Bit_tb.v`
- `Sequential_Multiplier_4_Bit.v` and `Sequential_Multiplier_4_Bit_tb.v`
- `Multiplier_4_Bit.xdc` (constraints for Basys 3)

## How to Simulate
1. Add both multiplier files and their testbenches to a Vivado project.
2. Run the combinational testbench to confirm single-cycle products for all input combinations.
3. Run the sequential testbench to observe FSM sequencing and multi-cycle accumulation.
4. Optionally compare timing/resource reports between the two builds.

## FPGA Deployment
1. Synthesize and implement your chosen multiplier.
2. Apply `Multiplier_4_Bit.xdc` for Basys 3 pin mappings.
3. Generate a bitstream and program the board.
4. Provide 4-bit inputs via switches; verify the displayed product on LEDs or a logic analyzer.
