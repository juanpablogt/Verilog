module full_adder (a, b, cin, sum, cout);
  input a, b, cin;
  output sum, cout;
  wire a, b, cin, sum, cout;
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);

endmodule