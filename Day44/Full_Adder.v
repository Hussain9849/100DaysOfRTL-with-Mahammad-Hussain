//DUT
module Full_Adder(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;
  
  assign sum = a ^ b ^ cin;
  assign carry = (a&b) | (b&cin)| (cin&a);

endmodule
