`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:44:55 PM
// Design Name: 
// Module Name: T_Flip_Flop_Counter_tb
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

module T_Flip_Flop_Counter_tb();
    reg clk, RSTN;
    wire Q1, Q2, Q3;
    
    T_Flip_Flop_Counter DUT(.clk(clk), .RSTN(RSTN), .Q1(Q1), .Q2(Q2), .Q3(Q3));
    
    //Generate clock
    always #10 clk = ~clk;
    
    //Testcase
    initial begin
        clk = 0;
        RSTN = 0;
        
        #100; RSTN = 1;
        #1000;
    end
endmodule