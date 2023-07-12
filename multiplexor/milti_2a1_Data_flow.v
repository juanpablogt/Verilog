module multiplexor(Y,I,S);
input [1:0]I;
input S;
output Y;

assing Y = S ? I[1] : I[0];

endmodule