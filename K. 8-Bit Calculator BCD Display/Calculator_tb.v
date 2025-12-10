`timescale 1ns / 1ps
module Calculator_tb;
    //Inputs
    reg clk;
    reg rst;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] operation;

    //Outputs
    wire [3:0] seg_anode;
    wire [6:0] seg_cathode;

    Calculator DUT(
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .operation(operation),
        .seg_anode(seg_anode),
        .seg_cathode(seg_cathode)
    );

    // System clock generation
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        //Initializing values
        rst = 1'b1;
        A = 4'd0;
        B = 4'd0;
        operation = 3'b000;
        #50;

        rst = 1'b0;


        // Test Case 1: Addition
        // A = 5, B = 3
        // Expected result = 8
        A = 4'd5;
        B = 4'd3;
        operation = 3'b000;
        #100;


        // Test Case 2: Subtraction
        // A = 9, B = 2
        // Expected result = 7
        A = 4'd9;
        B = 4'd2;
        operation = 3'b001;
        #100;


        // Test Case 3: Multiplication
        // A = 4, B = 7
        // Expected result = 28
        A = 4'd4;
        B = 4'd7;
        operation = 3'b010;
        #100;


        // Test Case 4: Division
        // A = 11, B = 3
        // Expected result = 3 (integer division, quotient only)
        A = 4'd11;
        B = 4'd3;
        operation = 3'b011;
        #100;


        // Test Case 5: Logical AND
        // A = 10 (1010), B = 10 (1010)
        // Expected result = 10 (1010)
        A = 4'd10;
        B = 4'd10;
        operation = 3'b100;
        #100;


        // Test Case 6: Logical OR
        // A = 6  (0110), B = 9  (1001)
        // Expected result = 15 (1111)
        A = 4'd6;
        B = 4'd9;
        operation = 3'b101;
        #100;


        // Test Case 7: Logical XOR
        // A = 15 (1111), B = 1 (0001)
        // Expected result = 14 (1110)
        A = 4'd15;
        B = 4'd1;
        operation = 3'b110;
        #100;


        // Test Case 8: Logical NOT (on operand A)
        // A = 12 (1100)
        // Expected result = ~A = 3 (0011)
        A = 4'd12;
        B = 4'd0;
        operation = 3'b111;
        #100;
        $stop;
    end
endmodule