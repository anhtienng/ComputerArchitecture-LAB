module adder_1_bit(input A, input B, input Cin, output sum, output Cout);
assign sum = (A&~B&~Cin) | (~A&B&~Cin) | (~A&~B&Cin) | (A&B&Cin);
assign Cout = (A&B) | (B&Cin) | (A&Cin);
endmodule 