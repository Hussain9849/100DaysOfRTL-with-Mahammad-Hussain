// XNOR Gate - RTL
module XnorGate(a,b,y);
   input a,b;
   output y;
   assign y = !(a^b);
endmodule

// Testbench
module XnorGate_TB();
   reg a,b;
   wire y;
   XnorGate DUT(.a(a),.b(b),.y(y));
   initial begin
       $display("Time\t a b | y");
       $monitor("%g\t %b %b | %b",$time,a,b,y);
       a = 1'b0; b = 1'b0; #100;
       a = 1'b0; b = 1'b1; #100;
       a = 1'b1; b = 1'b0; #100;
       a = 1'b1; b = 1'b1; #100;
   end
endmodule
