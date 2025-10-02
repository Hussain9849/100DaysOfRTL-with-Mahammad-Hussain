module Full_Sub_Using2_1Mux(input A, B, Bin, output Diff, Borr);
  wire [1:0] I_diff;
  wire [1:0] I_borr;

  xor G1(I_diff[0], B, Bin);
  not G2(I_diff[1], I_diff[0]);

  or G3(I_borr[0], B, Bin);
  and G4(I_borr[1], B, Bin);

  mux2_1 M1(.y(Diff), .a(I_diff[0]), .b(I_diff[1]), .s0(A));
  mux2_1 M2(.y(Borr), .a(I_borr[0]), .b(I_borr[1]), .s0(A));
endmodule


module Full_Sub_Using2_1Mux_tb;
  reg A, B, Bin;
  wire Diff, Borr;

  Full_Sub_Using2_1Mux uut (.A(A), .B(B), .Bin(Bin), .Diff(Diff), .Borr(Borr));

   initial begin
    $display("Time\t A B Bin |Diff Borr");
    $monitor("%g\t %b %b %b   | %b    %b", $time, A, B, Bin, Diff, Borr);

    A = 0; B = 0; Bin = 0; #10;
    A = 0; B = 0; Bin = 1; #10;
    A = 0; B = 1; Bin = 0; #10;
    A = 0; B = 1; Bin = 1; #10;
    A = 1; B = 0; Bin = 0; #10;
    A = 1; B = 0; Bin = 1; #10;
    A = 1; B = 1; Bin = 0; #10;
    A = 1; B = 1; Bin = 1; #10;

    $finish;
  end
endmodule

