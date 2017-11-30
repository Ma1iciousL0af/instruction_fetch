module adder (
  pc_old,
  pc_new
  );
  input [31:0] pc_old;
  wire [31:0] pc_old;
  output [31:0] pc_new;
  wire [31:0] pc_new;
  assign pc_new = pc_old + 4;
endmodule
