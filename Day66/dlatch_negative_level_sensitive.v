//`include "mux21.v"
module dlatch_negative_level_sensitive(d,en,q);
    input d,en;
	output q;
    mux21 m(.i1(q),.i0(d),.s(en),.y(q)); 

endmodule
