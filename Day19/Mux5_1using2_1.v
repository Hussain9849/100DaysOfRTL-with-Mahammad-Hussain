module Mux5_1using2_1(i, S, Y);
  input [4:0] i;
  input [2:0] S;
  output Y;
  wire w1, w2, w3;

  mux2_1 M1(.a(i[0]), .b(i[1]), .s0(S[0]), .y(w1));
  mux2_1 M2(.a(i[2]), .b(i[3]), .s0(S[0]), .y(w2));
  mux2_1 M3(.a(w1), .b(w2), .s0(S[1]), .y(w3));
  mux2_1 M4(.a(w3), .b(i[4]), .s0(S[2]), .y(Y));
endmodule

module Mux5_1using2_1_TB;
  reg [4:0] i;
  reg [2:0] S;
  wire Y;

  Mux5_1using2_1 UUT(.i(i), .S(S), .Y(Y));

  initial begin
    $display("Time\t s i | Y");
    $monitor("%g\t %b %b | %b", $time, S, i, Y);

    i = 5'b10101;  // i[0]=1, i[1]=0, i[2]=1, i[3]=0, i[4]=1

    s = 3'b000; #10; 
    s = 3'b001; #10; 
    s = 3'b010; #10;
    s = 3'b011; #10; 
    s = 3'b100; #10; 
    s = 3'b101; #10; 
    $finish;
  end
endmodule
