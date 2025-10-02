`include "jkff_using_tff.v"
module jk_fftb;
   reg j,k,clk,rst;
   wire q,qb;
   jkff_using_tff dut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q),.qb(qb));
   always #5 clk = ~clk;
   initial begin
      clk = 0;
      rst = 1;
	  #10;
	  rst = 0;
	  repeat(10)begin
	    {j,k} = $random;
		#10;
	  end
	 $finish;
   end
endmodule

