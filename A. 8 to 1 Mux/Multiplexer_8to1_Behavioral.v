`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/2/2024 12:23:50 PM
// Design Name: 
// Module Name: Multiplexer_8to1_Behavioral
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


module Multiplexer_8to1_Behavioral(
//    input I0, I1, I2, I3, I4, I5, I6, I7,
//    input S0, S1, S2,
    input[7:0] I,
    input[2:0] S,
    output reg Y
);

    always @(I, S)
    begin
        case (S)
            3'b000: Y=I[0];
            3'b001: Y=I[1];
            3'b010: Y=I[2];
            3'b011: Y=I[3];
            3'b100: Y=I[4];
            3'b101: Y=I[5];
            3'b110: Y=I[6];
            3'b111: Y=I[7];
        endcase
    end
    
endmodule
