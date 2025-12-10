`timescale 1ns / 1ps

`timescale 1ns/1ps
`default_nettype none
module Multi_Digit_7_Segment_Display_Driver_tb;

reg clk;  // Input
reg [15:0] bcd_in;  // Input

wire [3:0] seg_anode;  // Output
wire [6:0] seg_cathode;  // Output
 
// Modules
Multi_Digit_7_Segment_Display_Driver MD_BCD (clk, bcd_in, seg_anode, seg_cathode);
integer i;
integer j;

always begin
    clk = 1'd0; #1;
    clk = 1'd1; #1;
end

initial begin
    bcd_in = 16'd0;
    for(i=0; i<65536; i=i+1) begin
        #8192 bcd_in = bcd_in + 16'd1;
    end //END BCD_in loop
    
	#10 $stop;
end
endmodule
