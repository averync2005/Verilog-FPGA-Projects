# 8-Bit Verilog Calculator with BCD Display

## Overview
This project implements an 8 bit calculator on the Basys 3 FPGA board using Verilog.
The calculator performs eight operations using two 4 bit operands:

Arithmetic Operations
• Addition
• Subtraction
• Multiplication
• Division (quotient only)

Logical Operations
• AND
• OR
• XOR
• NOT (applied to operand A)

The computed result is converted from binary to BCD format and displayed on the Basys 3 seven segment display using a multiplexed digit driver.
This project integrates arithmetic modules, logical modules, a Binary to BCD converter, and a complete seven segment display controller.

---

## Features
• Fully modular Verilog design
• Clean top level Calculator module
• Custom Binary to BCD converter using the double dabble algorithm
• Four digit multiplexed seven segment display driver
• Intuitive, readable Verilog code
• Complete testbench for simulation
• Basys 3 constraints file included

---

## How It Works

### 1. Operation Selection
Three switches on the Basys 3 set the desired operation:

000 – Add  
001 – Subtract  
010 – Multiply  
011 – Divide  
100 – AND  
101 – OR  
110 – XOR  
111 – NOT (A only)

### 2. Calculation
The Calculator module routes the inputs through the correct submodule and zero extends the output to 12 bits for conversion and display.

### 3. Binary to BCD Conversion
The result is passed through a Binary to BCD converter that produces four BCD digits.

### 4. Seven Segment Display
A custom display driver cycles through the anodes and outputs the correct segment pattern for each digit.

---

## Hardware Setup

### Inputs
- A[3:0] --> Switches SW0–SW3  
- B[3:0] --> Switches SW4–SW7  
- operation[2:0] --> Switches SW8–SW10  
- rst --> BTN UP  

### Output
- Four digit seven segment display driven by cathode and anode pins listed in Calculator.xdc  

---

## Simulation
A full testbench is provided in Calculator_tb.v.
It exercises all eight operations and verifies functionality before programming the FPGA.

To run the simulation:
1. Open Vivado
2. Add all Verilog source files
3. Add Calculator_tb.v under simulation sources
4. Run behavioral simulation
5. View waveforms for all internal signals

---

## Building and Programming on Basys 3
1. Open Vivado and create a new project
2. Add all Verilog files as sources
3. Add Calculator.xdc as the constraints file
4. Run Synthesis --> Implementation --> Generate Bitstream
5. Open Hardware Manager and program the Basys 3 board

---

## Authors
Avery Nudell-Cook  
Design, simulation, BCD conversion, display driver, constraints, GitHub repository

Colin Sawyer  
Adder, multiplier, integration support, Vivado testing, hardware setup
