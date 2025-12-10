`timescale 1ns / 1ps
module XOR_4_Bit(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y
);

    assign Y = A ^ B;

endmodule