`include "nbit_gray_to_binary.v"
module nbit_gray_to_binary_tb;
  parameter N = 4;
  reg [N-1:0]g;
  wire [N-1:0]b;
  nbit_gray_to_binary dut(.g(g),.b(b));
  initial begin
   repeat(10)begin
    {g} = $random();
	#3;
	$display("g=%b b=%b",g,b);
  end
  end
endmodule
