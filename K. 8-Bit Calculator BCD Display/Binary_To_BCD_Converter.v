`timescale 1ns / 1ps
module Binary_To_BCD_Converter (
    input clk,
    input rst,
    input [11:0] binary_in,
    output reg [15:0] bcd_out
);
    reg [27:0] shift_reg;
    integer i;

    always @(posedge clk or posedge rst) begin
        if (rst)
            bcd_out <= 16'd0;
        else begin
            shift_reg = 28'd0;
            shift_reg[11:0] = binary_in;

            for (i = 0; i < 12; i = i + 1) begin
                if (shift_reg[15:12] >= 5)
                    shift_reg[15:12] = shift_reg[15:12] + 3;
                if (shift_reg[19:16] >= 5)
                    shift_reg[19:16] = shift_reg[19:16] + 3;
                if (shift_reg[23:20] >= 5)
                    shift_reg[23:20] = shift_reg[23:20] + 3;
                if (shift_reg[27:24] >= 5)
                    shift_reg[27:24] = shift_reg[27:24] + 3;
                shift_reg = shift_reg << 1;
            end

            bcd_out <= shift_reg[27:12];
        end
    end
endmodule