`include "t_ff.v"
module srff_using_tff(s,r,rst,clk,q,qb);
  input s,r,rst,clk;
  output q,qb;
  wire [2:0]n;
  and g1(n[0],s,qb);
  and g2(n[1],r,q);
  or g3(n[2],n[0],n[1]);
  t_ff tff(.t(n[2]),.rst(rst),.clk(clk),.q(q),.qb(qb));
endmodule
