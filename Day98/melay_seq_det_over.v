module melay_seq_det_over(clk, rst, valid, d_in, patt_det);
  parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11; 
  input clk,rst,valid,d_in;
  output reg patt_det;
  reg [1:0] state, next_state;
  always @(posedge clk or posedge rst) begin
    if (rst)
      state <= s0;
    else
      state <= next_state;
  end
  always @(*) begin
    next_state = s0;   
    patt_det = 0;      
    case (state)
      s0: begin
        if (valid) begin
          if (d_in == 1)
            next_state = s1;
          else
            next_state = s0;
        end else
          next_state = s0;
      end
      s1: begin
        if (valid) begin
          if (d_in == 1)
            next_state = s2;
          else
            next_state = s0;
        end else
          next_state = s1;
      end
      s2: begin
        if (valid) begin
          if (d_in == 1)
            next_state = s3;
          else
            next_state = s0;
        end else
          next_state = s2;
      end
      s3: begin
        if (valid) begin
          if (d_in == 0) begin
            patt_det = 1;      
            next_state = s0;
          end else
            next_state = s3;    
        end else
          next_state = s3;
      end
    endcase  end
endmodule

 
