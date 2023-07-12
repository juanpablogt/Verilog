module Mux_2_a_1_behivoral(Y,I,S);

input [1:0]I;
input S;
output reg Y;

always @(*)
    if (S)
        Y = I[1];
    else
        Y = I[0];

endmodule

