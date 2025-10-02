`include "t_ff.v"
module async_ripple_counter_3bit_struc(clk,rst,count,countb);
  input clk,rst;
  output [2:0]count;
  output [2:0]countb;
  t_ff t1(.t(1'b1),.rst(rst),.clk(clk),.q(count[0]),.qb(countb[0]));
  t_ff t2(.t(1'b1),.rst(rst),.clk(count[0]),.q(count[1]),.qb(countb[1]));
  t_ff t3(.t(1'b1),.rst(rst),.clk(count[1]),.q(count[2]),.qb(countb[2]));
endmodule
