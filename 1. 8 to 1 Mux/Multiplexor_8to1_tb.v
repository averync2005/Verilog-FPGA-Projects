`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: Multiplexer_8to1_tb
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
module Multiplexer_8to1_tb;

reg[7:0] I;  // Inputs
reg[2:0] S;  // Selectors
wire Y;  // Output
 
// Modules
Multiplexer_8to1_Structural uut (I, S, Y);
//Multiplexer_8to1_Behavioral uut (I, S, Y);
//Multiplexer_8to1_Dataflow uut (I, S, Y);
integer i;
integer j;
initial begin
    S = 3'b000;
    for(i=0; i<8; i=i+1)
    begin
        I = (8'd1 << i);
        for(j=0; j<8; j=j+1)
        begin
            #10 S = S+3'd1;
        end
    end
    
	#10 $stop;   
    //#10 I[0]=1'b1;  I[1]=1'b0;  I[2]=1'b0;  I[3]=1'b0;  I[4]=1'b0;  I[5]=1'b0;  I[6]=1'b0;  I[7]=1'b0;    S[0]=1'b0;  S[1]=1'b0;  S[2]=1'b0;

end

endmodule