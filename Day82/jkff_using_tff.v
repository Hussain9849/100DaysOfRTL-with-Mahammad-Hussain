`include "t_ff.v"
module jkff_using_tff(j,k,rst,clk,q,qb);
   input j,k,rst,clk;
   output q,qb;
   wire [2:0]n;
   and g1(n[0],qb,j);
   and g2(n[1],q,k);
   or g3(n[2],n[1],n[0]);
   t_ff tff(.t(n[2]),.clk(clk),.rst(rst),.q(q),.qb(qb));
   
endmodule
