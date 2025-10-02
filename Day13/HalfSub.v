//DUT
module HalfSub(Diff,Borr,a,b);
   input a,b;
   output Diff,Borr;
   assign Diff = a ^ b;
   assign Borr = (~a) & b;
endmodule

//TestBench
module HalfSub_TB;
  reg a, b;
  wire Diff, Borr;

  // Instantiate the DUT ;)
  HalfSub UUT (.a(a),.b(b),.Diff(Diff),.Borr(Borr));

  initial begin
    $display("Time\t a b | Diff Borr");
    $monitor("%g\t %b %b |  %b    %b", $time, a, b, Diff, Borr);
// input combinations
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end
endmodule


