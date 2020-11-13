`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:13 11/01/2020 
// Design Name: 
// Module Name:    adder5_3comp 
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
module adder5_3comp(
    input [63:0] A1,
    input [63:0] A2,
    input [63:0] A3,
    input [63:0] A4,
    input [63:0] A5,
    output [63:0] S1,
    output [63:0] S2,
    output [63:0] S3
    );

	wire [63:0] w1, w2, w3;
	
	FA64 fa1 (A1, A2, A3, w1, w2);
	FA64 fa2 (A4, A5, w1, S1, w3);
	
	HA64 ha (w2, w3, S2, S3);

endmodule
