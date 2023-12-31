module mux_4_1_behivoral(Y,I,S);
input [3:0] I;
input [1:0] S;
output reg Y;

always @ (*)
    case(S)
        2'b00: Y = I[0];
        2'b01: Y = I[1];
        2'b10: Y = I[2];
        2'b11: Y = I[3];
        default: $display("Error");
    endcase
endmodule