// XOR Gate Design
module XorGate(a, b, y);
  input a, b;
  output y;
  assign y = a ^ b;
endmodule

// XOR Gate Testbench
module XorGate_TB();
  reg a, b;
  wire y;

  // Instantiate the Unit Under Test
  XorGate UUT (.a(a), .b(b), .y(y));

  initial begin
    $display("Time\t a b | y");
    $monitor("%g\t %b %b | %b", $time, a, b, y);

    a = 1'b0; b = 1'b0; #100;
    a = 1'b0; b = 1'b1; #100;
    a = 1'b1; b = 1'b0; #100;
    a = 1'b1; b = 1'b1; #100;
  end
endmodule

