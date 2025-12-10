`timescale 1ns / 1ps
module Subtractor_4_Bit(
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] D,  // Difference
    output reg Bout  // Borrow out
);

    reg [4:0] temp;  // 5-bit intermediate value to hold the borrow out value & difference
    always @(*) begin
        temp = A - B;  // Subtraction with built-in mathematical operation
        D = temp[3:0];  // Lower 4 bits are the difference
        Bout = temp[4];  // MSB is the borrow out value
    end

endmodule