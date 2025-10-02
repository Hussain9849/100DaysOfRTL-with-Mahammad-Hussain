`include "sipo.v"
module tb;
  reg clk,si;
  wire so;
  siso dut(.clk(clk),.si(si),.so(so));
  always #5 clk = ~clk;
  initial begin
    clk = 0;
	si = 1'b1;#10;
	si = 1'b1;#10;
	si = 1'b0;#10;
	si = 1'b1;#10;
	#100;
	$finish;
  end
endmodule
