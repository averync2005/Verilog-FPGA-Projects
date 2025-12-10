# 8-1-Mux-Implementation-in-Verilog

This project implements an **8:1 multiplexer** in Verilog using three different modeling styles: **structural**, **behavioral**, and **dataflow**. The project includes comprehensive design files and testbenches for FPGA implementation with simulation, programming, and physical testing.

---

## Usage

1. Download the four Verilog files from this repository and open them in **Vivado**.  
2. The testbench file (`Multiplexor_8to1_tb.v`) is used to simulate the three implementation files (structural, behavioral, and dataflow).  
3. You can select which implementation to test by modifying the **UUT declaration** in the testbench file.  
4. All three implementations will produce identical waveforms and perform the same function on the FPGA.  

---

## Simulation

- Connect your FPGA to your computer, power it on, and establish the connection in **Vivado**.  
- Run a **behavioral simulation** to view the generated waveforms.  
- This confirms the **8:1 multiplexer functionality**.  

---

## Deployment

- Program the FPGA with your chosen implementation to deploy the multiplexer on hardware.  
