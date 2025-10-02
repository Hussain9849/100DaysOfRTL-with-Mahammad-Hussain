module SRlatch(S,R,en,Q,Qb);
   input S,R;
   output Q,Qb;
   wire Sb,Rb;
   nand g0(Q,Sb,Qb);
   nand g2(Qb,Rb,Q);
   nand g3(Sb,S,en);
   nand g4(Rb,R,en);
endmodule
