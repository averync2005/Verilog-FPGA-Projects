`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: BCD_7_Segment_tb
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

`timescale 1ns/1ps
module BCD_7_Segment_tb;

reg[3:0] data_in;  // Inputs
wire[6:0] seg;  // Output
 
// Modules
BCD_7_Segment BCD (data_in, seg);

initial begin
    #10 data_in=4'b0000;
    #10 data_in=4'b0001;
    #10 data_in=4'b0010;
    #10 data_in=4'b0011;
    #10 data_in=4'b0100;
    #10 data_in=4'b0101;
    #10 data_in=4'b0110;
    #10 data_in=4'b0111;
    #10 data_in=4'b1000;
    #10 data_in=4'b1001;

	#10 $stop;
    
	#10 $stop;

end
endmodule