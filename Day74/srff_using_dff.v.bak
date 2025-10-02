`include "d_ff.v"
module srff_using_dff(s,r,clk,rst,q,qb);
  input clk,rst,s,r;
  output q,qb;
  wire w0,w1,w2;
  not g1(w0,r);
  and g2(w1,w0,q);
  or g3(w2,w1,s);
  d_ff dff(.d(w2),.rst(rst),.clk(clk),.q(q),.qb(qb));
endmodule
