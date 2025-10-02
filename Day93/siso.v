module siso(clk, si, so);
    input clk, si;
	output so;
    reg [3:0] q=0;
    always @(posedge clk) begin
        q[3] <= si;
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
    end
	assign so = q[0];
endmodule
