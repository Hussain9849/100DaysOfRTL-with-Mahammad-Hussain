module RippleCarry_Adder4bit(S,Cout,A,B,Cin);
   input [3:0]A,B;
   input Cin;
   output [3:0]S;
   output Cout;
   wire c0,c1,c2;
  
   Full_Adder G1(.a(A[0]),.b(B[0]),.cin(Cin),.sum(S[0]),.carry(c0));
   Full_Adder G2(.a(A[1]),.b(B[1]),.cin(c0),.sum(S[1]),.carry(c1));
   Full_Adder G3(.a(A[2]),.b(B[2]),.cin(c1),.sum(S[2]),.carry(c2));
   Full_Adder G4(.a(A[3]),.b(B[3]),.cin(c2),.sum(S[3]),.carry(Cout));
endmodule


module RippleCarry_Adder4bit_TB;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] S;
  wire Cout;

  //  DUT
  RippleCarry_Adder4bit UUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
  );

  initial begin
    $display("Time\t A\t B\t Cin | S\t Cout");
    $monitor("%g\t %b\t %b\t %b   | %b\t %b", $time, A, B, Cin, S, Cout);

    A = 4'b0000; B = 4'b0000; Cin = 0; #10;
    A = 4'b0001; B = 4'b0010; Cin = 0; #10;
    A = 4'b0101; B = 4'b0011; Cin = 0; #10;
    A = 4'b0111; B = 4'b0001; Cin = 1; #10;
    A = 4'b1111; B = 4'b1111; Cin = 0; #10;
    A = 4'b1000; B = 4'b1000; Cin = 1; #10;

  end
endmodule
