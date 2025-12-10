`timescale 1ns / 1ps
module Combinational_Multiplier_4_Bit (
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
);

    // ------- PARTIAL PRODUCTS -------
    wire [3:0] m0;
    wire [4:0] m1;
    wire [5:0] m2;
    wire [6:0] m3;

    // ------- SUM WIRES -------
    wire [7:0] s1, s2, s3;

    assign m0 = A & {4{B[0]}};
    assign m1 = A & {4{B[1]}};
    assign m2 = A & {4{B[2]}};
    assign m3 = A & {4{B[3]}};

    assign s1 = {4'b0000, m0} + {3'b000, m1, 1'b0};
    assign s2 = s1 + {2'b00, m2, 2'b00};
    assign s3 = s2 + {1'b0, m3, 3'b000};

    assign P = s3;
endmodule