`timescale 1ns / 1ps

module mux

(
    in0, in1, out
);
	
	
	input [31:0] in0;
	wire [31:0] in0;
	input [31:0] in1;
	wire [31:0] in1;
	
	output [31:0] out;
	wire [31:0] out;
	
	assign out = in1;
	
	//always @(in0)
	//begin
	//   case (in0)
		//1: out = in1 + 6;	
	//   endcase
	//end
    
 endmodule  