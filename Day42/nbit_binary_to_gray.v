module nbit_binary_to_gray(b,g);
 parameter N = 4;
 input [N-1:0]b;
 output [N-1:0]g;
 assign g = {b[N-1],b[N-1:1]^b[N-2:0]};
endmodule
