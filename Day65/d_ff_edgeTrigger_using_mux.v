//`include "dlatch_positive_level_sensitive.v"
//`include "dlatch_negative_level_sensitive.v"
module d_ff_edgeTrigger_using_mux(D,clk,Q);
  input D,clk;
  output Q;
  wire qm;
  dlatch_negative_level_sensitive master(.d(D),.en(~clk),.q(qm));
  dlatch_positive_level_sensitive slave(.d(qm),.en(clk),.q(Q));
endmodule
