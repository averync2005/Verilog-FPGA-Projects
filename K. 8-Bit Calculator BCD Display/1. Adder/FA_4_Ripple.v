`timescale 1ns / 1ps
module FA_4_Ripple(A, B, Cin, S, Cout3);
    //Input(s)
    input [3:0] A, B;
    input Cin;

    //Intermediate wire value(s)
    wire Cout0, Cout1, Cout2;
    
    //Output(s)
    output [3:0] S;
    output Cout3;


    //Port mapping
    FA_1 FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(Cout0));
    FA_1 FA1(.A(A[1]), .B(B[1]), .Cin(Cout0), .S(S[1]), .Cout(Cout1));
    FA_1 FA2(.A(A[2]), .B(B[2]), .Cin(Cout1), .S(S[2]), .Cout(Cout2));
    FA_1 FA3(.A(A[3]), .B(B[3]), .Cin(Cout2), .S(S[3]), .Cout(Cout3));
endmodule