`include "async_ripple_counter_3bit_behav.v"
module async_counter_tb;
    reg clk;
    reg rst;
    wire [2:0] count;
	wire [2:0] countb;
    async_ripple_counter_3bit_behav uut (.clk(clk),.rst(rst),.count(count),.countb(countb));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock (10ns period)
    end
    
    initial begin
	    rst = 1;
        #20;         
        rst = 0;
        #90;         
        rst = 1;
        #10;         
        rst = 0;
        #30;
        $finish;
    end
    initial begin
        $monitor("Time=%0t rst=%b clk=%b count=%b", $time, rst, clk, count);
    end

endmodule
