`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 03:53:10 PM
// Design Name: 
// Module Name: Switch_Debouncer
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

module Switch_Debouncer (input RAW, input CLK, output reg CLEAN);  
    reg [2:0] counter;  
    wire TC;  
     
    always@ (posedge CLK) begin  
        if (~RAW) begin
            counter <= 3'b000;
        end  
        else begin
            counter <= counter + 3'b001;
        end
    end  
    
    assign TC = (counter == 3'b111); 
    always@ (posedge CLK) begin  
        if (~RAW) begin
            CLEAN <= 1'b0;
        end  
        else if (TC) begin
            CLEAN <= 1'b1; 
        end 
    end
endmodule