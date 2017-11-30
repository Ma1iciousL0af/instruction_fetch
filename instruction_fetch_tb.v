//`include "instruction_fetch.v"
module IF_TEST;
  reg clk;
  reg rst;

  instruction_fetch UUT (.clock(clk),
                          .reset(rst));

  always
    #5 clk = ~clk;

  initial
    begin
      clk = 1'b0;
      #1 rst = 1'b1;
    end

    initial
    begin
      repeat(5)
        @(posedge clk);

        rst = 1'b0;

         repeat(32)
           @(posedge(clk));
        $stop;
      end
endmodule
