`include "sr_ff.v"
module Tff_srff(t,clk,rst,q,qb);
  input t,clk,rst;
  output q,qb;
  wire w0,w1;
  and g1(w0,t,qb);
  and g2(w1,t,q);
  sr_ff sr(.s(w0),.r(w1),.clk(clk),.rst(rst),.q(q),.qb(qb));
endmodule
