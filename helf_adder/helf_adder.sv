module helf_adder(
    input a, b,
    output sum, carry
);
    // Ecuación lógica
    assign sum = a ^ b;
    assign carry = a & b;
endmodule
