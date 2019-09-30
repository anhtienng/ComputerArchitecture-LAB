module assignment(
input [3:0]KEY,
input [6:0]SW,
output [6:0]HEX0, 
output [6:0]HEX1, 
output [6:0]HEX2, 
output [6:0]HEX3, 
output [6:0]HEX4, 
output [6:0]HEX5, 
output [6:0]HEX6, 
output [6:0]HEX7,
output reg [3:0]LEDR);

wire [31:0]ALU_result; 
wire [31:0]PC; 
wire [31:0]Instr; 
wire Branch; 
wire RegWrite; 
wire RegDst; 
wire ALUSrc; 
wire [1:0]ALUOp;
reg [31:0] displace;
wire [31:0]REG_Output_1;
wire [31:0]ALUsource;
wire [3:0]ALU_control;
wire [31:0]Immediate;
wire [31:0]PC_next;
wire [31:0]PC_plus_offset;
MIPS(KEY[3], KEY[2], KEY[1], SW[6:0], 
 ALU_result, 
 PC, 
 Instr, 
 Branch, 
 RegWrite, 
 RegDst, 
 ALUSrc, 
 ALUOp, REG_Output_1, ALUsource, ALU_control, Immediate, PC_next, PC_plus_offset);
 
always @ * begin
	case (LEDR)
		4'b0000: displace <= PC;
		4'b0001: displace <= ALU_result;
		4'b0010: displace <= Instr;
		4'b0011: displace <= {31'b0,Branch};
		4'b0100: displace <= {31'b0,RegWrite};
		4'b0101: displace <= {31'b0,RegDst};
		4'b0110: displace <= {31'b0,ALUSrc};
		4'b0111: displace <= {30'b0,ALUOp};
		4'b1000: displace <= REG_Output_1;
		4'b1001: displace <= ALUsource;
		4'b1010: displace <= ALU_control;
		4'b1011: displace <= Immediate;
		4'b1100: displace <= PC_next;
		4'b1101: displace <= PC_plus_offset;
	endcase
end

always @(negedge KEY[0], negedge KEY[2]) begin
	if(!KEY[2])
		LEDR <= 3'b0;
	else if(LEDR < 13) LEDR <= LEDR + 1;
	else LEDR <= 0;
end

hex_decoder(displace[3:0], HEX0);
hex_decoder(displace[7:4], HEX1);
hex_decoder(displace[11:8], HEX2);
hex_decoder(displace[15:12], HEX3);
hex_decoder(displace[19:16], HEX4);
hex_decoder(displace[23:20], HEX5);
hex_decoder(displace[27:24], HEX6);
hex_decoder(displace[31:28], HEX7);

endmodule 