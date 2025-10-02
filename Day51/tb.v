`include "norLatch.v"
module tb_nor_latch;
  reg S, R;
  wire Q, Qbar;
  nor_latch dut (.S(S), .R(R), .Q(Q), .Qbar(Qbar));
  initial begin
    $monitor("t=%0t S=%b R=%b Q=%b Qbar=%b", $time, S, R, Q, Qbar);
    S=0; R=0; #5; 
    S=1; R=0; #5; 
    S=0; R=0; #5; 
    S=0; R=1; #5; 
    S=0; R=0; #5; 
    S=1; R=1; #5; 
    $finish;
  end
endmodule

