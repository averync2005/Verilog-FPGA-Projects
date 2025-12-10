`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/2/2024 12:23:50 PM
// Design Name: 
// Module Name: Multiplexer_8to1_Structural
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


module Multiplexer_8to1_Structural(
//    input I0, I1, I2, I3, I4, I5, I6, I7,
//    input S0, S1, S2,
    input[7:0] I,
    input[2:0] S,
    output Y
);

    wire NS0, NS1, NS2;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    not N0(NS0, S[0]);
    not N1(NS1, S[1]);
    not N2(NS2, S[2]);
    
    and (Y0, I[0], NS2, NS1, NS0);
    and (Y1, I[1], NS2, NS1, S[0]);
    and (Y2, I[2], NS2, S[1], NS0);
    and (Y3, I[3], NS2, S[1], S[0]);
    and (Y4, I[4], S[2], NS1, NS0);
    and (Y5, I[5], S[2], NS1, S[0]);
    and (Y6, I[6], S[2], S[1], NS0);
    and (Y7, I[7], S[2], S[1], S[0]);
    
    or (Y, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);
    
endmodule