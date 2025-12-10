# 4-Bit-Full-Adder-in-Verilog

This project implements a **4-bit full adder** in Verilog using two different architectures: **ripple carry** and **carry lookahead**. The project includes comprehensive design files and testbenches for FPGA implementation with simulation, programming, and physical testing.

---

## Files

- `FA_1.v` – 1-bit full adder  
- `FA_1_tb.v` – Testbench for the 1-bit adder  
- `FA_4_Ripple.v` – 4-bit ripple carry adder  
- `FA_4_Lookahead.v` – 4-bit carry lookahead adder  
- `FA_4_tb.v` – Testbench for the 4-bit adders  

---

## Simulation

1. Download the five Verilog files from this repository and open them in **Vivado**.  
2. The testbench file **(FA_1_tb.v)** is used to simulate the implementation files for the 1-bit adder **(FA_1.v)**.  
3. The testbench file **(FA_4_tb.v)** is used to simulate the two implementation files for the 4-bit adders **(FA_4_Ripple.v and FA_4_Lookahead.v)**.  
4. You can select which implementation to test by modifying the **UUT declaration** in the testbench file.  
5. Both implementations will produce identical waveforms and perform the same function on the FPGA.  

---

## FPGA Deployment

- Connect your FPGA to your computer, power it on, and establish the connection in **Vivado**.  
- Run a **behavioral simulation** to view the generated waveforms, confirming the 4-bit adder functionality.  
- Finally, program the FPGA with your chosen implementation to deploy the adder on hardware.  
