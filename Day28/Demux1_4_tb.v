`include "Demux1_4.v"
module Demux4_1_tb;
  reg i;
  reg [1:0] s;   // Changed 'wire' to 'reg' for s since you're assigning to it
  wire [3:0] y;
  Demux4_1 DUT (.i(i), .s(s), .y(y));
  initial begin
    i = 1'b1;  // i should be a single bit
    $display("-----------------y[3:0]");
    repeat(8) begin
      s[0] = $random;
      s[1] = $random;
      #10;
      $display("i = %b, s = %b, y = %b", i, s, y);
    end
  end
endmodule
