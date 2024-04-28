module ALU(
    input signed [31:0] A,
    input signed [31:0] B,
    input [3:0] ALUOp,
    output signed [31:0] ALURes
  );

  always @(*) begin
    case(ALUOp)
      4'b0000: ALURes = A + B;
      4'b0001: ALURes = A - B;
      4'b0010: ALURes = A & B;
      4'b0011: ALURes = A | B;
      4'b0100: ALURes = A ^ B;
      4'b0101: ALURes = A << B;
      4'b0110: ALURes = A >> B;
      4'b0111: ALURes = A + 1;
      4'b1000: ALURes = A - 1;
      4'b1001: ALURes = ~A;
      4'b1010: ALURes = A + B;
      4'b1011: ALURes = A - B;
      4'b1100: ALURes = A & B;
      4'b1101: ALURes = A | B;
      4'b1110: ALURes = A ^ B;
      4'b1111: ALURes = A << B;
    endcase
  end
  
endmodule
