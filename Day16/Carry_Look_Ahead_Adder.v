module Carry_Look_Ahead_Adder(A, B, Cin, Sum, Cout);
  input [3:0] A, B;
  input Cin;
  output [3:0] Sum;
  output Cout;

  wire [3:0] P, G; 
  wire c1, c2, c3, c4;

  
  assign P = A ^ B; 
  assign G = A & B; 

  
  assign c1 = G[0] | (P[0] & Cin);
  assign c2 = G[1] |(P[1] & G[0]) | (P[1] & P[0] & Cin);
  assign c3 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
  assign c4 = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) |
              (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
  assign Cout = c4;

  
  assign Sum[0] = P[0] ^ Cin;
  assign Sum[1] = P[1] ^ c1;
  assign Sum[2] = P[2] ^ c2;
  assign Sum[3] = P[3] ^ c3;
endmodule

module Carry_Look_Ahead_Adder_TB;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;

  
  Carry_Look_Ahead_Adder CLA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

  initial begin
    $display("Time\t   A    B   Cin | Sum  Cout");
    $monitor("%g\t %b %b  %b  | %b   %b", $time, A, B, Cin, Sum, Cout);

    A = 4'b0001; B = 4'b0010; Cin = 0; #10; 
    A = 4'b0100; B = 4'b0101; Cin = 0; #10; 
    A = 4'b1111; B = 4'b0001; Cin = 0; #10; 
    A = 4'b1000; B = 4'b1000; Cin = 1; #10; 

    $finish;
  end
endmodule

