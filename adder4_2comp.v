`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:05 11/01/2020 
// Design Name: 
// Module Name:    adder4_2comp 
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
module adder4_2comp(
    input [63:0] A1,
    input [63:0] A2,
    input [63:0] A3,
    input [63:0] A4,
    output [63:0] S1,
    output [63:0] S2
    );
	 
	wire [63:0] w1, w2;

	FA64 fa1 (A1, A2, A3, w1, w2);
	FA64 fa2 (A4, w1, w2, S1, S2);

endmodule
