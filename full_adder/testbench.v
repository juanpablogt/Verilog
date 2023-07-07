module testbench;
reg a,b,cin;
wire

full_adder h1 (s,c,a,b,cin);
initial
begin
    $monitor("time = %d, a = %b, b = %b, cin = %b, s = %b, c = %b", $time, a, b, cin, s, c);

    a = 0; b = 0; cin = 0;
    #10 a = 0; b = 0; cin = 1;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
    #10 $finish;
end
endmodule