`include "pipo.v"
module tb;
  reg clk;
  reg [3:0]d;
  wire [3:0]q;
  pipo dut(.clk(clk),.d(d),.q(q));
  always #5 clk = ~clk;
  initial begin
    clk = 0;
	#10;
    d = 0;
	#50;
	d = 4'b1100;
	#100;
	$finish;
  end
endmodule
