module Control_Unit (
    input clk,
    input rst,
    input [2:0] adr1,
    input [2:0] adr2,

    output reg w_rf,
    output reg [2:0] adr,
    output reg DA, SA, SB,
    output reg [2:0] st_out,

    output reg w_ram_en,
    output reg [2:0] w_ram_addr
);

parameter S0_idle = 0, S1_send_adr1 = 1, S2_send_adr2 = 2, S3_multiply = 3, S4_write_ram = 4, S5_read_ram = 5;
reg [2:0] PS, NS;

always @(posedge clk or posedge rst) begin
    if (rst)
        PS <= S0_idle;
    else
        PS <= NS;
end

always @(*) begin
    w_rf = 1'b0;
    adr = 3'b000;
    DA = 1'b0;
    SA = 1'b0;
    SB = 1'b0;
    st_out = 3'b000;

    w_ram_en = 1'b0;
    w_ram_addr = 3'b000;

    NS = PS;

    case(PS)
        S0_idle: begin
            st_out = 3'b000;
            NS = S1_send_adr1;
        end

        S1_send_adr1: begin
            w_rf = 1'b1;
            adr = adr1;
            DA = 1'b0;
            SA = 1'b0;
            SB = 1'b1;
            st_out = 3'b001;
            NS = S2_send_adr2;
        end

        S2_send_adr2: begin
            w_rf = 1'b1;
            adr = adr2;
            DA = 1'b1;
            SA = 1'b1;
            SB = 1'b0;
            st_out = 3'b010;
            NS = S3_multiply;
        end

        S3_multiply: begin
            SA = 1'b1;
            SB = 1'b0;
            st_out = 3'b011;
            NS = S4_write_ram;
        end

        S4_write_ram: begin
            SA = 1'b1;
            SB = 1'b0;
            w_ram_en = 1'b1;
            w_ram_addr = adr1;
            st_out = 3'b100;
            NS = S5_read_ram;
        end

        S5_read_ram: begin
            SA = 1'b1;
            SB = 1'b0;
            w_ram_en = 1'b0;
            w_ram_addr = adr1;
            st_out = 3'b101;
            NS = S0_idle;
        end
        
        default: begin
            NS = S0_idle;
        end
    endcase
end
endmodule