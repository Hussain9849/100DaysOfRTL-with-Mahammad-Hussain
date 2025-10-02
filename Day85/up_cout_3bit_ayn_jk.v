module up_cout_3bit_ayn_jk(clk,rst,count,count_bar);
   input clk,rst;
   output [2:0]count,count_bar;
   jk_ff ff1(.j(1'b1),.k(1'b1),.rst(rst),.clk(clk),.q(count[0]),.qb(count_bar[0]));
   jk_ff ff2(.j(1'b1),.k(1'b1),.rst(rst),.clk(count_bar[0]),.q(count[1]),.qb(count_bar[1]));
   jk_ff ff3(.j(1'b1),.k(1'b1),.rst(rst),.clk(count_bar[1]),.q(count[2]),.qb(count_bar[2]));
endmodule
