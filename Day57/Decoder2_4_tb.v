`include "Decoder2_4.v"

module Decoder2_4_tb;
  reg [1:0] i;
  wire [3:0] y;

  Decoder2_4 Dut(.y(y), .i(i));

  initial begin
    $display("i  |  y");
    $display("--------");
    repeat(9) begin
      i = $random() % 4; // Limit to 2-bit values
      #1; // Allow time for output to settle
      $display("%b | %b", i, y);
      #2;
    end
  end
endmodule

