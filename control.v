module control(input [5:0]opcode, input [5:0]func, output reg Branch, output reg RegWrite, output reg RegDst, output reg ALUSrc, output reg [1:0]ALUOp, output reg jump);
always @* begin
	case(opcode)
		6'b000000:	begin // R format
					RegDst <= 1'b1;
					RegWrite <= 1'b1;
					ALUSrc <= 1'b0;
					ALUOp <= 2'b10;
					Branch <= 1'b0;
					jump <= 1'b0;
				end
		6'b000100:	begin // Beq
					RegDst <= 1'b1;
					RegWrite <= 1'b0;
					ALUSrc <= 1'b0;
					ALUOp <= 2'b01;
					Branch <= 1'b1;
					jump <= 1'b0;
				end
		6'b001000:	begin // addi
					RegDst <= 1'b0;
					RegWrite <= 1'b1;
					ALUSrc <= 1'b1;
					ALUOp <= 2'b00;
					Branch <= 1'b0;
					jump <= 1'b0;
				end
		6'b000010:	begin // jump
					RegDst <= 1'b0;
					RegWrite <= 1'b0;
					ALUSrc <= 1'b0;
					ALUOp <= 2'b00;
					Branch <= 1'b0;
					jump <= 1'b1;
				end
		default: 	begin
					RegDst <= 1'bx;
					RegWrite <= 1'bx;
					ALUSrc <= 1'bx;
					ALUOp <= 2'bxx;
					Branch <= 1'bx;
					jump <= 1'bx;
				end
	endcase
end
endmodule 