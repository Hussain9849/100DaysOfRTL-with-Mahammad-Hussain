`include "t_ff.v"
module dff_using_tff(d,rst,clk,q,qb);
  input d,rst,clk;
  output q,qb;
  xor g1(w,d,q);
  t_ff tff(.t(w),.rst(rst),.clk(clk),.q(q),.qb(qb));
endmodule
