# Multiplier-with-Memory-Components-in-Verilog

This project implements a **multiplier with memory components** in Verilog, integrating previously developed modules into a complete digital system. The design reads two operands from **ROM**, multiplies them using a **combinational multiplier**, and writes the resulting product into **RAM**. A **control unit** coordinates all operations, including reading, multiplying, and writing. The system demonstrates how multiple digital subsystems—memory, arithmetic, and control—can be combined into one cohesive design. The project includes comprehensive Verilog design files and testbenches for simulation, synthesis, and FPGA implementation on the **Basys 3** board.

---

## Files

- `ROM.v` – Read-Only Memory initialized with predefined data values  
- `RAM.v` – Random-Access Memory supporting synchronous read/write operations  
- `Combinational_Multiplier_4_Bit.v` – 4×4-bit combinational multiplier module  
- `Control_Unit.v` – Finite state machine managing read, multiply, and write operations  
- `Register_File.v` – Contains register-based decoding and temporary data storage  
- `Multiplier_with_Memory.v` – Top-level module integrating ROM, RAM, control unit, and multiplier  
- `Multiplier_with_Memory_tb.v` – Testbench for the integrated system  
- `Multiplier_with_Memory.xdc` – FPGA constraints file for hardware pin mapping  

---

## Simulation

1. Download all design and testbench files from this repository.  
2. Open the project in **Vivado** and add all files to the workspace.  
3. Run **behavioral simulation** for `Multiplier_with_Memory_tb.v`.  
4. Observe the waveform outputs to verify proper sequencing:  
   - Operand values are read from ROM based on two input addresses (`addr1`, `addr2`).  
   - The 4-bit operands are multiplied using the combinational multiplier.  
   - The resulting product is written into RAM at the designated address.  
5. Confirm that the final data output (`d_out`) reflects the expected products for all test cases.  

---

## Description

- **ROM (Read-Only Memory):**  
  Stores fixed operand values. Each address corresponds to a predefined 4-bit binary number used as input to the multiplier.  

- **RAM (Random-Access Memory):**  
  Receives and stores the computed product values from the multiplier. Supports synchronous write and read operations.  

- **Combinational Multiplier:**  
  Computes the 4-bit by 4-bit product in a single clock cycle using parallel logic.  

- **Control Unit:**  
  Finite state machine (FSM) that sequences operations in three stages—read, multiply, and write—to ensure correct timing and data flow.  

- **Register File:**  
  Includes a 1-to-2 decoder and multiplexers for routing data between the memory and multiplier modules.  

- **Top Module (Multiplier_with_Memory):**  
  Integrates all subsystems into one architecture, demonstrating memory-computation coordination through control logic.  
