`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2025 02:11:01 PM
// Design Name: 
// Module Name: Combinational_Multiplier_4_Bit_tb
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

module Combinational_Multiplier_4_Bit_tb;
    // ------- DECLARING TEST SIGNALS -------
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] p;

    // ------- INSTANTIATING DEVICE UNDER TEST (DUT) -------
    Combinational_Multiplier_4_Bit DUT (
        .a(a),
        .b(b),
        .p(p)
    );

    // ------- TEST STIMULUS -------
    initial begin
        // Test Case 1: 3 × 2 = 6
        a = 4'd3; b = 4'd2; #10;

        // Test Case 2: 4 × 9 = 36
        a = 4'd4; b = 4'd9; #10;

        // Test Case 3: 8 × 7 = 56
        a = 4'd8; b = 4'd7; #10;

        // Test Case 4: 12 × 11 = 132
        a = 4'd12; b = 4'd11; #10;

        // Test Case 5: 15 × 15 = 225
        a = 4'd15; b = 4'd15; #10;

        // Test Case 6: 9 × 0 = 0
        a = 4'd9; b = 4'd0; #10;

        $finish;
    end
endmodule