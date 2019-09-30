module testbenchMIPS();

reg [3:0]KEY;
reg [6:0]SW;
wire [31:0]ALU_result; 
wire [31:0]PC;
wire [31:0]Instr;
wire Branch;
wire RegWrite;
wire RegDst;
wire ALUSrc;
wire [1:0]ALUOp;
wire [31:0]REG_Output_1;
wire [31:0]ALUsource;
wire [3:0]ALU_control;
wire [31:0]Immediate;
wire [31:0]PC_next;
wire [31:0]PC_plus_offset;

MIPS m(KEY[3], KEY[2], KEY[1], SW[6:0], 
 ALU_result, 
 PC, 
 Instr, 
 Branch, 
 RegWrite, 
 RegDst, 
 ALUSrc, 
 ALUOp, REG_Output_1, ALUsource, ALU_control, Immediate, PC_next, PC_plus_offset);

initial begin
	KEY <= 4'b1011;
	SW <= 4'b0000;
	#2 KEY[2] <= 1;
end 

always begin
	#10 KEY[3] = !KEY[3];
end 

endmodule