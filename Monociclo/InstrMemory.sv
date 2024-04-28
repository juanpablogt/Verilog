module MemoriaDeInstrucciones(
    input  [31:0]Address,
    output  [31:0]Inst
  );

    reg [31:0] INS[0:1023];

    always @(Address) begin
        Inst = INS[Address];
    end

endmodule
