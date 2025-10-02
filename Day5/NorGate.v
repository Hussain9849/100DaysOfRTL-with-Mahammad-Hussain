// Abstraction Level - RTL
module NorGate(a, b, y);
  input a, b;
  output y;
  assign y = ~(a | b);
endmodule

// Testbench
module NorGate_TB;
  reg a, b;
  wire y;

  // Instantiate the Unit Under Test
  NorGate UUT (.a(a), .b(b), .y(y));

  initial begin
    $display("Time\t a b | y");
    $monitor("%g\t %b %b | %b", $time, a, b, y);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end
endmodule
