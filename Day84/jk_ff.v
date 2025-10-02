module jk_ff(j,k,rst,clk,q,qb);
   input clk,j,k,rst;
   output reg q;
   output qb;
   always@(negedge clk or posedge rst)begin
    if(rst==1)begin
	   q<=0;
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
   assign qb=~q;
endmodule
