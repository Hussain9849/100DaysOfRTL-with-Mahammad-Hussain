`include "melay_seq_det_over.v"
module tb;
  reg clk,rst,valid,d_in;
  wire patt_det;
  melay_seq_det_over dut(.clk(clk),.rst(rst),.valid(valid),.d_in(d_in),.patt_det(patt_det));
  always #5 clk = ~clk;
  initial begin
    rst = 1;
	clk = 0;
	valid = 0;
	#10;
    valid = 1;
	rst = 0;
	d_in = 1;#10;
	d_in = 1;#10;
	d_in = 1;#10;
	d_in = 0;#10;
	#50;
	$finish;
  end
endmodule
