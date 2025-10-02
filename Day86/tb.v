`include "seq_coun.v"
module tb;
   reg clk,rst;
   wire [2:0]count,countb;
   seq_cou dut(clk,rst,count,countb);
   always #5 clk = ~clk;
   initial begin
      clk = 0;
      rst = 1;
	  #10;
	  rst = 0;
	  #150;
	  $finish;
   end
endmodule
