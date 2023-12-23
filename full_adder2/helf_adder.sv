module helf_adder(a,b,sum,carry);
    input a,b;
    output sum,carry;

//ecuacion logica
    assign sum = a ^ b;
    assign carry = a & b;
endmodule