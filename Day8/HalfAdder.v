module HalfAdder(A,B,Sum,Carry);
   input A,B;
   output Sum,Carry;
   assign Sum = A ^ B;
   assign Carry = A&B;
endmodule

module HalfAdder_TB;
  reg A,B;
  wire Sum,Carry;
  HalfAdder UUT (.A(A),.B(B),.Sum(Sum),.Carry(Carry));
  initial begin
    $display("Time\t A B | Sum Carry");
    $monitor("%g\t %b %b | %b  %b",$time,A,B,Sum,Carry);
    A = 1'b0; B = 1'b0;#100;
    A = 1'b0; B = 1'b1;#100;
    A = 1'b1; B = 1'b0;#100;
    A = 1'b1; B = 1'b1;#100;
   $finish;   
  end
  
endmodule