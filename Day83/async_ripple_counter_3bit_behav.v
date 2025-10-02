module async_ripple_counter_3bit_behav(clk,rst,count,countb);
  input clk,rst;
  output reg [2:0]count;
  output reg [2:0]countb;
  always@(poesdge clk or posedge rst)begin
        if(rst==1)begin
		count[0]<=1'b0;
		countb[0]<=1'b1;
		end    
		else begin
		  count[0]<=~count[0];
		  countb[0]<=count[0];
		end
  end
  always@(negedge count[0] or posedge rst)begin
       if(rst==1)begin
	    count[1]<=1'b0;
		countb[1]<=1'b1;
		end
	   else begin
	   count[1]<=~count[1];
	   countb[1]<=count[1]; 
	   end
  end
  always@(negedge count[1] or posedge rst)begin
       if(rst==1)begin
	      count[2]<=1'b0;
		  countb[2]<=1'b1;
		end
	   else begin
	   count[2]<=~count[2];
	   countb[2]<=count[2];
	   end
  end
endmodule
