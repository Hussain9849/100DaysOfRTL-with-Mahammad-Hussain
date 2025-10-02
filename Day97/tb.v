`include "moore_seq_non_ove.v"
module tb;
  reg clk,rst,valid,d_in;
  wire patt_det;
  moore_seq_non_ove dut(.clk(clk),.rst(rst),.valid(valid),.d_in(d_in),.patt_det(patt_det));
  always #5 clk = ~clk;
  initial begin
     clk = 0;
	 rst = 1;
	 d_in = 0;
	 valid = 0;
	 #10;
	 rst = 0;
	 valid = 1;
	 //test case 0101010
	 d_in = 0;#10;
	 d_in = 1;#10;
	 d_in = 0;#10;
	 d_in = 1;#10;
	 d_in = 0;#10;
	 d_in = 1;#10;
	 d_in = 0;#10;
	 #100
	 $finish;
  end
  initial begin
        $monitor("Time=%0t rst=%b valid=%b d_in=%b state=%b patt_det=%b",
                 $time, rst, valid, d_in, dut.state, patt_det);
    end
endmodule
