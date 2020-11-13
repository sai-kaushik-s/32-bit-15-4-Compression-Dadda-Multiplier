`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:24:58 11/01/2020 
// Design Name: 
// Module Name:    fullAdder 
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
module fullAdder(
    input X,
    input Y,
    input Z,
    output S,
    output C
    );
	 
	 wire w1, w2, w3, w4, w5;
	 
	 xor xor_1(w1, X, Y);
	 xor xor_2(S, w1, Z);
	 
	 and and_1(w2, X, Y);
	 and and_2(w3, Y, Z);
	 and and_3(w4, Z, X);
	 
	 or or_1(w5, w2, w3);
	 or or_2(C, w4, w5);
	 
endmodule
