`include "up_cout_3bit_ayn_jk.v"
module tb_counter;
  reg clk,rst;
  wire [2:0]count,count_bar;
  up_cout_3bit_ayn_jk dut(.clk(clk),.rst(rst),.count(count),.count_bar(count_bar));
  always #5 clk=~clk;
  initial begin
    clk= 0;
	rst = 1;
	#20;
    rst = 0;
	#100;
	$finish;
  end
endmodule
