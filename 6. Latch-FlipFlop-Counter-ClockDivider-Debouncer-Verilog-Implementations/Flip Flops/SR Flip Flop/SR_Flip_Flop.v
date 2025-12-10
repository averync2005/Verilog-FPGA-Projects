`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:55:38 PM
// Design Name: 
// Module Name: SR_Flip_Flop
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

module SR_Flip_Flop(S, R, clk, Q, Qbar);
    input S, R, clk;
    output reg Q, Qbar;
    
    always@(posedge clk) begin
        if (S == 1) begin
            Q = 1;
            Qbar = 0;
        end
        else if (R == 1) begin
            Q = 0;
            Qbar = 1;
        end
        else if (S == 0 & R == 0) begin
            Q <= Q;
            Qbar <= Qbar;
        end
    end
endmodule