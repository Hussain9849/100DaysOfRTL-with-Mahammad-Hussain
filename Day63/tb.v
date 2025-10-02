`include "dlatch_positive_level_sensitive.v"
module tb;
  reg d,en;
  wire q;
  d_latch_positive_level dut(.d(d),.en(en),.q(q));
  initial begin
     repeat(10)begin
	   {en,d}=$random;
	   #1;
	   $display("en=%b d=%b q=%b",en,d,q);
	 end
  end
endmodule
