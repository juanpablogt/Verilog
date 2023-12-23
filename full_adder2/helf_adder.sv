module helf_adder(
    input a,b,
    output sum,carry
);
//ecuacion logica
    assign sum = a ^ b;
    assign carry = a & b;
endmodule