`include "helf_adder.sv"	
module sumador_comp;
    input a,b,cin;
    output sum,cout;
    wire s1,c1,c2;
   
    helf_adder ms1 (a,b,s1,c1);
    helf_adder ms2 (a,s1,sum,c2);
    assign cout = c1 | c2;
endmodule