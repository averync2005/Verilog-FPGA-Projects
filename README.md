# Verilog FPGA Projects

Collection of Basys 3 FPGA labs that build from simple combinational logic to full calculators with display drivers. Every folder includes Verilog sources, testbenches, and (when needed) constraint files; see each sub-README for exact build steps.

## How to Use
- Open a project folder in Vivado, add `.v` files as design sources, and add the matching `_tb.v` file as a simulation source.
- Run behavioral simulation to verify waveforms before synthesizing.
- When programming the Basys 3 board, include the supplied `.xdc` file for correct pin mappings, then generate the bitstream and load it via Hardware Manager.

## Project Catalog
| # | Project | Focus | Key Pieces |
| - | - | - | - |
| 1 | [8 to 1 Mux](1.%208%20to%201%20Mux/README.md) | 8:1 multiplexer in structural, behavioral, and dataflow styles | `Multiplexor_8to1_tb.v` drives three interchangeable implementations |
| 2 | [4-Bit Full Adder](2.%204-Bit%20Full%20Adder/README.md) | Ripple-carry vs. carry-lookahead adders | `FA_1.v`, `FA_4_Ripple.v`, `FA_4_Lookahead.v`, shared testbenches |
| 3 | [4-Bit Adder + BCD 7-Segment](3.%204-Bit%20Adder%20BCD%20Display/README.md) | Ripple adder integrated with BCD-to-7-seg display | `FA_4_Ripple_BCD_7.v`, `BCD_7_Segment.v`, dedicated testbenches |
| 4 | [Car Safety Interlock](4.%20Car%20Safety%20Interlock/README.md) | Safety warning/interlock logic with priority outputs | `Car_Safety_System.v` plus simulation and constraints |
| 5 | [Multi Digit 7-Segment Driver](5.%20Multi%20Digit%207%20Segment%20Driver/README.md) | Clocked multiplexing for four-digit display | `clock_divider.v`, `anode_driver.v`, `multi_seg_driver.v`, `multi_seg_driver_tb.v` |
| 6 | [Latches, FFs, Counter, Clock Divider, Debouncer](6.%20Latches%20FFs%20Counters%20ClockDiv%20Debouncer/README.md) | Sequential building blocks and timing primitives | SR/D/T flip-flops, 3-bit counter, clock divider, switch debouncer with tests |
| 7 | [FSMs, Up Counter, Binary-to-BCD, Display](7.%20FSM%20Counter%20BCD%20Display/README.md) | Moore/Mealy detectors, 12-bit counter, Double Dabble converter, integrated display | `moore_1100.v`, `mealy_1101.v`, `up_counter_12bit.v`, `bin_to_bcd.v`, top-level driver |
| 8 | [RAM and ROM](8.%20RAM%20and%20ROM/README.md) | Simple memory blocks for read-only and read/write storage | `RAM.v`, `ROM.v` with matching testbenches |
| 9 | [Combinational vs. Sequential Multiplier](9.%204-Bit%20Multiplier%20Comb%20vs%20Seq/README.md) | 4-bit array multiplier vs. FSM shift-and-add | `Combinational_Multiplier_4_Bit.v`, `Sequential_Multiplier_4_Bit.v`, constraints and tests |
| 10 | [Multiplier with Memory + FSM](10.%20Multiplier%20with%20Memory%20FSM/README.md) | ROM-fed operands, combinational multiply, RAM write-back under control FSM | `ROM.v`, `RAM.v`, `Combinational_Multiplier_4_Bit.v`, `Control_Unit.v`, `Register_File.v`, integrated testbench |
| 11 | [8-Bit Calculator with BCD Display](11.%208-Bit%20Calculator%20BCD%20Display/README.md) | 8-operation ALU with binary-to-BCD conversion and four-digit output | Arithmetic/logical modules, custom Double Dabble converter, seven-seg driver, `Calculator_tb.v`, `Calculator.xdc` |

## Notes
- Projects are independent; you can open and simulate any folder (in Vivado or equivalent software) without the others.
- Hardware bring-up assumes a Digilent Basys 3, but the designs are portable with updated constraint files.
