module sequ_dete_over(input clk, res, d_in, valid, output reg pattern_dete);
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;
    reg [1:0] state, next_state;
    always @(posedge clk) begin
        if (res == 1) begin
            state <= S0;
            pattern_dete <= 0;
        end else begin
            state <= next_state;
            pattern_dete <= (next_state == S3 && valid && d_in) ? 1 : 0;
        end
    end
    always @(*) begin
        case (state)
            S0: begin
                if (valid == 1) begin
                    if (d_in == 1)
                        next_state = S1;
                    else
                        next_state = S0;
                end else begin
                    next_state = S0;
                end
            end
            S1: begin
                if (valid == 1) begin
                    if (d_in == 1)
                        next_state = S2;
                    else
                        next_state = S0;
                end else begin
                    next_state = S1;
                end
            end
            S2: begin
                if (valid == 1) begin
                    if (d_in == 0)
                        next_state = S3;
                    else
                        next_state = S2;
                end else begin
                    next_state = S2;
                end
            end
            S3: begin
                if (valid == 1) begin
                    if (d_in == 1)
                        next_state = S1;
                    else
                        next_state = S0;
                end else begin
                    next_state = S3;
                end
            end
            default: begin
                next_state = S0;
            end
        endcase
    end
endmodule