`timescale 1ns / 1ps
module Divider_4_Bit(
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] Q  // Quotient
);

    always @(*) begin
        if (B == 4'b0000) begin  // Avoiding dividing by 0 to avoid errors
            Q = 4'b0000;  // Quotient defaults to 0 in this case
        end
        else begin  // Standard integer division (remainder not displayed)
            Q = A / B;
        end
    end

endmodule