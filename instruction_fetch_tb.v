//`include "instruction_fetch.v"
module IF_TEST;
  reg clk;
  reg rst;

  instruction_fetch UUT (.clk(clk),
                          .rst(rst));

  //always
  //  #1 clk = ~clk;

  initial
  begin
  	clk = 0;
	 rst = 0;
  end
  initial begin
     $monitor ("TIME = %g RESET = %b CLOCK = %b", $time, rst, clk);
    clk = 0;
    rst = 0;
      #1  rst = 1;
     // #5  rst = 0;
     #52  $stop(1);
  end

  always
     #1  clk =  ! clk;

  endmodule