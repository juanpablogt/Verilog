module tb_and;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire c;

    // Instantiate the Unit Under Test (UUT)
    and uut (
        .a(a), 
        .b(b), 
        .c(c)
    );

    initial begin

        //vcd file
        $dumpfile("tb_and.vcd");
        $dumpvars(0,tb_and);

        // Initialize Inputs
        a = 0;
        b = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Add stimulus here
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 1;
        #100;
        a = 1;
        b = 0;
        #100;
        a = 0;
        b = 0;
        #100;

        $finish;
    end