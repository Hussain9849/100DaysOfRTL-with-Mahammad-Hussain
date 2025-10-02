`include "d_ff_edgeTrigger_using_mux.v"
module tb;
  reg D,clk;
  wire Q;
  d_ff_et_um dut(.D(D),.clk(clk),.Q(Q));
  always #5 clk = ~clk;
  initial begin
     clk = 1;
     #4;
	 D = 1'b0;#10;
	 D = 1'b1;#10;
	 D = 1'b0;#10;
	 D = 1'b1;#10;
	 D = 1'b0;#10;
	 $finish;
  end
endmodule
