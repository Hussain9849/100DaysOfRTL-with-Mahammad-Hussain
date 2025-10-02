`include "Decade_count_asyn.v"
module tb;
  reg clk,rst;
  wire [3:0]count;
  Decade_count_asyn dut(.clk(clk),.rst(rst),.count(count));
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
