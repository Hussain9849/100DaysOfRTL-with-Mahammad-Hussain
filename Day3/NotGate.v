module NotGate(Vin,Vout);
  input Vin;
  output Vout;
  assign Vout = !Vin;
endmodule

module NotGate_TB;
 reg Vin;
 wire Vout;
 NotGate UUT (.Vin(Vin),.Vout(Vout));
 initial begin
 $display("Time\t Vin|Vout");
 $monitor("%g\t %b  %b",$time, Vin,Vout);
 Vin = 0; #10;
 Vin = 1; #10;
 end

endmodule
  