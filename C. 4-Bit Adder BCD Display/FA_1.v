`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 01:40:45 PM
// Design Name: 
// Module Name: FA_1
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


module FA_1(A, B, Cin, S, Cout);
    input A, B, Cin;
    output S, Cout;
    
    assign S = (A^B)^Cin;
    assign Cout = (A&B) | ((A^B) & (Cin));
endmodule