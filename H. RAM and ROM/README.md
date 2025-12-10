# RAM and ROM in Verilog

## Overview
Implements simple memory blocks for Basys 3: an 8x8 RAM with synchronous read/write and an 8x4 ROM with fixed contents. Designed to illustrate volatile vs. non-volatile behavior through simulation and hardware testing.

## Contents
- `RAM.v` (8-bit data, 8 addresses)
- `RAM_tb.v` (RAM testbench)
- `ROM.v` (4-bit data, 8 addresses with initialized contents)
- `ROM_tb.v` (ROM testbench)

## How to Simulate
1. Add `RAM.v` with `RAM_tb.v` to a Vivado project and run behavioral simulation; verify writes, reads, overwrites, and reset behavior.
2. Add `ROM.v` with `ROM_tb.v` and simulate to confirm each address returns the expected constant data.

## FPGA Deployment
1. Synthesize and implement the module you want to demo (`RAM.v` or `ROM.v`).
2. Map addresses to switches and data outputs to LEDs (or use the supplied constraints if you have one in your project).
3. Generate a bitstream and program the board.
4. For RAM, toggle write-enable and address/data switches to store and read values; for ROM, cycle addresses and observe fixed outputs.
