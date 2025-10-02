module Adder_Subtractor_4bit(A,B,Cin,S,Cout);
  input [3:0]A,B;
  input Cin;//Cin is mode
  output [3:0]S;
  output Cout;
  wire x0,x1,x2,x3;
  wire c0,c1,c2;
 
  //primitives (xor) when always 1 it act as inverter are used for 2's compliment
  xor G1(x0,B[0],Cin);
  xor G2(x1,B[1],Cin);
  xor G3(x2,B[2],Cin);
  xor G4(x3,B[3],Cin);
  
  // Instantiate FullAdder 
  Full_Adder FA0(.a(A[0]),.b(x0),.cin(Cin),.sum(S[0]),.carry(c0));//a,b,cin,sum,carry
  Full_Adder FA1(.a(A[1]),.b(x1),.cin(c0),.sum(S[1]),.carry(c1));
  Full_Adder FA2(.a(A[2]),.b(x2),.cin(c1),.sum(S[2]),.carry(c2));
  Full_Adder FA3(.a(A[3]),.b(x3),.cin(c2),.sum(S[3]),.carry(Cout));
  
endmodule

module Adder_Subtractor_4bit_TB;
  reg [3:0] A, B;
  reg Cin; // Mode: 0 = Add, 1 = Subtract
  wire [3:0] S;
  wire Cout;

  // Instantiate the DUT
  Adder_Subtractor_4bit DUT (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

  initial begin
    $display("Time\tMode  A    B     |  Result Cout");
    $monitor("%g\t %b   %b  %b  |   %b     %b", $time, Cin, A, B, S, Cout);

    // Addition Test Cases (Cin = 0)
    Cin = 0; A = 4'b0001; B = 4'b0010; #10; 
    Cin = 0; A = 4'b0100; B = 4'b0011; #10; 
    Cin = 0; A = 4'b1111; B = 4'b0001; #10; 
    Cin = 0; A = 4'b1000; B = 4'b1000; #10; 

    // Subtraction Test Cases (Cin = 1)
    Cin = 1; A = 4'b0101; B = 4'b0010; #10; 
    Cin = 1; A = 4'b0110; B = 4'b0011; #10; 
    Cin = 1; A = 4'b1000; B = 4'b0001; #10; 
    Cin = 1; A = 4'b0100; B = 4'b0110; #10; 

    $finish;
  end
endmodule
