`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:34:29 11/01/2020 
// Design Name: 
// Module Name:    HA64 
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
module HA64(
    input [63:0] X,
    input [63:0] Y,
    output [63:0] S,
    output [63:0] C
    );
	 
	genvar i;
	generate
	  for(i = 0; i < 63; i = i + 1)
	  begin: full_adder
			halfAdder ha(X[i], Y[i], S[i], C[i + 1]);
	  end
	endgenerate
	assign C[0] = 1'b0;
	assign S[63] = 1'b0;

endmodule
