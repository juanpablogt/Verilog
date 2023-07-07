module full_adder (s,c,a,b,cin);

input a,b,cin;
output s,c;
wire n1,n2,n3;

half_adder h1 (n1,c,a,b);
half_adder h2 (s,n2,n1,cin);
or o1 (c,n2,n3);

endmodule


