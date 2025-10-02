module Demux2_1(i,s0,y);
  input i,s0;
  output [1:0]y;
  assign y[0] = (i)&(~s0);
  assign y[1] = (i)&(s0);
endmodule


module Demux2_1_tb;

  reg i, s0;
  wire [1:0] y;

  Demux2_1 uut (.i(i),.s0(s0),.y(y));

  initial begin
    $display("#Day26 of #100DaysOfRTL - 1:2 Demux using dataflow modeling");
    $display("Time\t i s0 | y[1] y[0]");
    $display("-------------------------");
    $monitor("%2t\t %b  %b  |   %b    %b", $time, i, s0, y[1], y[0]);

    i = 1; s0 = 0; #10;
    i = 1; s0 = 1; #10;
    i = 1; s0 = 0; #10;
    i = 1; s0 = 1; #10;

    $finish;
  end

endmodule
