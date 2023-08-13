`timescale 1ns / 1ps
module tb_and;

reg x, y;
wire a;

// Instancia del módulo and
Cor or1 (x, y, a);

// Estímulos

initial begin
    // Iniciar la simulación VCD
    $dumpfile("and.vcd");
    $dumpvars(0, tb_and);
    
    x = 0; 
    y = 0;

    #5;

    x = 0;
    y = 1;

    #5;

    x = 1;
    y = 0;

    #5;

    x = 1;
    y = 1;

    #5;

    $display("x = %b, y = %b, a = %b", x, y, a);
    
    $finish; // Terminar la simulación
end

endmodule
