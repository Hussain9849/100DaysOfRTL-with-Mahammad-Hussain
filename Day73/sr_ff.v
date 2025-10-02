`timescale 1ns/1ps
module sr_ff(s, r, rst, clk, q, qb);
  input s, r, rst, clk;
  output reg q;
  output qb;
  always @(posedge clk) begin
    if (rst) begin
      q <= 0;
    end else begin
      case ({s, r})
        2'b00: q <= q;      
        2'b01: q <= 0;      
        2'b10: q <= 1;      
		2'b11: q <= 1'bx;   
      endcase
    end
  end
  assign qb = ~q;
endmodule

