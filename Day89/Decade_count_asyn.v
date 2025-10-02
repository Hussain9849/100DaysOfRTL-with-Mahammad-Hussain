module Decade_count_asyn(clk,rst,count);
  input clk,rst;
  output reg [3:0]count;
  always@(posedge clk or posedge rst)begin
    if(rst==1) count<=4'b0000;
	else begin
	  count <= count+1;
	  if(count==4'b1001)count <= 4'b0000;
	end 

  end
endmodule
