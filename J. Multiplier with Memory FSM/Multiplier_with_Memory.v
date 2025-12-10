`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:11:54 PM
// Design Name: 
// Module Name: Multiplier_with_Memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Multiplier_with_Memory (
    input clk,  // System clock
    input rst,  // Active-high reset
    input [2:0] addr1,  // ROM address of multiplicand1
    input [2:0] addr2,  // ROM address of multiplicand2
    output [7:0] d_out  // Multiplication output from RAM
);

    // Internal Signal Declarations
    wire [3:0] rom_data;  // Data from ROM
    wire [3:0] reg_file_A;  // A output from register file
    wire [3:0] reg_file_B;  // B output from register file
    wire [7:0] multiplier_out;  // Output from combinational multiplier
    wire [7:0] ram_data_out;  // Data output from RAM
   
    // Control Unit Signals
    wire w_rf;  // Write enable for register file
    wire [2:0] adr;  // Address from control unit
    wire DA, SA, SB;  // Data/Select signals
    wire [2:0] st_out;  // State output
    wire w_ram_en;
    wire [2:0] w_ram_addr;
   
    // ROM Module -- Stores the input numbers
    ROM rom_instance (
        .ROM_data(rom_data),
        .ROM_addr(adr)  // Address from control unit
    );
   
    // Register File -- Temporary storage for operands
    Register_File reg_file_instance (
        .A(reg_file_A),  // First operand to multiplier
        .B(reg_file_B),  // Second operand to multiplier
        .SA(SA),  // Select A from control unit
        .SB(SB),  // Select B from control unit
        .D(rom_data),  // Data input from ROM
        .DA(DA),  // Data destination address
        .W(w_rf),  // Write enable from control unit
        .rst(rst),
        .clk(clk)
    );
   
    // Combinational Multiplier -- Performs the actual multiplication
    Combinational_Multiplier_4_Bit multiplier_instance (
        .a(reg_file_A),  // First operand from register file
        .b(reg_file_B),  // Second operand from register file
        .p(multiplier_out)  // 8-bit product
    );
   
    // RAM Module -- Stores the multiplication results
    RAM ram_instance (
        .clk(clk),
        .rst(rst),
        .w(w_ram_en),  // Write enable
        .data_in(multiplier_out),  // Data from multiplier
        .data_adr(w_ram_addr),  // Address
        .data_out(ram_data_out)  // Data output
    );
   
    // Control Unit -- Coordinates the entire operation
    Control_Unit control_unit_instance (
        .clk(clk),
        .rst(rst),
        .adr1(addr1),  // First operand address
        .adr2(addr2),  // Second operand address
        .w_rf(w_rf),  // Register file write enable
        .adr(adr),  // ROM address
        .DA(DA),  // Data destination address
        .SA(SA),  // Select A
        .SB(SB),  // Select B
        .st_out(st_out),  // State output
        .w_ram_en(w_ram_en),  // RAM write enable
        .w_ram_addr(w_ram_addr)  // RAM write address
    );
   
    // Output assignment
    assign d_out = ram_data_out;
endmodule