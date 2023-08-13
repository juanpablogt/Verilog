`timescale 1ns / 1ps

module tb_ALU;

reg [3:0] a, b, opcode;
reg [3:0] x, y;

// Instancia del módulo ALU
alu ALU_inst (
    .a(a),
    .b(b),
    .x(x),
    .y(y),
    .opcode(opcode)
);

// Estímulos
initial begin
    // Iniciar la simulación VCD
    $dumpfile("alu_tb.vcd");
    $dumpvars(0, tb_ALU);
    
    // Configurar estímulos
    a = 4'b1100; // Ejemplo de valores de entrada
    b = 4'b0010;
    opcode = 4'b1010;
    
    // Esperar un tiempo para estabilizar las señales
    #5;
    
    // Mostrar valores de entrada
    $display("Entrada: a = %b, b = %b, opcode = %b", a, b, opcode);
    
    // Esperar un tiempo adicional para la simulación
    #10;
    
    // Mostrar resultados
    $display("Resultado: x = %b, y = %b", x, y);
    
    $finish; // Terminar la simulación
end

endmodule
