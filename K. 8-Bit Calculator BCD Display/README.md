# 8-Bit Calculator with BCD Display

## Overview
Basys 3 calculator that performs eight operations on two 4-bit operands (add, subtract, multiply, divide, AND, OR, XOR, NOT A). Results are zero-extended, converted to BCD via Double Dabble, and shown on a four-digit 7-segment display.

## Contents
- Arithmetic and logic blocks:
  - `1. Adder/FA_1 .v`, `1. Adder/FA_4_Ripple.v`
  - `2. Subtractor/Subtractor_4_Bit.v`
  - `3. Multiplier/Combinational_Multiplier_4_Bit.v`
  - `4. Divider/Divider_4_Bit.v`
  - `5. AND/AND_4_Bit.v`, `6. OR/OR_4_Bit.v`, `7. XOR/XOR_4_Bit.v`, `8. NOT/NOT_4_Bit.v`
- Display path:
  - `Binary_To_BCD_Converter.v`
  - `BCD Display/Anode_Generator.v`, `BCD Display/BCD_7_Segment.v`, `BCD Display/Multi_Digit_7_Segment_Display_Driver.v`
- Top and verification:
  - `Calculator.v` (top level), `Calculator_tb.v` (testbench), `Calculator.xdc` (Basys 3 constraints)

## How to Simulate
1. Add all design files plus `Calculator_tb.v` to a Vivado project.
2. Run behavioral simulation; the testbench exercises all eight operations.
3. Confirm the selected operation routes through the right module, the BCD converter emits four digits, and the display driver scans correctly.

## FPGA Deployment
1. Synthesize and implement `Calculator.v`.
2. Apply `Calculator.xdc` for Basys 3 pin mappings.
3. Generate a bitstream and program the board.
4. Set switches for A[3:0], B[3:0], and operation[2:0]; use BTN_UP for reset.
5. Verify the four-digit display shows the expected decimal result for each operation.
