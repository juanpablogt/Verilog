module MemoriaDeInstrucciones(
    input logic [31:0]Address,
    output logic [31:0]Inst
  );
    
    logic [7:0]INS[(2**8):0];
    
    initial begin
      $readmemb("instructions.txt",INS);
    end
    
    assign Inst = {INS[Address], INS[Address+1], INS[Address+2], INS[Address+3]};
  endmodule