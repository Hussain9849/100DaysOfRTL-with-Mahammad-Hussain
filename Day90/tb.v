`include "ring_counter_4bit_using_dff.v"
`define width 4
module tb;
  reg clk,rst;
  wire [`width-1:0]count;
  ring_counter #(`width)dut(.clk(clk),.rst(rst),.count(count));
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
