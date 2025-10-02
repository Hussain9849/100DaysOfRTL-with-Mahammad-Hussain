`include "d_latch.v"
module tb;
  reg d,en;
  wire q,qb;
  d_latch dut(.d(d),.en(en),.q(q),.qb(qb));
  initial begin
    //en = 1;
	repeat(9)begin
	  {en,d} = $random();
	  #5;
	end
  end
endmodule
