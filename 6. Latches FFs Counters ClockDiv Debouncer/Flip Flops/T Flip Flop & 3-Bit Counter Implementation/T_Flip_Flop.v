`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 03:01:50 PM
// Design Name: 
// Module Name: T_Flip_Flop
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

module T_Flip_Flop(input clk, input RSTN, input T, output reg Q);
    always@(posedge clk) begin
        if (!RSTN) begin
            Q <= 0;
        end
        else if (T) begin
            Q <= ~Q;
        end
        else begin
            Q <= Q;
        end
    end
endmodule