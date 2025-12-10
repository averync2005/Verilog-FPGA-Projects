# Multi-Digit-Seven-Segment-Display-Driver-in-Verilog

This project implements a multi-digit seven-segment display driver in Verilog. The system takes a 16-bit BCD input and uses clocked multiplexing to determine which digit is active at a given time. The outputs include the four anode signals controlling which display is lit and the seven cathode signals that define the digit segments. The design uses a clock divider and scan counter to refresh each digit rapidly enough to appear continuously lit to the human eye. This ensures stable visual output while conserving FPGA resources by sharing a single decoder across all digits. The project includes complete design files and testbenches for FPGA implementation with simulation, programming, and physical testing.

---

## Files

- `seven_seg_decoder.v` – BCD to 7-segment decoder module  
- `clock_divider.v` – Clock division module used for digit refresh  
- `anode_driver.v` – Digit scanning and anode control module  
- `multi_seg_driver.v` – Top-level multi-digit driver module  
- `multi_seg_driver_tb.v` – Testbench for the multi-digit driver  

---

## Simulation

1. Download the Verilog design and testbench files from this repository.  
2. Open the project in **Vivado** and add the files.  
3. Run a **behavioral simulation** on `multi_seg_driver_tb.v`.  
4. Observe the waveforms to verify correct digit multiplexing and segment illumination.  

---

## FPGA Deployment

1. Connect your FPGA board and power it on.  
2. In **Vivado**, synthesize and implement the design.  
3. Generate the bitstream and program the FPGA board.  
4. Provide BCD inputs via switches and observe the decimal values displayed across the four seven-segment digits.
