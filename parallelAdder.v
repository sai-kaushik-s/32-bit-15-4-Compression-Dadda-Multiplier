`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:00 11/01/2020 
// Design Name: 
// Module Name:    parallelAdder 
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
module parallelAdder(
    input [63:0] A1,
    input [63:0] A2,
    input [63:0] A3,
    input [63:0] A4,
    input [63:0] B1,
    input [63:0] B2,
    input [63:0] B3,
    input [63:0] B4,
    output [63:0] S1,
    output [63:0] S2,
    output [63:0] S3,
    output [63:0] S4
    );

	wire [63:0] C1, C2, C3, C4;
	
	FA64 fa1 (A1, B1, {64{1'b0}}, S1, C1);
	FA64 fa2 (A2, B2, C1, S2, C2);
	FA64 fa3 (A3, B3, C2, S3, C3);
	FA64 fa4 (A4, B4, C3, S4, C4);

endmodule
