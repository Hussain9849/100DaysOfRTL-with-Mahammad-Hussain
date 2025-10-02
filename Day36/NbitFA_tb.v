`include "NbitFA.v"
module NbitFA_tb;
 parameter N = 5;
 reg [N-1:0]a,b;
 reg cin;
 wire [N-1:0]s;
 wire co;
 NbitFA #(.N(N)) dut(a,b,cin,s,co);
 initial begin
  repeat(10)begin
   {a,b,cin} = $random();
   #3;
    $display("a=%b b=%b c=%b s=%b co=%b", a, b, cin, s, co);

  end
 end

endmodule
