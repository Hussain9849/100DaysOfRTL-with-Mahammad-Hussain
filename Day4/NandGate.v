// Abstraction Level - RTL
module NandGate(a, b, y);
  input a, b;
  output y;
  assign y = ~(a & b);
endmodule

// Testbench
module NandGate_TB;
  reg a, b;
  wire y;

  // Instantiate the Design Under Test (DUT)
  NandGate uut (.a(a), .b(b), .y(y));

  initial begin
    $display("Time\t a b | y");
    $monitor("%g\t %b %b | %b", $time, a, b, y);

    // Apply test vectors
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end
endmodule
