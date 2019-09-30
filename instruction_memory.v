module instruction_memory(input [31:0]Add, output reg [31:0]Instr);
always @* begin
	case(Add)
		0: Instr <= 32'h2009fffd;
		4: Instr <= 32'h200a0004;
		8: Instr <= 32'h012a802a;
		12: Instr <= 32'h12000006;
		16: Instr <= 32'h012a8820;
		20: Instr <= 32'h01499022;
		24: Instr <= 32'h012a9824;
		28: Instr <= 32'h012aa025;
		32: Instr <= 32'h21290001;
		36: Instr <= 32'h08000002;
		40: Instr <= 32'h20090011;
		default: Instr <= 31'h0;
	endcase
end
endmodule 