module Full_adder (s,c,a,b,cin);
input a,b,cin;
output s,c;
wire n1,n2,n3,n4;
xor (n1,a,b); 
xor (s,n1,cin);
and (n2,n1,cin);
and (n3,a,b);
and (n4,n3,cin);
or (c,n2,n4);
endmodule
