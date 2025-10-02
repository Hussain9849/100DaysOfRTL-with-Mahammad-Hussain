module ring_counter_4bit_using_dff #(parameter width=4)(clk,rst,count);
  input clk,rst;
  output reg[width:0]count;
  always@(posedge clk)begin
     if(rst==1)
	   count <= 'd1;
	 else
	     count<={count[width-2:0],count[width-1]};
  end
endmodule
