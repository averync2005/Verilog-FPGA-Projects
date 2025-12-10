# 4-Bit-Full-Adder-with-BCD-7-Segment-Display-in-Verilog

This project implements a **4-bit full adder** in Verilog with a **BCD display module** to show decimal results on the FPGA's seven-segment display. The project includes comprehensive design files and testbenches for FPGA implementation with simulation, programming, and physical testing.

---

## Files

- `FA_1.v` – 1-bit full adder  
- `FA_4_Ripple.v` – 4-bit ripple carry adder  
- `FA_4_Ripple_BCD_7.v` – Integrated 4-bit ripple carry adder with BCD to 7-segment display  
- `BCD_7_Segment.v` – BCD to 7-segment display module  
- `BCD_7_Segment_tb.v` – Testbench for the 7-segment display  
- `FA_4_Ripple_BCD_7_tb.v` – Testbench for the integrated system  

---

## Simulation

1. Download the six Verilog files from this repository and open them in **Vivado**.  
2. The **1-bit Full Adder (`FA_1.v`)** and **4-bit Ripple Carry Adder (`FA_4_Ripple.v`)** are used within the main program.  
3. The **7-Segment BCD Display** is merged with the 4-bit full adder in `FA_4_Ripple_BCD_7.v`.  
4. The **7-segment display module** (`BCD_7_Segment.v`) can be tested independently using the testbench file `BCD_7_Segment_tb.v`.  
5. The **overall integrated system** can be tested with the testbench file `FA_4_Ripple_BCD_7_tb.v`.  
6. Connect your FPGA to your computer, power it on, and establish the connection in **Vivado**.  
7. Run a **behavioral simulation** to view the generated waveforms, confirming the 4-bit adder and 7-segment display functionality.  

---

## FPGA Deployment

- Program the FPGA with your chosen implementation to deploy the integrated adder and display system on hardware.  
