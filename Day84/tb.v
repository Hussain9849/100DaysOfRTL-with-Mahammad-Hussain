`include "jk_ff.v"
module tb;
  reg j,k,rst,clk;
  wire q,qb;
  jk_ff jk(.j(j),.k(k),.rst(rst),.clk(clk),.q(q),.qb(qb));
  always #5 clk=~clk;
  initial begin
     clk = 0;
     rst = 1;
	 #10;
	 rst = 0;
	 j=1'b0;k=1'b0;#10;
	 j=1'b0;k=1'b1;#10;
	 j=1'b1;k=1'b0;#10;
	 j=1'b1;k=1'b1;#10;
	 j=1'b1;k=1'b0;#10;
	 j=1'b1;k=1'b0;#10;
	 #50;
	 $finish;
  end
endmodule
