`timescale 1ns/1ps
module d_ff(d,clk,rst,q,qb);
  input d,clk,rst;
  output reg q,qb;
  always@(posedge clk)begin
     if(rst==1)begin
	   q <= 0;
	   qb <= 1;
	 end
	 else begin
	    q <= d;
	    qb <= ~d;
	 end
  end
endmodule
