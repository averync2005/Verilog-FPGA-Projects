`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2025 01:55:43 PM
// Design Name: 
// Module Name: Sequential_Multiplier_4_Bit
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

module Sequential_Multiplier_4_Bit (
    input clk,
    input rst,
    input [3:0] a,
    input [3:0] b,
    output reg [7:0] p
);

    // ------- INTERNAL REGISTERS -------
    reg [7:0] multiplicand;
    reg [3:0] multiplier;
    reg [2:0] count;
    reg [2:0] PS, NS;

    // ------- STATE ENCODING -------
    parameter S0_IDLE = 3'b000,
              S1_MULTIPLY = 3'b001,
              S2_UPDATE = 3'b010,
              S3_DONE = 3'b011;

    // ------- STATE REGISTER -------
    always @(posedge clk or posedge rst) begin
        if (rst)
            PS <= S0_IDLE;
        else
            PS <= NS;
    end

    // ------- NEXT STATE LOGIC -------
    always @(*) begin
        case (PS)
            S0_IDLE:
                NS = S1_MULTIPLY;
            S1_MULTIPLY:
                if (count == 4)
                    NS = S2_UPDATE;
                else
                    NS = S1_MULTIPLY;
            S2_UPDATE:
                NS = S3_DONE;
            S3_DONE:
                NS = S0_IDLE;
            default:
                NS = S0_IDLE;
        endcase
    end

    // ------- OUTPUT / DATA PATH -------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            multiplicand <= 8'b0;
            multiplier <= 4'b0;
            count <= 3'b0;
            p <= 8'b0;
        end
        else begin
            case (PS)
                S0_IDLE: begin
                    multiplicand <= {4'b0000, a};
                    multiplier <= b;
                    count <= 3'b000;
                    p <= 8'b00000000;
                end

                S1_MULTIPLY: begin
                    if (multiplier[0])
                        p <= p + multiplicand;
                    multiplicand <= multiplicand << 1;
                    multiplier <= multiplier >> 1;
                    count <= count + 1;
                end

                S2_UPDATE: begin
                    p <= p;
                end

                S3_DONE: begin
                    // Hold final product
                    p <= p;
                end
            endcase
        end
    end
endmodule