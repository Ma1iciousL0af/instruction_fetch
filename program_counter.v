module program_counter (clk,
												rst,
												npc,
												pc_result);
input clk;
input rst;
input [31:0] npc;
output [31:0] pc_result;
reg [31:0] pc_result;

initial begin
	pc_result = 0;
end

always @ (npc)
	begin
	#1
	pc_result = npc;
	$display("%h", pc_result);
	end

endmodule
