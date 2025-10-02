`include "sr_ff.v"
module jkff_srff(clk,rst,j,k,q,qb);
   input clk,rst,j,k;
   output q,qb;
   and g1(w0,j,qb);
   and g2(w1,k,q);
   sr_ff sr(.s(w0),.r(w1),.rst(rst),.clk(clk),.q(q),.qb(qb));
endmodule
