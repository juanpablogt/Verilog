`include "Alu.sv"
`include "branchUnit.sv"
`include "controlUnit.sv"
`include "DataMemory.sv"
`include "immGenerator.sv"
`include "instrMemory.sv"
`include "mux2_1.sv"
`include "mux3_1.sv"
`include "PC.sv"
`include "RegisUnit.sv"
`include "Sumador.sv"


module MiRiscV(
  input logic CLK
);
  logic [31:0] PCaddress;
  logic [31:0] Inst;
  logic [31:0] rs1;
  
  logic [31:0] rs2;
  logic [31:0] ImmExt;
  logic [31:0] aluA;
  logic [31:0] aluB;
  logic [31:0] ALUres;
  logic [31:0] DataRD;
  logic NextPCSrc;
  logic [31:0] NextPC;
  logic [31:0] PC4;
  logic RUWr;
  logic [2:0] ImmSrc;
  logic ALUASrc;
  logic ALUBSrc;
  logic [3:0] ALUOp;
  logic [4:0] BrOp;
  logic DMWr;
  logic [2:0] DMCtrl;
  logic [1:0] RUDataWrSrc;
  logic [31:0] DataWr;
  logic [4:0] addressRs1;
  logic [4:0] addressRs2;
  logic [4:0] addressRd;
  logic [6:0] opCode;
  logic [2:0] F3;
  logic [6:0] F7;
  
  
  assign opCode = Inst[6:0];
  assign F3 = Inst[14:12];
  assign F7 = Inst[31:25];
  
  assign addressRs1 = Inst[19:15];
  assign addressRs2 = Inst[24:20];
  assign addressRd = Inst[11:7];

  ProgramCounter PC(
    CLK,
    NextPC,
    PCaddress
  );
  
  Mas4 sumador(
    PCaddress,
    PC4
  );

  MemoriaDeInstrucciones InstructionMemory(
    PCaddress,
    Inst
  );

  UnidadDeControl ControlUnit(
    opCode,
    F3,
    F7,
    ImmSrc,
    ALUASrc,
    ALUBSrc,
    ALUOp,
    DMWr,
    DMCtrl,
    RUDataWrSrc,
    RUWr,
    BrOp
  );

  UnidadDeRegistros RegisterUnit(
    CLK,
    addressRs1, 
    addressRs2,
    addressRd,
    DataWr,
    RUWr,
    rs1,
    rs2
  );

  ImmGen ImmediateGenerator(
    Inst,
    ImmSrc,
    ImmExt
  );

  Mux2 MuxA(
    ALUASrc,
    rs1,
    PCaddress,
    aluA
  );
  
  Mux2 MuxB(
    ALUBSrc,
    rs2,
    ImmExt,
    aluB
  );
  
  BranchUnit BrUnit(
    rs1,
    rs2,
    BrOp,
    NextPCSrc
  );
  
  ALU mainALU(
    aluA,
    aluB,
    ALUOp,
    ALUres
  );
  
  Mux2 MuxBr(
    NextPCSrc,
    PC4,
    ALUres,
    NextPC
  );
  
  MemoriaDeDatos DataMemory(
    DMWr,
    DMCtrl,
    ALUres,
    rs2,
    DataRD
  );
  
  Mux3 muxDataWr(
    RUDataWrSrc,
    PC4,
    DataRD,
    ALUres,
    DataWr
  );
endmodule