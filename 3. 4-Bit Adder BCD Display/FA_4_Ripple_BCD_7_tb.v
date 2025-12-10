`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: FA_4_Ripple_BCD_7_tb
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
`default_nettype none
module FA_4_Ripple_BCD_7_tb;

reg[3:0] A;  // Inputs
reg[3:0] B;  // Inputs
reg Cin;  // Inputs

wire[6:0] seg;  // Output
 
// Modules
FA_4_Ripple_BCD_7 FA (.A(A), .B(B), .Cin(Cin), .seg(seg));
integer i;
integer j;
integer k;
initial begin
    A = 4'b0000;
    for(i=0; i<15; i=i+1)
    begin
        B = 4'b0000;
        for(j=0; j<15; j=j+1)
        begin
            Cin = 1'b0;
            for(k=0; k<2; k=k+1)
            begin
                #10 Cin = Cin+1'd1;
            end //END Cin-loop
            #10 B = B+4'd1;
        end //END B-loop
        #10 A = A+4'd1;
    end //END A-loop
    
	#10 $stop;

end
endmodule