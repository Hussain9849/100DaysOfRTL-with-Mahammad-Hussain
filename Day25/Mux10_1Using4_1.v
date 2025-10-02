module Mux10_1Using4_1(input [9:0]I ,input [3:0]S, output Y);
  wire w1,w2;
  wire [3:0]I_Mux1;
  wire [3:0]I_Mux2;
  wire [3:0]I_Mux3;
  assign I_Mux1 = {I[6],I[4],I[2],I[0]}; 
  assign I_Mux2 = {I[7],I[5],I[3],I[1]};
  
  Mux_4_1 M1(.i(I_Mux1), .s1(S[2]), .s0(S[1]), .y(w1));
  Mux_4_1 M2(.i(I_Mux2), .s1(S[2]), .s0(S[1]), .y(w2));

  assign I_Mux3 = {I[9],I[8],w2,w1};
  Mux_4_1 M3(.i(I_Mux3), .s1(S[3]), .s0(S[0]), .y(Y));
endmodule
module Mux10_1_TB;
  reg [9:0] I;
  reg [3:0] S;
  wire Y;
  Mux10_1Using4_1 uut(.I(I), .S(S), .Y(Y));
  initial begin
    I = 10'b1010101010; 
    $display("Time\t I\t     S   | Y");
    $monitor("%0t\t %b %b | %b", $time,I, S, Y);

    S = 4'd0; #10; 
    S = 4'd1; #10; 
    S = 4'd2; #10; 
    S = 4'd3; #10; 
    S = 4'd4; #10; 
    S = 4'd5; #10; 
    S = 4'd6; #10; 
    S = 4'd7; #10; 
    S = 4'd8; #10; 
    S = 4'd9; #10; 
    $finish;
  end
endmodule




