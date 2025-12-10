# Car-Safety-Warning-System-in-Verilog

This project implements a car safety warning system in Verilog, designed for FPGA implementation. The core purpose of this digital logic system is to process various vehicle status inputs — such as seatbelt engagement, door closure, and coolant temperature — and generate the appropriate safety-critical outputs. These outputs include priority warning signals, chime alerts, and a final interlock signal that determines whether the engine is permitted to start.

---

## Files

- `Car_Safety_System.v` – Base module for the system  
- `Car_Safety_System_tb.v` – Testbench used to simulate and test the system  
- `Car_Safety_System.xdc` – Constraints file with constants for simulation and FPGA implementation  

---

## Simulation

1. Download the Verilog source files and testbench from this repository.  
2. Open the project in **Vivado** and add the files.  
3. Run a **behavioral simulation**.  
4. View the generated waveforms to confirm the correct output responses to all input combinations.  

---

## FPGA Deployment

1. Connect your FPGA board to your computer and power it on.  
2. In **Vivado**, synthesize and implement the design.  
3. Generate the bitstream and program the FPGA board.  
4. The system will then deploy the physical car safety interlock and warning system on hardware for demonstration and testing.  
