`timescale 1ns/1ps
module tb;
  reg clk;
  real tp, toff, ton, dc;
  real jitter, jitter_tp;
  
  initial begin
    clk = 0; 
    dc = 75;          
	tp = 5;       
    jitter = 3;  
//	ton  = (dc*tp)/100.0;        
//  toff = ((100-dc)*tp)/100.0;  
    forever begin 
     jitter_tp = tp * ($urandom_range((100-jitter),(100+jitter)) / 100.0);	 
	 ton = (dc*jitter_tp)/100.0;
	 toff = ((100-dc)*jitter_tp)/100.0;
	 clk = 0;
	 #(toff);
	 clk = 1;
	 #(ton);
    end
  end
  initial begin
    #100;
    $finish;
  end
endmodule

