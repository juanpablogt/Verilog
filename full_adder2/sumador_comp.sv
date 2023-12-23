`include "helf_adder.sv"
module sumador_comp;
    reg a, b, cin;
    wire sum, cout;
    wire s1, c1, c2;
    helf_adder adder1(.a(a), .b(b), .sum(s1), .carry(c1));
    helf_adder adder2(.a(s1), .b(cin), .carry(c2), .sum(sum));
    or(cout, c1, c2);
endmodule
