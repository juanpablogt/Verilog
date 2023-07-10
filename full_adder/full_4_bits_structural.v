module full_adder_4bits(s,cout,a,b,cin);
input [3:0] a,b;
input cin;

output [3:0] s;
output cout;

wire [3:0] c1,c2,c3;

full_adder fa0(s[0],c1[0],a[0],b[0],cin);
full_adder fa1(s[1],c1[1],a[1],b[1],c1[0]);
full_adder fa2(s[2],c1[2],a[2],b[2],c1[1]);
full_adder fa3(s[3],c1[3],a[3],b[3],c1[2]);

endmodule