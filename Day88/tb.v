`include "up_down_3bit_count_asyn.v"
module tb;
  reg clk,rst;
  wire [2:0]count;
  up_down_3bit_count_asyn #(1)dut(.clk(clk),.rst(rst),.count(count));
  always #5 clk = ~clk;
  initial begin
    clk = 0;
	rst = 1;
	#20;
	rst = 0;
	#200;
	$finish;
  end
endmodule
