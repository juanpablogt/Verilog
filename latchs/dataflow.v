module dlacht_df(q,d,en);
input en,d;
output q;

assing q = en ? d : q;

endmodule
