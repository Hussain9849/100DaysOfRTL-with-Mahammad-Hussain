`include "jk_ff.v"
module Tff_jkff(t,clk,rst,q,qb);
  input t,clk,rst;
  output q,qb;
  jk_ff jk_instantiation(.j(t),.k(t),.clk(clk),.rst(rst),.q(q),.qb(qb));
endmodule
