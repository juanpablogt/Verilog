module encoder_4_2_Bhavioral(Y,I,V);

input [3:0]I;
output reg [1:0]Y;
output reg V;

always@(*)begin
    case(I)
        4'd1: {Y,V} = 3'b100;
        4'd2: {Y,V} = 3'b101
        4'd4: {Y,V} = 3'b110;
        4'd8: {Y,V} = 3'b111;

        4'd0,4'd3,4'd5,4'd6,4'd7,4'd9,4'd10,4'd11,4'd12,4'd13,4'd14,4'd15: {Y,V} = 3'b000;
        default: $display("Error");
    endcase
end

endmodule

//Tener en cuenta que es 4 a 2 pero se produce un registro de tres salidas, se puede omitir el registro de V.
//es un codificador de prioridad.por lo que se debe tener en cuenta que v es el habilitador.