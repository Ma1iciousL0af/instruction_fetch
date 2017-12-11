`timescale 1 ns / 1 ps

module instruction_memory(address, data);
	input [31:0] address;
	output [31:0] data;
	reg [31:0] instruction_memory[39:0];

	initial
	begin
		$readmemh("program.hex", instruction_memory,0,39);
    end

    assign data = instruction_memory[address[39:0]];

	always @(address)
	begin
		$display("Instruction Memory");
		$display("Address: %h", address[31:0]);
		$display("Data: %h", data[31:0]);
	end
 endmodule