`timescale 1ns / 1ps

module testbench_contador;

    reg clk;
    reg rst;
    wire [2:0] count;

    contador contador_inst (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Generar el reloj
    always #5 clk = ~clk;

    initial begin  
        // Iniciar la simulación VCD
        $dumpfile("contador.vcd");
        $dumpvars(0, testbench_contador);
        clk = 0;
        rst = 1;

        #10 rst = 0;
        #20;

      

        // Añadir una simulación de 100 unidades de tiempo (10ns)
        #100;

        // Mostrar valores durante la simulación
        $display("Tiempo\tValor del contador\tReloj\tReset");
        $monitor("%t\t%b\t\t\t%b\t%b", $time, count, clk, rst);

        $finish;
    end

endmodule
