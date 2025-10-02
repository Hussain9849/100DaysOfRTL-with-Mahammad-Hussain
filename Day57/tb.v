`include "Ha_Decoder24.v"
module tb;
  reg a,b;
  wire s,c;
  Ha_Decoder24 dut(.a(a),.b(b),.s(s),.c(c));
  initial begin
    $monitor("t=%0t a=%b b=%b s=%b c=%b",$time,a,b,s,c);
    repeat(6)begin
	   {a,b} = $random();
	   #1;
	end
  end
endmodule
