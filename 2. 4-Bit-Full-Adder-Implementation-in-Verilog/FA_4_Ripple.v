`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 01:40:45 PM
// Design Name: 
// Module Name: FA_4_Ripple
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


module FA_4_Ripple(A, B, Cin, S, Cout3);
    input [3:0] A, B;
    input Cin;

    output [3:0] S;
    output Cout3;

    wire Cout0, Cout1, Cout2;

    //Port mapping
    FA_1 FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(Cout0));
    FA_1 FA1(.A(A[1]), .B(B[1]), .Cin(Cout0), .S(S[1]), .Cout(Cout1));
    FA_1 FA2(.A(A[2]), .B(B[2]), .Cin(Cout1), .S(S[2]), .Cout(Cout2));
    FA_1 FA3(.A(A[3]), .B(B[3]), .Cin(Cout2), .S(S[3]), .Cout(Cout3));
endmodule