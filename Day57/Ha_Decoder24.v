//`include "Decoder2_4.v"
module Ha_Decoder24(a,b,s,c);
  input a,b;
  output s,c;
  wire n1,n2,n3,n4;
  Decoder2_4 I(.e(1'b1),.i({a,b}),.y({n1,n2,n3,n4}));
  or g1(s,n2,n3);
  assign c = n4;
endmodule
