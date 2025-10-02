`include "Nbit_FullAdder_Structural.v"
module tb;
  parameter N = 5;
  reg [N-1:0]a,b;
  reg cin;
  wire [N-1:0]sum;
  wire cout;
  integer seed;
  Nbit_FullAdder_Structural #(.N(N))dut(a,b,cin,sum,cout);
  initial begin
  seed = 11;
   repeat(15)begin
    {a,b,cin} = $random(seed);
	#3;
	$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
  end
  end
endmodule
