module MIPS(input CLOCK_50, input rst, input setPC, input [6:0]switch, 
output [31:0]ALU_result, 
output reg [31:0]PC, 
output [31:0]Instr, 
output Branch, 
output RegWrite, 
output RegDst, 
output ALUSrc, 
output [1:0]ALUOp,
output [31:0]REG_Output_1,
output [31:0]ALUsource,
output [3:0]ALU_control,
output [31:0]Immediate,
output [31:0]PC_next,
output [31:0]PC_plus_offset);

wire [31:0]PC_plus_4;
wire jump;
wire pc_sel;
wire zero;
wire [31:0]REG_Output_2;
wire [4:0]REG_Write_address;

assign pc_sel = zero & Branch;
control C (Instr[31:26], Instr[5:0], Branch, RegWrite, RegDst, ALUSrc, ALUOp, jump);
add_32_bit adder1 (PC, {32'b0100}, 1'b0, PC_plus_4, );
sign_extend signextend (Instr[15:0], Immediate);
add_32_bit adder2 (PC_plus_4, {Immediate[29:0],2'b00}, 1'b0, PC_plus_offset, );
mux_32bit m1 (PC_plus_4, PC_plus_offset, pc_sel, PC_next);
mux_32bit m2 (REG_Output_2, Immediate, ALUSrc, ALUsource);
mux_5bit m3 (Instr[20:16], Instr[15:11], RegDst, REG_Write_address);
ALU	ALU1(REG_Output_1, ALUsource, ALU_control, ALU_result, zero);
REG REG1 (Instr[25:21], Instr[20:16], REG_Write_address, ALU_result, RegWrite, CLOCK_50, REG_Output_1, REG_Output_2); 
ALU_CONTROL ac1(ALUOp , Instr[5:0], ALU_control);
instruction_memory im(PC, Instr);

always @ (posedge CLOCK_50, negedge rst, negedge setPC) begin
	if(!rst)
		PC <= 32'b0;
	else if(!setPC) begin
		case(switch[6:4])
			3'b000: PC <= {PC[31:4],switch[3:0]};
			3'b001: PC <= {PC[31:8],switch[3:0],PC[3:0]};
			3'b010: PC <= {PC[31:12],switch[3:0],PC[7:0]};
			3'b011: PC <= {PC[31:16],switch[3:0],PC[11:0]};
			3'b100: PC <= {PC[31:20],switch[3:0],PC[15:0]};
			3'b101: PC <= {PC[31:24],switch[3:0],PC[19:0]};
			3'b110: PC <= {PC[31:28],switch[3:0],PC[23:0]};
			3'b111: PC <= {switch[3:0],PC[27:0]};
		endcase
	end
	else if(!jump) PC <= PC_next;
	else PC <= {PC_next[31:28], Instr[25:0], 2'b00};
end

endmodule 