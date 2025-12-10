`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:44:55 PM
// Design Name: 
// Module Name: SR_Latch_tb
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

module SR_Latch_tb();
    reg R, S;
    wire Q, Qbar;
    
    SR_Latch DUT(.S(S), .R(R), .Q(Q), .Qbar(Qbar));
    
    initial begin
        R=0;
        S=0;
        
        #5 S=1;
        #5 S=0;
        #5 R=1;
        #5 R=1; S=1;
        #5 S=0; R=1;
        #5 R=0;
        #5 R=1; S=1;
    end
endmodule