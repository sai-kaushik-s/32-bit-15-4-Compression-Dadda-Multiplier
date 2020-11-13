`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:30:23 11/01/2020 
// Design Name: 
// Module Name:    FA64 
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
module FA64(
    input [63:0] X,
    input [63:0] Y,
    input [63:0] Z,
    output [63:0] S,
    output [63:0] C
    );
	 
	genvar i;
	generate
	  for(i = 0; i < 63; i = i + 1)
	  begin: full_adder
			fullAdder fa(X[i], Y[i], Z[i], S[i], C[i + 1]);
	  end
	endgenerate
	assign C[0] = 1'b0;
	assign S[63] = X[63] ^ Y[63] ^ Z[63];

endmodule
