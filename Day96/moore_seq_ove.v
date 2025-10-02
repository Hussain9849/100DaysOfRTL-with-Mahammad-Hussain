module moore_seq_ove(clk,rst,valid,d_in,patt_det);
    input clk,rst,valid,d_in;
	output reg patt_det;
	parameter s0=2'b00,
	          s1=2'b01,
			  s2=2'b10,
			  s3=2'b11;
    reg [1:0]state,next_state;
	always@(posedge clk)begin
	   if(rst==1)begin
	     state <= s0;
	   end
	   else begin
	     state <= next_state;
	   end
	end
	always@(*)begin
	   case(state)
	   s0 : begin
	     if(valid==1 && d_in==1)
		   next_state <= s1;
		 else 
		   next_state <= s0;
	   end
	   s1 : begin
	     if(valid==1 && d_in==0)
		   next_state <= s2;
		 else 
		   next_state <= s1;
	   end
	   s2 : begin
	     if(valid==1 && d_in==1)
		   next_state <= s3;
		 else 
		   next_state <= s0;
	   end
	   s3 : begin
	     if(valid==1 && d_in==1)
		   next_state <= s1;
		 else 
		   next_state <= s2;
	   end
	   endcase
	end
	always@(state)begin
	  case(state)
	     s0:patt_det=0;
	     s1:patt_det=0;
	     s2:patt_det=0;
	     s3:patt_det=1;
	  endcase
	end
endmodule
