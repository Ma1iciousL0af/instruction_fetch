`timescale 1 ns / 1 ps

`include "program_counter.v"
`include "adder.v"
`include "instruction_memory.v"
`include "mux.v"

module instruction_fetch (clk, rst);
	input  clk;
	input  rst;

	wire [31:0] pc;
	wire [31:0] dataout;
	wire [31:0] npc;
	wire [31:0] out;
	wire [31:0] in;


	program_counter PC (.clk(clk),
						.rst(rst),
						.npc(in),
						.pc_result(out));

    instruction_memory mem (.address(out),
						    .data(dataout));

    adder add (.pc_old(out),
               .pc_new(npc));
			   
	mux m (.in0(dataout),
			.in1(npc),
			.out(in));

endmodule
