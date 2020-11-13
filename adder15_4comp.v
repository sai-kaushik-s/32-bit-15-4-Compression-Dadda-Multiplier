`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:26 11/01/2020 
// Design Name: 
// Module Name:    adder15_4comp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder15_4comp(
    input [63:0] A01,
    input [63:0] A02,
    input [63:0] A03,
    input [63:0] A04,
    input [63:0] A05,
    input [63:0] A06,
    input [63:0] A07,
    input [63:0] A08,
    input [63:0] A09,
    input [63:0] A10,
    input [63:0] A11,
    input [63:0] A12,
    input [63:0] A13,
    input [63:0] A14,
    input [63:0] A15,
    output [63:0] S1,
    output [63:0] S2,
    output [63:0] S3,
    output [63:0] S4
    );


	wire [63:0] S [4:0], C [4:0];
	wire [63:0] X [2:0], Y [2:0];

	FA64 fa1(A01, A02, A03, S[0], C[0]);
	FA64 fa2(A04, A05, A06, S[1], C[1]);
	FA64 fa3(A07, A08, A09, S[2], C[2]);
	FA64 fa4(A10, A11, A12, S[3], C[3]);
	FA64 fa5(A13, A14, A15, S[4], C[4]);
	
	adder5_3comp a53_1(S[0], S[1], S[2], S[3], S[4], X[0], X[1], X[2]);
	adder5_3comp a53_2(C[0], C[1], C[2], C[3], C[4], Y[0], Y[1], Y[2]);
	
	parallelAdder pa(X[0], X[1], X[2], {64{1'b0}}, Y[0], Y[1], Y[2], {64{1'b0}}, S1, S2, S3, S4);

endmodule
