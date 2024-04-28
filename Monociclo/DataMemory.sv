module MemoriaDeDatos(
  input DMWr,
  input [2:0] DmControl,
  input [31:0] Address,
  input signed [31:0] DataWr,
  output [31:0] DataRd
);


  reg [31:0] Memoria[0:1023];

  always @(posedge DMWr) begin
    case(DmControl)
      3'b000: Memoria[Address] <= DataWr;
      3'b001: Memoria[Address] <= Memoria[Address] + DataWr;
      3'b010: Memoria[Address] <= Memoria[Address] - DataWr;
      3'b011: Memoria[Address] <= Memoria[Address] & DataWr;
      3'b100: Memoria[Address] <= Memoria[Address] | DataWr;
      3'b101: Memoria[Address] <= Memoria[Address] ^ DataWr;
      3'b110: Memoria[Address] <= Memoria[Address] << DataWr;
      3'b111: Memoria[Address] <= Memoria[Address] >> DataWr;
    endcase
  end

  assign DataRd = Memoria[Address];

endmodule 