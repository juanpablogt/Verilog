module BranchUnit(
  input logic signed [31:0] A,
  input logic signed [31:0] B,
  input logic [4:0] BrOp,
  output logic NextPCSrc
);
always @(*) begin
    if (BrOp[4])
      NextPCSrc = 1;
    else begin
      if (BrOp[3])begin
        case(BrOp[2:0])
          3'b000: NextPCSrc = (A == B);//BEQ
          3'b001: NextPCSrc = (A != B);//BNE
          3'b100: NextPCSrc = (A < B);//BLT
          3'b101: NextPCSrc = (A >= B);//BGE
          3'b110: NextPCSrc = ($unsigned(A) < $unsigned(B));//BLTU
          3'b111: NextPCSrc = ($unsigned(A) >= $unsigned(B));//BGEU
          default: NextPCSrc = 0;
        endcase
      end
      else
        NextPCSrc = 0;
    end
  end
endmodule