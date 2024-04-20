module UnidadDeControl(
    input logic [6:0] OpCode,
    input logic [2:0] F3,
    input logic [6:0] F7,
    output logic [2:0] ImmSrc,
    output logic ALUASrc,
    output logic ALUBSrc,
    output logic [3:0] ALUOp,
    output logic DMWr,
    output logic [2:0] DMCtrl,
    output logic [1:0] RUDataWrSrc,
    output logic RUWr,
    output logic [4:0] BrOp
  );
  
  always @(*) begin
      case(OpCode)
        7'b0110011: begin//type R
          ImmSrc = 3'bxxx;
          ALUASrc = 1'b0;
          ALUBSrc = 1'b0;
          ALUOp = {F7[5],F3};
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'b00;
          RUWr = 1'b1;
          BrOp =5'b00xxx;
        end
        7'b0010011: begin // Type I
          ImmSrc = 3'b000;
          ALUASrc = 1'b0;
          ALUBSrc = 1'b1;
          if (F3 == 101)
            ALUOp = {F7[5], F3}; // SRAI SRLI
          else
            ALUOp = {1'b0, F3};
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'b00;
          RUWr = 1'b1;
          BrOp =5'b00xxx;
        end
        7'b1100011: begin // Type B
          ImmSrc = 3'b101;
          ALUASrc = 1'b1;
          ALUBSrc = 1'b1;
          ALUOp = 4'b0000;
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'bxx;
          RUWr = 1'b0;
          BrOp = {2'b01, F3};
        end
        7'b0100011: begin // Type S
          ImmSrc = 3'b001;
          ALUASrc = 1'b0;
          ALUBSrc = 1'b1;
          ALUOp = 4'b0000;
          DMWr = 1'b1;
          DMCtrl = F3;
          RUDataWrSrc = 2'bxx;
          RUWr = 1'b0;
          BrOp = 5'b00xxx;
        end
        7'b1101111: begin // Type Jal
          ImmSrc = 3'b010;
          ALUASrc = 1'b1;
          ALUBSrc = 1'b1;
          ALUOp = 4'b0000;
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'b10;
          RUWr = 1'b1;
          BrOp = 5'b1xxxx;
        end
        7'b1100111: begin // Type Jalr
          ImmSrc = 3'b000;
          ALUASrc = 1'b0;
          ALUBSrc = 1'b1;
          ALUOp = 4'b0000;
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'b10;
          RUWr = 1'b1;
          BrOp = 5'b1xxxx;
        end
        7'b0110111: begin // Type U LUI
          ImmSrc = 3'b010;
          ALUASrc = 1'bx;
          ALUBSrc = 1'b1;
          ALUOp = 4'b1111;
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'b00;
          RUWr = 1'b1;
          BrOp =5'b00xxx;
        end
        7'b0010111: begin // Type U AUIPC
          ImmSrc = 3'b010;
          ALUASrc = 1'b1;
          ALUBSrc = 1'b1;
          ALUOp = 4'b0000;
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'b00;
          RUWr = 1'b1;
          BrOp =5'b00xxx;
        end
        7'b0000011: begin // Type I Loads
          ImmSrc = 3'b000;
          ALUASrc = 1'b0;
          ALUBSrc = 1'b1;
          ALUOp = 4'b0000;
          DMWr = 1'b0;
          DMCtrl = F3;
          RUDataWrSrc = 2'b01;
          RUWr = 1'b1;
          BrOp =5'b00xxx;
        end
        default: begin //En caso de no encontrar el Opcode
          ImmSrc = 3'bxxx;
          ALUASrc = 1'bx;
          ALUBSrc = 1'bx;
          ALUOp = 4'bxxxx;
          DMWr = 1'b0;
          DMCtrl = 3'bxxx;
          RUDataWrSrc = 2'bxx;
          RUWr = 1'b0;
          BrOp =5'b00xxx;
        end
      endcase
    end
  
  endmodule