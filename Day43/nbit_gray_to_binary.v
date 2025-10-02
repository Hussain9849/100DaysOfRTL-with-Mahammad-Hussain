module nbit_gray_to_binary(g,b);
   parameter N = 4;
   input [N-1:0]g;
   output [N-1:0]b;
   assign b = {g[N-1],b[N-1:1]^g[N-2:0]};
endmodule
