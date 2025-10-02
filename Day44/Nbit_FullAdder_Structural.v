`include "Full_Adder.v" 

module Nbit_FullAdder_Structural #(parameter N=8)(a,b,cin,sum,cout);
  input [N-1:0]a,b;
  input cin;
  output [N-1:0]sum;
  output cout;
  wire [N:0]c_temp;
  genvar i;
  assign c_temp[0] = cin; //Full_Adder(a,b,cin,sum,carry);
  generate
  for (i=0;i<N;i=i+1)begin: FA_LOOP
	Full_Adder f(.a(a[i]), .b(b[i]), .cin(c_temp[i]), .sum(sum[i]), .carry(c_temp[i+1]));
  end
  endgenerate
  assign cout = c_temp[N];
endmodule
