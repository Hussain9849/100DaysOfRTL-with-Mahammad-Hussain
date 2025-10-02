`include "srff_using_dff.v"
module sr_fftb;
   reg s,r,clk,rst;
   wire q,qb;
   srff_using_dff dut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qb(qb));
   always #5 clk = ~clk;
   initial begin
      clk = 0;
      rst = 1;
	  #10;
	  rst = 0;
	  repeat(10)begin
	    {s,r} = $random;
		#10;
	  end
	 $finish;
   end
endmodule
