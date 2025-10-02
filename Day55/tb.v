`include "SRlatch.v"
module tb;
  reg S,R;
  wire Q,Qb;
  SRlatch_nand dut(.S(S),.R(R),.Q(Q),.Qb(Qb));
  initial begin
  $monitor("t=%0t S=%b R=%b Q=%b Qb=%b",$time,S,R,Q,Qb);
    S = 1'b0; R=1'b0; #1;
    S = 1'b0; R=1'b1; #1;
    S = 1'b1; R=1'b0; #1; 
    $display("memory state");
    S = 1'b0; R=1'b0; #1;
    S = 1'b1; R=1'b1; #1;
  end
endmodule
