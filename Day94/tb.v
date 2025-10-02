module tb;
    reg clk, res, d_in, valid;
    wire pattern_dete;
    sequ_dete_non_over dut (.clk(clk), .res(res), .d_in(d_in), .valid(valid), .pattern_dete(pattern_dete));
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        res = 1;
        d_in = 0;
        valid = 0;
        #20;
        res = 0;
        valid = 1;
        #10;
        $display("Test Case 1: Input sequence 1101");
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 0; #10;
        d_in = 1; #10;
        $display("Test Case 2: Input sequence 1100");
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 0; #10;
        d_in = 0; #10;
        $display("Test Case 3: Input sequence 1111");
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 1; #10;
        $display("Test Case 4: Input sequence 1101 with valid=0");
        d_in = 1; #10;
        d_in = 1; #10;
        valid = 0; #10;
        d_in = 0; #10;
        valid = 1; #10;
        d_in = 0; #10;
        d_in = 1; #10;
        $display("Test Case 5: Reset during sequence");
        d_in = 1; #10;
        d_in = 1; #10;
        res = 1; #10;
        res = 0; #10;
        d_in = 0; #10;
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 0; #10;
        d_in = 1; #10;
        $display("Test Case 6: Multiple 1101 sequences");
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 0; #10;
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 1; #10;
        d_in = 0; #10;
        d_in = 1; #10;
        #20;
        $display("Simulation completed");
        $finish;
    end
    initial begin
        $monitor("Time=%0t res=%b valid=%b d_in=%b state=%b pattern_dete=%b",
                 $time, res, valid, d_in, dut.state, pattern_dete);
    end
endmodule
