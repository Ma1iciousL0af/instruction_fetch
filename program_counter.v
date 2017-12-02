`timescale 1 ns / 1 ps

module program_counter (clk, rst, npc, pc_result);
	input clk;
	input rst;
	input [31:0] npc;
	output [31:0] pc_result;
	reg [31:0] pc_result;

	initial 
	begin
		pc_result = 0;
		$display("\nProgram Counter");
		$display("Address: %h", pc_result);
	end

	always @ (npc)
	begin
		#1
		pc_result = npc;
		$display("\nProgram Counter");
		$display("Address: %h", pc_result);
	end

endmodule
