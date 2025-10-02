`timescale 1ns / 1ps
`include "mod5_asy_cou.v"

module tb;
    reg clk;          
	reg rst;             
	wire [2:0] count; 
    mod5_up_counter dut (.clk(clk),.rst(rst),.count(count));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #100;
        rst = 1;
        #10 rst = 0;
        #50;
        $finish;
    end
endmodule
