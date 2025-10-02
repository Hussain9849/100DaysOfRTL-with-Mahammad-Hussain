module SRlatch_nand(S,R,Q,Qb);
   input S,R;
   output Q,Qb;
   nand g0(Q,S,Qb);
   nand g2(Qb,R,Q);
endmodule
