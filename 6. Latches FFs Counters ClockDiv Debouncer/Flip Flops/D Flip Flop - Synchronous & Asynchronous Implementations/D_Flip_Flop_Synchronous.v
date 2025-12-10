`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:00:45 PM
// Design Name: 
// Module Name: D_Flip_Flop_Synchronous
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

module D_Flip_Flop_Synchronous(
    input D,
    input RSTN,
    input clk,
    output reg Q
);

    always@(posedge clk)
        if (!RSTN)
            Q <= 0;
        else
            Q <= D;
endmodule