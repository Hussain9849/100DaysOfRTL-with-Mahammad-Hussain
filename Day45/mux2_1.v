module mux2_1(y,a,b,s0);
    input a,b,s0;
    output y;
    assign y = (~s0&a) | (s0&b);
endmodule

