`include "helf_adder.sv"	
module sumador_comp(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    wire s1,c1,c2;
   
    helf_adder ms1 (a,b,s1,c1);
    helf_adder ms2 (s1,cin,sum,c2);
    assign cout = c1 | c2;
endmodule