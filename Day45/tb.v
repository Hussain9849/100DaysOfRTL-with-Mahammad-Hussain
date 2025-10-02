`include "mux71using21.v"
module tb;
 reg [6:0]i;
 reg [2:0]s;
 wire y;
 mux71using21 dut(.i(i),.s(s),.y(y));
 initial begin
   repeat(10)begin
     {i,s} = $random();
	 #3;
	 $display("i=%b s=%b y=%b",i,s,y);
   end
 end
endmodule
