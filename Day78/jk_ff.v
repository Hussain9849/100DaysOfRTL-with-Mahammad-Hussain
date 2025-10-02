`timescale 1ns/1ps
module jk_ff(j,k,clk,rst,q,qb);
  input j,k,clk,rst;
  output reg q;
  output qb;
  always@(posedge clk)begin
    if(rst==1)begin
	   q <= 0;
	end
	else begin
	   case({j,k})
	     2'b00:q<=q;
	     2'b01:q<=0;
	     2'b10:q<=1;
	     2'b11:q<=~q;
	   endcase
	end
  end
  assign qb = ~q;
endmodule
