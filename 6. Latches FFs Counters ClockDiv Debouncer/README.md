# Latches, Flip-Flops, Counters, Clock Divider, and Debouncer

## Overview
Collection of sequential building blocks for Basys 3: SR latch, SR/D/T flip-flops, a T-flip-flop-based 3-bit counter, a 100 MHz clock divider, and a switch debouncer. Each module has its own testbench; the debouncer also includes constraints for hardware bring-up.

## Contents
- `SR_Latch/` — `SR_Latch.v`, `SR_Latch_tb.v`
- `Flip Flops/SR Flip Flop/` — `SR_Flip_Flop.v`, `SR_Flip_Flop_tb.v`
- `Flip Flops/D Flip Flop - Synchronous & Asynchronous Implementations/` — `D_Flip_Flop_Synchronous.v`, `D_Flip_Flop_Asynchronous.v`, `D_Flip_Flop_tb.v`
- `Flip Flops/T Flip Flop & 3-Bit Counter Implementation/` — `T_Flip_Flop.v`, `T_Flip_Flop_Counter.v`, `T_Flip_Flop_Counter_tb.v`
- `Clock_Divider.v`, `Clock_Divider_tb.v` — 100 MHz divider to slower tick
- `Switch_Debouncer.v`, `Switch_Debouncer.xdc` — button debouncing with Basys 3 pin map

## How to Simulate
1. Add the module of interest and its `_tb.v` to a Vivado project.
2. Set the corresponding testbench as the simulation source.
3. Run behavioral simulation and confirm state changes only on valid inputs/clock edges; check counter rollover and divider output frequency as applicable.

## FPGA Deployment
1. For the debouncer (or any module you wish to demo), synthesize and implement the design file.
2. Apply `Switch_Debouncer.xdc` (or your own pin map) for Basys 3.
3. Generate a bitstream and program the board.
4. Use pushbuttons/switches as inputs and observe LEDs or logic analyzer outputs to validate clean edges, counting, or divided clocks.
