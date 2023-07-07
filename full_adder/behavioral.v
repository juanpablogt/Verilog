module full_adder (s,c,a,b,cin);

input a,b,cin;
output reg,s,c;

always @(*) 
begin
    s = a ^ b ^ cin;
    c = (a & b) | (b & cin) | (a & cin);    
end

endmodule