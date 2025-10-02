`timescale 1ns/1ps
module t_ff(t,rst,clk,q,qb);
  input t,rst,clk;
  output reg q;
  output qb;
  always@(posedge clk)begin
    if(rst==1)begin
	  q <= 0;
	end
	else begin
	  if(t==0)q <= q;
	  else q <= ~q;
	end
  end
  assign qb = ~q;
endmodule
