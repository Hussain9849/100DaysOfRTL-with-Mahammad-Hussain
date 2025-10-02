`include "dff_srff.v"
module d_fftb;
   reg d,clk,rst;
   wire q,qb;
   d_ff dut(.d(d),.clk(clk),.rst(rst),.q(q),.qb(qb));
   always #5 clk = ~clk;
   initial begin
      clk = 0;
      rst = 1;
	  #10;
	  rst = 0;
	     d = 1'b0;#10;  
	     d = 1'b0;#10;  
	     d = 1'b1;#10; 
	     d = 1'b1;#10; 
	     d = 1'b0;#10; 
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
