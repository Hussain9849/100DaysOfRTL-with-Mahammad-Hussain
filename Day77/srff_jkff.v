`include "jk_ff.v"
module srff_jkff(s,r,clk,rst,q,qb);
  input s,r,clk,rst;
  output q,qb;
  jk_ff jk_instantiation(.j(s),.k(r),.clk(clk),.rst(rst),.q(q),.qb(qb));
endmodule
