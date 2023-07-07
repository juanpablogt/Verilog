module full_adder (ss,cc,aa,bb,cin);

input aa,bb,cin;
output ss,cc;

wire n1,n2,n3;

half_adder h1 (.s(n1),.c(n2),.a(aa),.b(bb));
half_adder h2 (.s(ss),.c(n3),.a(n1),.b(cin));
or o1 (cc,n2,n3);

endmodule