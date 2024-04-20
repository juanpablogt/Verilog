module MemoriaDeDatos(
  input logic DMWr,
  input logic [2:0] DmControl,
  input logic [31:0] Address,
  input logic signed [31:0] DataWr,
  output logic [31:0] DataRd
);

  always @(*) begin

    logic [7:0] DMemory [(2**8):0];
    $readmemb("memory.txt",DMemory);

    if(DMWr == 1)begin
      case(DmControl)
        0:DMemory[Address] <= DataWr[7:0];
        1:begin
          DMemory[Address] <= DataWr[15:8];
          DMemory[Address + 1] <= DataWr[7:0];
        end
        2:begin
          DMemory[Address] <= DataWr[31:23];
          DMemory[Address + 1] <= DataWr[23:16];
          DMemory[Address + 2] <= DataWr[15:8];
          DMemory[Address + 3] <= DataWr[7:0];
        end
        3:DMemory[Address] <= $unsigned(DataWr[7:0]);
        4:begin
          DMemory[Address] <= $unsigned(DataWr[15:8]);
          DMemory[Address + 1] <= $unsigned(DataWr[7:0]);
        end
        5:begin
          DMemory[Address] <= $unsigned(DataWr[31:23]);
          DMemory[Address + 1] <= $unsigned(DataWr[23:16]);
          DMemory[Address + 2] <= $unsigned(DataWr[15:8]);
          DMemory[Address + 3] <= $unsigned(DataWr[7:0]);
        end
      endcase
    end
    case(DmControl)
      0:DataRd <= {{24{DMemory[Address][7]}},DMemory[Address]};
      1:DataRd <= {{16{DMemory[Address][7]}},DMemory[Address],DMemory[Address + 1]};
      2:DataRd <= {DMemory[Address],DMemory[Address + 1],DMemory[Address + 2],DMemory[Address + 3]};
      3:DataRd <= {{24{1'b0}},DMemory[Address]};
      4:DataRd <= {{16{1'b0}},DMemory[Address],DMemory[Address + 1]};
      5:DataRd <= {DMemory[Address],DMemory[Address + 1],DMemory[Address + 2],DMemory[Address + 3]};
    endcase
  end

endmodule