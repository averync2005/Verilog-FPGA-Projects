`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 01:40:45 PM
// Design Name: 
// Module Name: FA_4_Lookahead
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


module FA_4_Lookahead(A, B, Cin, S, Cout3);
    input [3:0] A, B;
    input Cin;

    output [3:0] S;
    output Cout3;

    wire C0, C1, C2;
    wire P0, P1, P2, P3;
    wire G0, G1, G2, G3;
    
    assign P0 = A[0] ^ B[0];
    assign P1 = A[1] ^ B[1];
    assign P2 = A[2] ^ B[2];
    assign P3 = A[3] ^ B[3];
    
    assign G0 = A[0] & B[0];
    assign G1 = A[1] & B[1];
    assign G2 = A[2] & B[2];
    assign G3 = A[3] & B[3];
    
    assign C0 = G0 | (P0 & Cin);
    assign C1 = G1 | (P1 & C0);
    assign C2 = G2 | (P2 & C1);
    assign Cout3 = G3 | (P3 & C2);
    
    assign S[0] = P0 ^ Cin;
    assign S[1] = P1 ^ C0;
    assign S[2] = P2 ^ C1;
    assign S[3] = P3 ^ C2;
endmodule