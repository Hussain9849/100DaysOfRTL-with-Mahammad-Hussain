`include "sipo.v"
module tb;
  reg clk,si;
  wire [3:0]q;
  sipo dut(.clk(clk),.si(si),.q(q));
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
