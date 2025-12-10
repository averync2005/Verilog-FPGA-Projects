# Latch-FlipFlop-Counter-ClockDivider-Debouncer-in-Verilog

This project implements a series of sequential digital logic circuits in Verilog, including SR latches, SR and D flip-flops, a T flip-flop–based 3-bit counter, a clock divider, and a switch debouncer.  
Each module was designed, simulated, and tested on the Basys 3 FPGA board to demonstrate how digital systems store state, synchronize with clock signals, and manage timing and noise.  
These designs collectively illustrate the transition from basic storage elements to practical, clock-driven systems used throughout digital hardware design.

---

## Files

- `SR_Latch.v` / `SR_Latch_tb.v` – Implements a simple SR latch with set/reset behavior.  
- `SR_Flip_Flop.v` / `SR_Flip_Flop_tb.v` – Clocked SR flip-flop; updates output on the rising clock edge.  
- `D_Flip_Flop_Synchronous.v` / `D_Flip_Flop_Asynchronous.v` / `D_Flip_Flop_tb.v` – D flip-flop implementations with synchronous and asynchronous resets.  
- `T_Flip_Flop.v` / `T_Flip_Flop_Counter.v` / `T_Flip_Flop_Counter_tb.v` – Toggle flip-flop and 3-bit counter built from cascaded T flip-flops.  
- `Clock_Divider.v` / `Clock_Divider_tb.v` – Reduces the 100 MHz FPGA clock to a lower frequency for visible output.  
- `Switch_Debouncer.v` / `Switch_Debouncer.xdc` – Debounces a mechanical button input and maps clean output to an LED.  

---

## Simulation

1. Download the Verilog design and testbench files from this repository.  
2. Open **Vivado** and create a new project.  
3. Add all design (`.v`) and testbench files to the project.  
4. For each module, set the corresponding `_tb.v` file as the simulation source.  
5. Run **Behavioral Simulation** and observe the waveforms:  
   - Verify latch and flip-flop state changes occur only on valid inputs or clock edges.  
   - Confirm that the T-flip-flop counter increments correctly.  
   - Check that the clock divider produces a clean, slower output clock.  

---

## FPGA Deployment

1. Connect and power on the **Basys 3 FPGA board**.  
2. In **Vivado**, synthesize and implement the selected module (e.g., `Switch_Debouncer.v`).  
3. Apply the provided **constraint file** (`Switch_Debouncer.xdc`) for correct pin mappings.  
4. Generate the bitstream and program the FPGA board.  
5. For testing:  
   - Use pushbuttons as input signals for flip-flops or the debouncer.  
   - Observe LEDs toggling or counting outputs to confirm correct timing behavior.  

---

## Summary

This lab introduced fundamental sequential logic design on FPGA hardware.  
By building latches, flip-flops, counters, and timing circuits, the project demonstrates how digital systems store and process information across clock cycles.  
It also highlights the importance of clock management and signal conditioning when working with real-world hardware.
