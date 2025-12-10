# 8-to-1 Multiplexer

## Overview
Implements an 8-to-1 multiplexer three ways—structural, behavioral, and dataflow. A single testbench drives all versions so you can compare coding styles while keeping functionality identical.

## Contents
- `Multiplexer_8to1_Structural.v` (structural)
- `Multiplexer_8to1_Behavioral.v` (behavioral)
- `Multiplexer_8to1_Dataflow.v` (dataflow)
- `Multiplexor_8to1_tb.v` (testbench)

## How to Simulate
1. Open the four files in Vivado.
2. Set `Multiplexor_8to1_tb.v` as the simulation source.
3. In the testbench, choose which implementation is the UUT.
4. Run behavioral simulation and confirm all three produce the same waveform.

## FPGA Deployment
1. Synthesize and implement the chosen multiplexer.
2. Generate a bitstream and program the Basys 3 board.
3. Drive select/data switches and verify the output LED matches the selected input.
