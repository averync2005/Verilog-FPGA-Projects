`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2025 01:57:52 PM
// Design Name: 
// Module Name: Sequential_Multiplier_4_Bit_tb
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

module Sequential_Multiplier_4_Bit_tb;
    // ------- DECLARING TEST SIGNALS -------
    reg clk;
    reg rst;
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] p;

    // ------- INSTANTIATING DEVICE UNDER TEST (DUT) -------
    Sequential_Multiplier_4_Bit DUT (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .p(p)
    );

    // ------- CLOCK GENERATION -------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period
    end

    // ------- TEST STIMULUS -------
    initial begin
        // Initialize and reset
        rst = 1; a = 4'b0000; b = 4'b0000;
        #10 rst = 0;

        // Test Case 1: 3 × 2 = 6
        a = 4'd3; b = 4'd2;
        #100;

        // Test Case 2: 5 × 5 = 25
        a = 4'd5; b = 4'd5;
        #100;

        // Test Case 3: 9 × 7 = 63
        a = 4'd9; b = 4'd7;
        #100;

        // Test Case 4: 15 × 15 = 225
        a = 4'd15; b = 4'd15;
        #150;

        // Test Case 5: 4 × 0 = 0
        a = 4'd4; b = 4'd0;
        #100;

        $finish;
    end
endmodule