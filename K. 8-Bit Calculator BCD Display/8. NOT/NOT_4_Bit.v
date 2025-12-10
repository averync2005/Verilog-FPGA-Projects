`timescale 1ns / 1ps
module NOT_4_Bit(
    input [3:0] A,
    output [3:0] Y
);

    assign Y = ~A;  // NOT operation applied to operand A

endmodule