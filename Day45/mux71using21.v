`include "mux2_1.v"
module mux71using21(i,s,y);
  input [6:0]i;
  input [2:0]s;
  output y;
  wire [4:0]n;
  mux2_1 mo(.a(i[0]),.b(i[1]),.s0(s[0]),.y(n[0]));
  mux2_1 m1(.a(i[2]),.b(i[3]),.s0(s[0]),.y(n[1]));
  mux2_1 m2(.a(i[4]),.b(i[5]),.s0(s[0]),.y(n[2]));
  mux2_1 m3(.a(n[0]),.b(n[1]),.s0(s[1]),.y(n[3]));
  mux2_1 m4(.a(n[2]),.b(i[6]),.s0(s[1]),.y(n[4]));
  mux2_1 m5(.a(n[3]),.b(n[4]),.s0(s[2]),.y(y));
endmodule
