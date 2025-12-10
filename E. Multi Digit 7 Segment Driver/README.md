# Multi-Digit 7-Segment Display Driver

## Overview
Implements a four-digit multiplexed 7-segment driver. A clock divider and scan counter rapidly cycle anodes while a shared decoder generates cathode patterns from BCD inputs.

## Contents
- `BCD_7_Segment.v` (BCD-to-7-segment decoder)
- `Anode_Generator.v` (digit scan/anode control)
- `Multi_Digit_7_Segment_Display_Driver.v` (top-level driver)
- `Multi_Digit_7_Segment_Display_Driver_tb.v` (testbench)
- `Multi_Digit_7_Segment_Display_Driver.xdc` (constraints for Basys 3)

## How to Simulate
1. Add all design and testbench files to a Vivado project.
2. Set `Multi_Digit_7_Segment_Display_Driver_tb.v` as the simulation source.
3. Run behavioral simulation and verify correct anode scanning and segment patterns across all digits.

## FPGA Deployment
1. Synthesize and implement `Multi_Digit_7_Segment_Display_Driver.v`.
2. Apply the provided `.xdc` for Basys 3 pin mappings.
3. Generate a bitstream and program the board.
4. Provide BCD digit inputs and confirm stable multi-digit display output without flicker.
