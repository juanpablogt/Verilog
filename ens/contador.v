module contador (
    input clk,    // Reloj de entrada
    input rst,    // Señal de reset
    output reg [2:0] count   // Salida del contador de 3 bits
);

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            count <= 3'b000;
        else
            count <= count + 1;
    end

endmodule
