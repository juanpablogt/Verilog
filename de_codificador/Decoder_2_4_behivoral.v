module decode_2_4(Y,I,En);
input [1:0]I;
input En;
output [3:0]Y;

always@(*)
begin
    case({En,I})
        3'b100: Y = 4'b0001;
        3'b101: Y = 4'b0010;
        3'b110: Y = 4'b0100;
        3'b111: Y = 4'b1000;
        3'b000: Y = 4'b0000;
        3'b001: Y = 4'b0000;
        3'b010: Y = 4'b0000;
        3'b011: Y = 4'b0001;
        default: Y = 4'b0000;
    endcase
end

endmodule

//Tener en cuenta que es un deco de 2 a 4 pero utiliza un habilitador por 
//lo que las entradas seran de 3 bits.
//es un deco de prioridad por esto lo del En.