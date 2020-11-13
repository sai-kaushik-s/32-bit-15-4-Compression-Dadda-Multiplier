`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:26 11/01/2020 
// Design Name: 
// Module Name:    daddaMultiplier 
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
`include "header.v"

module daddaMultiplier(
    input [31:0] A,
    input [31:0] B,
    output [64:0] C
    );
	 
	genvar i;
	wire [63:0] AB [31:0], temp1 [31:0], w[7:0], w1[5:0], w2[2:0], w3[1:0];
	wire [31:0] temp [31:0];

	generate
	for (i = 0; i < 32; i = i + 1)
	begin: pp_loop
		partialProduct pp(A, B[i], temp[i]);
		assign temp1[i] = {{32{1'b0}}, temp[i]};
		assign AB[i] = temp1[i] << i;
	end
	endgenerate
	
	adder15_4comp a154_1 (AB[0], AB[1], AB[2], AB[3], AB[4], AB[5], AB[6], AB[7], AB[8], AB[9], AB[10], AB[11], AB[12], AB[13], AB[14], w[0], w[1], w[2], w[3]);
	adder15_4comp a154_2 (AB[15], AB[16], AB[17], AB[18], AB[19], AB[20], AB[21], AB[22], AB[23], AB[24], AB[25], AB[26], AB[27], AB[28], AB[29], w[4], w[5], w[6], w[7]);
	
	adder5_3comp a53_1 (AB[30], AB[31], w[0], w[1], w[2], w1[0], w1[1], w1[2]);
	adder5_3comp a53_2 (w[3], w[4], w[5], w[6], w[7], w1[3], w1[4], w1[5]);
	
	adder5_3comp a53_3 (w1[0], w1[1], w1[2], w1[3], w1[5], w2[0], w2[1], w2[2]);
	
	adder4_2comp a42 (w1[5], w2[0], w2[1], w2[2], w3[0], w3[1]);
	
	recursiveDoubling rd64 (w3[0], w3[1], C[63:0], C[64]);

endmodule
