`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/2/2024 12:23:50 PM
// Design Name: 
// Module Name: Multiplexer_8:1_Dataflow
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


module Multiplexer_8to1_Dataflow(
//    input I0, I1, I2, I3, I4, I5, I6, I7,
//    input S0, S1, S2,
    input[7:0] I,
    input[2:0] S,
    output Y
);

    assign Y = ((I[0] & ~S[2] & ~S[1] & ~S[0]) | (I[1] & ~S[2] & ~S[1] & S[0]) | (I[2] & ~S[2] & S[1] & ~S[0]) | (I[3] & ~S[2] & S[1] & S[0]) | (I[4] & S[2] & ~S[1] & ~S[0]) | (I[5] & S[2] & ~S[1] & S[0]) | (I[6] & S[2] & S[1] & ~S[0]) | (I[7] & S[2] & S[1] & S[0]));
    
endmodule
