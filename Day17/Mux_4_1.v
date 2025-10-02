module Mux_4_1(i, s1, s0, y);
  input [3:0] i;
  input s1, s0;
  output y;

  assign y = (~s1 & ~s0 & i[0]) | (~s1 &  s0 & i[1]) | ( s1 & ~s0 & i[2]) | ( s1 &  s0 & i[3]);
endmodule

module Mux_4_1_TB;
  reg [3:0] i;
  reg s1, s0;
  wire y;

  Mux_4_1 UUT(.i(i), .s1(s1), .s0(s0), .y(y));

  initial begin
    i = 4'b1010;

    $display("Time\t  s1 s0 | y");
    $monitor("%g\t  %b  %b  | %b", $time, s1, s0, y);

    s1 = 0; s0 = 0; #10;
    s1 = 0; s0 = 1; #10;
    s1 = 1; s0 = 0; #10;
    s1 = 1; s0 = 1; #10;

    $finish;
  end
endmodule

