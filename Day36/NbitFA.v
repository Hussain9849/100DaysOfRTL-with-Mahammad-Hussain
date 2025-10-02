module NbitFA #(parameter N=4)(a,b,cin,s,co);
  input [N-1:0]a,b;
  input cin;
  output [N-1:0]s;
  output co;
  assign {co,s} = a+b+cin;
endmodule
