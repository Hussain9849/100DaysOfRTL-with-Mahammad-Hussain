//`include "Demux1_4.v"
module FullAdder_Using1_4Demux(A,B,Cin,Sum,Carry);
  input A,B,Cin;
  output Sum,Carry;
  wire n1,w0,w1,w2,w3,w4,w5,w6,w7;
  not g1(n1,A);
  Demux1_4 D1(.E(n1),.i(1'b1),.s({B,Cin}),.y({w3,w2,w1,w0}));
  Demux1_4 D2(.E(A),.i(1'b1),.s({B,Cin}),.y({w7,w6,w5,w4}));
  or g2(Carry,w3,w5,w6,w7);
  or g3(Sum,w1,w2,w4,w7);
endmodule
