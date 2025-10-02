`include "d_ff.v"
module Tff_dff(t,clk,rst,q,qb);
   input t,clk,rst;
   output q,qb;
   wire w;
   xor g1(w,t,q);
   d_ff df_instantiation(.d(w),.clk(clk),.rst(rst),.q(q),.qb(qb));
endmodule
