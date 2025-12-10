`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:44:55 PM
// Design Name: 
// Module Name: D_Flip_Flop_tb
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

module D_Flip_Flop_tb();
    reg clk;
    reg D;
    reg RSTN;
    reg [2:0] delay;
    
//    D_Flip_Flop_Synchronous DUT(.D(D), .RSTN(RSTN), .clk(clk), .Q(Q));
    D_Flip_Flop_Asynchronous DUT(.D(D), .RSTN(RSTN), .clk(clk), .Q(Q));
    
    //Generate clock
    always #10 clk = ~clk;
    
    //Testcase
    initial begin
        clk <= 0;
        D <= 0;
        RSTN <= 0;
        
        #15 D <= 1;
        #10 RSTN <= 1;
        
        #15 D <= 1;
        #10 RSTN <= 0;
        
        #15 D <= 1;
        #10 RSTN <= 1;
        
        for (integer i=0; i<5; i = i+1) begin
            delay = $random;
            #(delay) D <= i;
        end
    end
endmodule