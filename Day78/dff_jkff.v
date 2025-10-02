`include "jk_ff.v"
module dff_jkff(d,clk,rst,q,qb);
  input d,rst,clk;
  output q,qb;
  wire w;
  not g1(w,d);
  jk_ff jk_instantiation(.j(d),.k(w),.clk(clk),.rst(rst),.q(q),.qb(qb));

endmodule
