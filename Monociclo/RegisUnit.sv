module UnidadDeRegistros(
    input  CLK,
    input  [4:0] AddressRs1, 
    input  [4:0] AddressRs2,
    input  [4:0] rd,
    input  [31:0] DataWr,
    input  RFWr,
    output  [31:0] RFrs1,
    output  [31:0] RFrs2
  );

    reg [31:0] RF[0:31];
    
    always @(posedge CLK) begin
        if(RFWr) begin
            RF[rd] <= DataWr;
        end
    end

    assign RFrs1 = RF[AddressRs1];
    assign RFrs2 = RF[AddressRs2];

endmodule
