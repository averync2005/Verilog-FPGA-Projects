`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:25:22 PM
// Design Name: 
// Module Name: Multiplier_with_Memory_tb
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

module Multiplier_with_Memory_TB;
    // Inputs
    reg clk;
    reg rst;
    reg [2:0] addr1;
    reg [2:0] addr2;
   
    // Outputs
    wire [7:0] d_out;
   
    // Instantiate the Unit Under Test (UUT)
    Multiplier_with_Memory uut (
        .clk(clk),
        .rst(rst),
        .addr1(addr1),
        .addr2(addr2),
        .d_out(d_out)
    );
   
    // Clock generation
    always #5 clk = ~clk;
   
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        addr1 = 3'b000;
        addr2 = 3'b000;
       
        // Wait for global reset
        #20;
        rst = 0;
       
        // Test Case 1: Multiply numbers from ROM addresses 1 and 2
        // ROM[1] = 4'b1100 (12), ROM[2] = 4'b0110 (6) -> 12*6 = 72
        #10;
        addr1 = 3'b001;
        addr2 = 3'b010;
        #200;  // Waiting for multiplication to complete
       
        // Test Case 2: Multiply numbers from ROM addresses 3 and 4
        // ROM[3] = 4'b0111 (7), ROM[4] = 4'b1000 (8) -> 7*8 = 56
        #10;
        addr1 = 3'b011;
        addr2 = 3'b100;
        #200;  // Waiting for multiplication to complete
       
        // Test Case 3: Multiply numbers from ROM addresses 0 and 5
        // ROM[0] = 4'b0000 (0), ROM[5] = 4'b0001 (1) -> 0*1 = 0
        #10;
        addr1 = 3'b000;
        addr2 = 3'b101;
        #200;  // Waiting for multiplication to complete
       
        // Finish Testing
        #200;
        $stop;
    end
endmodule