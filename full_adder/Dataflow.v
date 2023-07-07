module full_adder (s,c,a,b,cin);

input a,b,cin;
output s,c;

assingn s = a ^ b ^ cin;
assign c = (a & b) | (b & cin) | (a & cin);

endmodule