`include "nbit_binary_to_gray.v"
module nbit_binary_to_gray_tb;
  parameter N = 4;
  reg [N-1:0]b;
  wire [N-1:0]g;
  nbit_binary_to_gray dut(.b(b),.g(g));
  initial begin
    repeat(10)begin
    {b} = $random();
	#3;
	$display("b=%b g=%b",b,g);
  end
  end
endmodule
