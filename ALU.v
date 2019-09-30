module ALU(input [31:0]A, input [31:0]B, input [3:0]operation, output reg [31:0]result, output zero);
wire [31:0]add;
wire [31:0]subs;
wire [31:0]Binvert;
assign Binvert = ~B;
add_32_bit a(A, B, 1'b0, add, );
add_32_bit s(A, Binvert, 1'b1, subs, );
assign zero = (result == 32'b0)? 1 : 0;
always @* begin
	case(operation)
		4'b0000: result <= A & B; //and
		4'b0001: result <= A | B; //or
		4'b0010: result <= add; //add
		4'b0011: result <= subs; //subs
		4'b0111: result <= {31'b0, subs[31]}; // slt
		4'b0110: result <= (subs == 0)? 32'b0 : 32'b1; // A == B
		default: result <= 0;
	endcase
end
endmodule 