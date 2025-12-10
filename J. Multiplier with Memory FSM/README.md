# Multiplier with Memory and FSM Control

## Overview
Integrates ROM-sourced operands, a combinational multiplier, and RAM storage under a control FSM. Demonstrates coordinating memory reads, arithmetic, and write-back in a small system targeting Basys 3.

## Contents
- `ROM.v` (operand storage)
- `RAM.v` (product storage)
- `Combinational_Multiplier_4_Bit.v` (4x4 multiplier)
- `Control_Unit.v` (FSM sequencing read, multiply, write)
- `Register_File.v` (operand routing and temporary storage)
- `Multiplier_with_Memory.v` (top-level integration)
- `Multiplier_with_Memory_tb.v` (testbench)

## How to Simulate
1. Add all design files and `Multiplier_with_Memory_tb.v` to a Vivado project.
2. Run behavioral simulation and observe the ROM reads, multiply operation, and RAM write-back in the waveform.
3. Verify that `d_out` reflects the expected products for the provided operand addresses.

## FPGA Deployment
1. Synthesize and implement `Multiplier_with_Memory.v`.
2. Apply your Basys 3 constraint file (use existing pin maps from earlier labs if desired).
3. Generate a bitstream and program the board.
4. Drive operand addresses, start/reset controls, and confirm the RAM captures the multiplied result.
