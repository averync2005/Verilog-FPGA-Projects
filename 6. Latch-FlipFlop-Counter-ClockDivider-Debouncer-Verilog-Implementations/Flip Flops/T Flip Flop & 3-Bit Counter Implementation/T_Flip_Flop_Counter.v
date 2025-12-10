`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 03:10:01 PM
// Design Name: 
// Module Name: T_Flip_Flop_Counter
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

module T_Flip_Flop_Counter(clk, RSTN, Q1, Q2, Q3);  // 3 Bit Counter
    input clk, RSTN;
    output Q1, Q2, Q3;
    
    wire T1T2;
    wire T2T3;
    
    T_Flip_Flop NUM1(.clk(clk), .RSTN(RSTN), .T(1'b1), .Q(Q1));
    assign T1T2 = Q1;
    
    T_Flip_Flop NUM2(.clk(clk), .RSTN(RSTN), .T(T1T2), .Q(Q2));
    assign T2T3 = Q2 & Q1;
    
    T_Flip_Flop NUM3(.clk(clk), .RSTN(RSTN), .T(T2T3), .Q(Q3));
endmodule