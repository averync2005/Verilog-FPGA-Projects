# 4-Bit Adder with BCD 7-Segment Display

## Overview
Integrates a 4-bit ripple-carry adder with a BCD-to-7-segment display so sums appear directly on the Basys 3 display. Includes standalone adder and display modules plus combined top-level and testbenches.

## Contents
- `FA_1.v` (1-bit full adder cell)
- `FA_4_Ripple.v` (4-bit ripple-carry adder)
- `FA_4_Ripple_BCD_7.v` (adder combined with BCD display)
- `BCD_7_Segment.v` (BCD-to-7-segment decoder)
- `BCD_7_Segment_tb.v` (decoder testbench)
- `FA_4_Ripple_BCD_7_tb.v` (integrated system testbench)
- `FA_4_BCD.xdc` (constraints for Basys 3)

## How to Simulate
1. Add all design and testbench files to a Vivado project.
2. Run `BCD_7_Segment_tb.v` to verify the decoder alone.
3. Run `FA_4_Ripple_BCD_7_tb.v` to exercise the full adder+display path.
4. Inspect waveforms for correct sum, carry, and segment outputs.

## FPGA Deployment
1. Synthesize and implement `FA_4_Ripple_BCD_7.v`.
2. Apply `FA_4_BCD.xdc` for Basys 3 pin mappings.
3. Generate a bitstream and program the board.
4. Use switches for A/B inputs; confirm the displayed decimal sum matches expected results.
