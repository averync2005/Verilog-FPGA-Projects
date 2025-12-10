`timescale 1ns / 1ps
module Calculator(
    input clk,
    input rst,

    input [3:0] A,
    input [3:0] B,
    input [2:0] operation,
    
    output [3:0] seg_anode,
    output [6:0] seg_cathode
);

    //Addition (intermediate wire values)
    wire [3:0] sum;
    wire Cout;

    //Subtraction (intermediate wire values)
    wire [3:0] difference;
    wire Bout;

    //Multiplication (intermediate wire values)
    wire [7:0] product;

    //Division (intermediate wire values)
    wire [3:0] quotient;

    //Logical AND, OR, NOT, XOR (intermediate wire values)
    wire [3:0] AND_res;
    wire [3:0] OR_res;
    wire [3:0] XOR_res;
    wire [3:0] NOT_res;

    //Generic result for BCD display
    reg [11:0] binary_res;
    wire [15:0] BCD_res;

    FA_4_Ripple Adder(
        .A(A),
        .B(B),
        .Cin(1'b0),
        .S(sum),
        .Cout3(Cout)
    );

    Subtractor_4_Bit Subtractor(
        .A(A),
        .B(B),
        .D(difference),
        .Bout(Bout)
    );

    Combinational_Multiplier_4_Bit Multiplier(
        .A(A),
        .B(B),
        .P(product)
    );

    Divider_4_Bit Divider(
        .A(A),
        .B(B),
        .Q(quotient)
    );

    AND_4_Bit AND(
        .A(A),
        .B(B),
        .Y(AND_res)
    );

    OR_4_Bit OR(
        .A(A),
        .B(B),
        .Y(OR_res)
    );

    XOR_4_Bit XOR(
        .A(A),
        .B(B),
        .Y(XOR_res)
    );

    NOT_4_Bit NOT(
        .A(A),
        .Y(NOT_res)
    );

    always @(*) begin
        case (operation)  // Resizing module outputs to 12-bit input size for Binary to BCD converter
            3'b000: binary_res = {7'b0000000, Cout, sum};  // Addition
            3'b001: binary_res = {7'b0000000, Bout, difference};  // Subtraction
            3'b010: binary_res = {4'b0000, product};  // Multiplication
            3'b011: binary_res = {8'b00000000, quotient};  // Division
            3'b100: binary_res = {8'b00000000, AND_res};  // Logical AND
            3'b101: binary_res = {8'b00000000, OR_res};  // Logical OR
            3'b110: binary_res = {8'b00000000, XOR_res};  // Logical XOR
            3'b111: binary_res = {8'b00000000, NOT_res};  // Logical NOT (on operand A)
            default: binary_res = 12'b000000000000;  // Defaults to 0
        endcase
    end

    Binary_To_BCD_Converter Bin_2_BCD(
        .clk(clk),
        .rst(rst),
        .binary_in(binary_res),
        .bcd_out(BCD_res)
    );

    Multi_Digit_7_Segment_Display_Driver Display_Driver(
        .clk(clk),
        .bcd_in(BCD_res),
        .seg_anode(seg_anode),
        .seg_cathode(seg_cathode)
    );

endmodule