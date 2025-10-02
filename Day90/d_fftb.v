`include "d_ff.v"
module d_fftb;
   reg d,clk,rst,pr,clr_AL;
   wire q,qb;
   d_ff dut(.d(d),.clk(clk),.rst(rst),.pr(pr),.clr_AL(clr_AL),.q(q),.qb(qb));
   always #5 clk = ~clk;
   initial begin
      clk = 0;
      rst = 1;
	  #10;
	  rst = 0;
	  d = 1'b0;#10;
	  d = 1'b1;#10;
	  d = 1'b0;#10;
	  d = 1'b1;#10;
	  pr = 1'b1;#20;
	  pr = 1'b0;#5;
	  clr_AL = 1'b0;
          #20;
	 $finish;
   end
endmodule
//module d_fftb;
//   reg d,clk,rst;
//   wire q,qb;
//   d_ff dut(.d(d),.clk(clk),.rst(rst),.q(q),.qb(qb));
//   always #5 clk = ~clk;
//   initial begin
//      clk = 0;
//      rst = 1;
//	  #10;
//	  rst = 0;
//	     d = 1'b0;#10;
//	     d = 1'b1;#10;
//	     d = 1'b0;#10;
//	     d = 1'b1;#10;
//	     d = 1'b0;#10;        
//	 $finish;
//   end
//endmodule
