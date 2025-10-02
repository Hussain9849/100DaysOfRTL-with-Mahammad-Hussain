module Decoder2_4(e,i,y);
  input [1:0] i;
  input e;
  output [3:0] y;

  assign y[0] =e& ~i[1] & ~i[0];  
  assign y[1] =e&~i[1] &  i[0];
  assign y[2] =e& i[1] & ~i[0];
  assign y[3] =e& i[1] &  i[0];
endmodule

