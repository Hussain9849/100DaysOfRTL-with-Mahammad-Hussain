module FullAdder_4bit(A, B, Cin, Sum, Cout);
   input [3:0] A, B;
   input Cin;
   output [3:0] Sum;
   output Cout;

   assign {Cout, Sum} = A + B + Cin;
endmodule
module FullAdder_4bit_TB;
   reg [3:0] A, B;
   reg Cin;
   wire [3:0] Sum;
   wire Cout;
   FullAdder_4bit UUT(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

   initial begin
      $display("Time\t A      B     Cin | Sum   Cout");
      $monitor("%g\t %b  %b   %b   | %b    %b", $time, A, B, Cin, Sum, Cout);

      // No carry
      A = 4'b0001; B = 4'b0001; Cin = 1'b0; #100;
      A = 4'b0010; B = 4'b0010; Cin = 1'b0; #100;

      // With carry
      A = 4'b1000; B = 4'b1000; Cin = 1'b0; #100; 
      A = 4'b1010; B = 4'b0111; Cin = 1'b0; #100; 
      A = 4'b1100; B = 4'b0101; Cin = 1'b1; #100; 
      A = 4'b1111; B = 4'b1111; Cin = 1'b1; #100; 
      A = 4'b1001; B = 4'b0110; Cin = 1'b1; #100; 

      // More edge cases
      A = 4'b0100; B = 4'b0100; Cin = 1'b0; #100; 
      A = 4'b1110; B = 4'b0001; Cin = 1'b0; #100; 
      A = 4'b1111; B = 4'b0001; Cin = 1'b0; #100; 
      $finish;
   end
endmodule
