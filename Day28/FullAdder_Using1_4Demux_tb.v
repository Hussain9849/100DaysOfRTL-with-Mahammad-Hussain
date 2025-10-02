`include "FullAdder_Using1_4Demux.v"
module FullAdder_Using1_4Demux_tb;
   reg A, B, Cin;
   wire Sum, Carry;

   FullAdder_Using1_4Demux DUT(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Carry(Carry));

   initial begin
     $display("A B Cin | Sum Carry");
     repeat (8) begin
       {A, B, Cin} = $random % 8;
       #5;
       $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);
     end
   end

endmodule

