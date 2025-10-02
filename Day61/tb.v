`include "srlatch_enable.v"
module tb;
  reg S,R,en;
  wire Q,Qb;
  srlatch_enable dut(.S(S),.R(R),.en(en),.Q(Q),.Qb(Qb));
  initial begin
    en = 0;
	#10;
	en = 1;
	repeat(10)begin
	   {S,R} = $random;
	   #5;
	   $display("S=%b R=%b en=%b Q=%b Qb=%b",S,R,en,Q,Qb);
	end
  end
endmodule
