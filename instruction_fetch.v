`timescale 1 ns / 1 ps

`include "program_counter.v"
`include "adder.v"
`include "instruction_memory.v"

module instruction_fetch (clock, reset);
	input [1:0] clock;
	input [1:0] reset;

	wire [31:0] pc;
	wire [31:0] dataout;
	wire [31:0] npc;

  				  
	program_counter PC (.clk(clk),
						.rst(rst),
						.pc_result(pc),
						.npc(npc));
  
    instruction_memory mem (.address(pc),
						    .data(dataout));
					  
    adder add (.pc_old(pc),
               .pc_new(npc));

endmodule
