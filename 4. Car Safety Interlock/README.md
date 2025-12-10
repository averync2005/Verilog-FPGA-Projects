# Car Safety Interlock

## Overview
Implements a car safety warning and interlock system that prioritizes alerts (seatbelt, doors, coolant) and controls an engine-enable signal. Designed for Basys 3 with simulation, constraints, and FPGA bring-up.

## Contents
- `Car_Safety_System.v` (top-level safety logic)
- `Car_Safety_System_tb.v` (testbench)
- `Car_Safety_System.xdc` (constraints for Basys 3)

## How to Simulate
1. Add the design and testbench to a Vivado project.
2. Set `Car_Safety_System_tb.v` as the simulation source.
3. Run behavioral simulation and check that outputs reflect the correct priority and interlock behavior for all input combinations.

## FPGA Deployment
1. Synthesize and implement `Car_Safety_System.v`.
2. Apply `Car_Safety_System.xdc` for pin mappings.
3. Generate a bitstream and program the Basys 3 board.
4. Drive inputs with switches/buttons to emulate vehicle signals; observe LEDs for warnings and the interlock result.
