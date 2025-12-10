`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 01:40:45 PM
// Design Name: 
// Module Name: FA_4_Ripple_BCD_7
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


module FA_4_Ripple_BCD_7(A, B, Cin, seg);
    input wire [3:0] A, B;
    input wire Cin;
    
    output wire [6:0] seg;
    
    wire [3:0] data_in;
    wire Cout;
    
    //Port mapping
    FA_4_Ripple FA4 (.A(A), .B(B), .Cin(Cin), .S(data_in), .Cout3(Cout));
    BCD_7_Segment BCD (data_in, seg);
endmodule