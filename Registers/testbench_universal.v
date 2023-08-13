`timescale 1ns / 1ps

module mi_modulo_tb;

reg [1:0] sel;
reg [4:0] PI;
reg clk, rst, SI;
wire [4:0] PO;
reg [4:0] count; // Agrega la declaración de la señal count

// Instancia del módulo bajo prueba
USR USR_inst (
    .sel(sel),
    .PI(PI),
    .clk(clk),
    .rst(rst),
    .SI(SI),
    .PO(PO)
);

// Estímulos
initial begin
    // Iniciar la simulación VCD
    $dumpfile("mi_modulo.vcd");
    $dumpvars(0, mi_modulo_tb);
    
    sel = 2'b00;
    PI = 5'b10101;
    clk = 0;
    rst = 1;
    SI = 1;
    count = 0; // Inicializa la señal count
    
    #10 rst = 0; // Desactivar el reset después de 10 unidades de tiempo
    #5;
    
    // Agregar más estímulos o cambios de señales aquí
    $display("Tiempo\tValor del contador\tReloj\tReset");
    $monitor("%t\t%b\t\t\t%b\t%b", $time, count, clk, rst);
    $finish; // Terminar la simulación
end

endmodule
