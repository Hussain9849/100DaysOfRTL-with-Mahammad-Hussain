`include "Tff_jkff.v"
module t_fftb;
   reg t,clk,rst;
   wire q,qb;
   Tff_jkff dut(.t(t),.clk(clk),.rst(rst),.q(q),.qb(qb));
   always #5 clk = ~clk;
   initial begin
      clk = 0;
      rst = 1;
	  #10;
	  rst = 0;
	  repeat(10)begin
	    t = $random;
		#10;
	  end
	 $finish;
   end
endmodule

