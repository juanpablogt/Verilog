`include "sumador_comp.sv"
module binary_adder(a, b, cin,sum, cout);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;
    wire [3:0] sum_intermedio;
    wire cout_intermedio1, cout_intermedio2, cout_intermedio3;

    sumador_comp adder0 (a[0], b[0], cin, sum_intermedio[0], cout_intermedio1);
    sumador_comp adder1 (a[1], b[1], cout_intermedio1, sum_intermedio[1], cout_intermedio2);
    sumador_comp adder2 (a[2], b[2], cout_intermedio2, sum_intermedio[2], cout_intermedio3);
    sumador_comp adder3 (a[3], b[3], cout_intermedio3, sum_intermedio[3], cout);

    assign sum = sum_intermedio;
endmodule
