module UnidadDeRegistros(
    input logic CLK,
    input logic [4:0] AddressRs1, 
    input logic [4:0] AddressRs2,
    input logic [4:0] rd,
    input logic [31:0] DataWr,
    input logic RFWr,
    output logic [31:0] RFrs1,
    output logic [31:0] RFrs2
  );
  
    logic [0:31] RF [31:0];
    
    initial begin
      $readmemb("registros.txt",RF);
    end
  
    assign RFrs1 = RF[AddressRs1];
    assign RFrs2 = RF[AddressRs2];
  
    always @(posedge CLK) begin
      if (rd != 0 && RFWr == 1)
        RF[rd] = DataWr;
    end
  
  endmodule