`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:44:55 PM
// Design Name: 
// Module Name: SR_Flip_Flop_tb
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

module SR_Flip_Flop_tb();
    reg R, S, clk;
    wire Q, Qbar;
    
    SR_Flip_Flop DUT(.S(S), .R(R), .clk(clk), .Q(Q), .Qbar(Qbar));
    
    //Generate Clock
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    //Test Cases
    initial begin
        R=0; S=1;
        #100; S=0; R=1;
        #100; S=0; R=0;
        #100; S=1; R=1;
    end
endmodule