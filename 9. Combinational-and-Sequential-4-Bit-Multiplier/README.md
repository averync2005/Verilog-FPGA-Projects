# Combinational-and-Sequential-4-Bit-Multiplier

This project implements a **4-bit multiplier** in Verilog using two different architectures: **combinational** and **sequential**. The purpose of this lab is to design, simulate, and test both designs to compare their behavior in terms of speed, area utilization, and hardware complexity. The **combinational multiplier** uses parallel array logic to compute the 4-bit by 4-bit product in a single clock cycle based only on current inputs. The **sequential multiplier** uses a shift-and-add algorithm controlled by a finite state machine (FSM) that iteratively generates partial products over multiple clock cycles. Both designs were simulated in **Vivado** to verify correctness and then programmed onto the **Basys3 FPGA** to observe physical results for each implementation.

---

## Files

- `Combinational_Multiplier_4_Bit.v` – 4×4-bit parallel array (combinational) multiplier  
- `Combinational_Multiplier_4_Bit_tb.v` – Testbench for the combinational multiplier  
- `Sequential_Multiplier_4_Bit.v` – Sequential shift-and-add multiplier with FSM control  
- `Sequential_Multiplier_4_Bit_tb.v` – Testbench for the sequential multiplier  
- `Multiplier_4_Bit.xdc` – Constraints file for FPGA pin mapping and hardware configuration  

---

## Simulation

1. Download all Verilog design and testbench files from this repository.  
2. Open the project in **Vivado** and add all files to the simulation workspace.  
3. Run **behavioral simulations** for both multiplier designs:  
   - **Combinational Multiplier:**  
     - Verify that the 4-bit × 4-bit product is computed in a single clock cycle.  
     - Check waveform correctness for all input combinations.  
   - **Sequential Multiplier:**  
     - Observe FSM transitions and verify correct partial-product accumulation over multiple clock cycles.  
     - Confirm the final output matches the expected product after all states complete.  
4. Compare Vivado’s **wavelengths** and **area utilization** reports for both designs to analyze speed and efficiency.  

---

## FPGA Deployment

1. Connect your **Basys3 FPGA board** and power it on.  
2. In **Vivado**, synthesize and implement the chosen multiplier design.  
3. Generate the bitstream and program the FPGA.  
4. Provide 4-bit input values using switches and observe the output product on LEDs or the seven-segment display.  
5. Confirm correct real-time operation for both the combinational and sequential multiplier implementations.  

---

## Description

- **Combinational Multiplier:**  
  Implements 4×4-bit multiplication in a single cycle using parallel array logic.  
  High speed, but increased hardware resource usage.  

- **Sequential Multiplier:**  
  Uses a shift-and-add algorithm with FSM control to compute the product over multiple clock cycles.  
  More resource-efficient but slower due to iterative processing.   
