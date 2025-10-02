module FullSubtractor(Diff, Borr, A, B, Bin);
  input A, B, Bin;
  output Diff, Borr;

  assign Diff = A ^ B ^ Bin;
  assign Borr = (~A & Bin) | (B & Bin) | (~A & B);
endmodule

module FullSubtractor_TB;
  reg A, B, Bin;
  wire Diff, Borr;

  // Instantiate the DUT 
  FullSubtractor DUT (.A(A), .B(B), .Bin(Bin), .Diff(Diff), .Borr(Borr));

  initial begin
    $display("Time\t A B Bin | Diff Borr");
    $monitor("%g\t %b %b  %b  |   %b    %b", $time, A, B, Bin, Diff, Borr);

    // input combinations
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
