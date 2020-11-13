`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:33:19 11/01/2020 
// Design Name: 
// Module Name:    halfAdder 
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
module halfAdder(
    input X,
    input Y,
    output S,
    output C
    );
	 
	 xor xor_1(S, X, Y);
	 and and_1(C, X, Y);

endmodule
