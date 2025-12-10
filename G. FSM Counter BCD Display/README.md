# FSMs, Up Counter, Binary-to-BCD, and Multi-Digit Display

## Overview
Combines sequence-detecting FSMs, a 12-bit up counter, a binary-to-BCD converter (Double Dabble), and a four-digit 7-segment driver. The top-level design displays the running counter value on the Basys 3 while supporting standalone simulations of each block.

## Contents
- `Finite State Machine Sequencers/` — `Moore_FSM_Sequencer.v`, `Mealy_FSM_Sequencer.v` with matching testbenches
- `12 Bit Up Counter/` — `Up_Counter.v`, `Up_Counter_tb.v`
- `Binary to BCD Converter/` — `Binary_To_BCD_Converter.v`, `Binary_To_BCD_Converter_tb.v`
- `BCD Display Driver/` — `Anode_Generator.v`, `BCD_7_Segment.v`, `Multi_Digit_7_Segment_Display_Driver.v`
- `Displayed_Multi_Digit_Counter.v` — top-level integration of counter, converter, and display
- `Displayed_Multi_Digit_Counter.xdc` — constraints for Basys 3
- `Clock_Divider.v` — refresh clock for display scanning

## How to Simulate
1. Add the block you want to test plus its `_tb.v` (where provided) to a Vivado project.
2. For FSMs, run `Moore_FSM_Sequencer_tb.v` or `Mealy_FSM_Sequencer_tb.v` to observe pattern detection timing.
3. For the counter and converter, run `Up_Counter_tb.v` and `Binary_To_BCD_Converter_tb.v` to confirm rollover and digit outputs.
4. For the full path, simulate `Displayed_Multi_Digit_Counter.v` with the display driver to verify scanned digits and BCD conversion.

## FPGA Deployment
1. Synthesize and implement `Displayed_Multi_Digit_Counter.v`.
2. Apply `Displayed_Multi_Digit_Counter.xdc` for Basys 3 pin mappings.
3. Generate a bitstream and program the board.
4. Reset and let the counter run; confirm the four-digit display updates smoothly and matches the binary count.
