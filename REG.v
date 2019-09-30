module REG (REG_address1, REG_address2, REG_address_wr, REG_data_wb_in1, 
REG_write_1, clock, REG_data_out1, REG_data_out2); 

input  [4:0]  REG_address1;
input  [4:0]  REG_address2;
input  [4:0]  REG_address_wr;
input  [31:0] REG_data_wb_in1;
input 	      REG_write_1;
input         clock;
output reg [31:0] REG_data_out1;
output reg [31:0] REG_data_out2;

reg [31:0] register1;
reg [31:0] register2;
reg [31:0] register3;
reg [31:0] register4;
reg [31:0] register5;
reg [31:0] register6;
reg [31:0] register7;
reg [31:0] register8;
reg [31:0] register9;
reg [31:0] register10;
reg [31:0] register11;
reg [31:0] register12;
reg [31:0] register13;
reg [31:0] register14;
reg [31:0] register15;
reg [31:0] register16;
reg [31:0] register17;
reg [31:0] register18;
reg [31:0] register19;
reg [31:0] register20;
reg [31:0] register21;
reg [31:0] register22;
reg [31:0] register23;
reg [31:0] register24;
reg [31:0] register25;
reg [31:0] register26;
reg [31:0] register27;
reg [31:0] register28;
reg [31:0] register29;
reg [31:0] register30;
reg [31:0] register31;

always @(posedge clock)
   begin
      if(REG_write_1) begin
	 case(REG_address_wr)
32'd1: register1 <= REG_data_wb_in1;
32'd2: register2 <= REG_data_wb_in1;
32'd3: register3 <= REG_data_wb_in1;
32'd4: register4 <= REG_data_wb_in1;
32'd5: register5 <= REG_data_wb_in1;
32'd6: register6 <= REG_data_wb_in1;
32'd7: register7 <= REG_data_wb_in1;
32'd8: register8 <= REG_data_wb_in1;
32'd9: register9 <= REG_data_wb_in1;
32'd10: register10 <= REG_data_wb_in1;
32'd11: register11 <= REG_data_wb_in1;
32'd12: register12 <= REG_data_wb_in1;
32'd13: register13 <= REG_data_wb_in1;
32'd14: register14 <= REG_data_wb_in1;
32'd15: register15 <= REG_data_wb_in1;
32'd16: register16 <= REG_data_wb_in1;
32'd17: register17 <= REG_data_wb_in1;
32'd18: register18 <= REG_data_wb_in1;
32'd19: register19 <= REG_data_wb_in1;
32'd20: register20 <= REG_data_wb_in1;
32'd21: register21 <= REG_data_wb_in1;
32'd22: register22 <= REG_data_wb_in1;
32'd23: register23 <= REG_data_wb_in1;
32'd24: register24 <= REG_data_wb_in1;
32'd25: register25 <= REG_data_wb_in1;
32'd26: register26 <= REG_data_wb_in1;
32'd27: register27 <= REG_data_wb_in1;
32'd28: register28 <= REG_data_wb_in1;
32'd29: register29 <= REG_data_wb_in1;
32'd30: register30 <= REG_data_wb_in1;
32'd31: register31 <= REG_data_wb_in1;
default: register1 <= register1;
	endcase
	end
   end

always @* begin
	case(REG_address1)
		32'd0: REG_data_out1 <= 32'b0;
31'd1: REG_data_out1 <= register1;
31'd2: REG_data_out1 <= register2;
31'd3: REG_data_out1 <= register3;
31'd4: REG_data_out1 <= register4;
31'd5: REG_data_out1 <= register5;
31'd6: REG_data_out1 <= register6;
31'd7: REG_data_out1 <= register7;
31'd8: REG_data_out1 <= register8;
31'd9: REG_data_out1 <= register9;
31'd10: REG_data_out1 <= register10;
31'd11: REG_data_out1 <= register11;
31'd12: REG_data_out1 <= register12;
31'd13: REG_data_out1 <= register13;
31'd14: REG_data_out1 <= register14;
31'd15: REG_data_out1 <= register15;
31'd16: REG_data_out1 <= register16;
31'd17: REG_data_out1 <= register17;
31'd18: REG_data_out1 <= register18;
31'd19: REG_data_out1 <= register19;
31'd20: REG_data_out1 <= register20;
31'd21: REG_data_out1 <= register21;
31'd22: REG_data_out1 <= register22;
31'd23: REG_data_out1 <= register23;
31'd24: REG_data_out1 <= register24;
31'd25: REG_data_out1 <= register25;
31'd26: REG_data_out1 <= register26;
31'd27: REG_data_out1 <= register27;
31'd28: REG_data_out1 <= register28;
31'd29: REG_data_out1 <= register29;
31'd30: REG_data_out1 <= register30;
31'd31: REG_data_out1 <= register31;
	default: REG_data_out1 <= 32'b0;
	endcase
end

always @* begin
	case(REG_address2)
		32'd0: REG_data_out2 <= 32'b0;
31'd1: REG_data_out2 <= register1;
31'd2: REG_data_out2 <= register2;
31'd3: REG_data_out2 <= register3;
31'd4: REG_data_out2 <= register4;
31'd5: REG_data_out2 <= register5;
31'd6: REG_data_out2 <= register6;
31'd7: REG_data_out2 <= register7;
31'd8: REG_data_out2 <= register8;
31'd9: REG_data_out2 <= register9;
31'd10: REG_data_out2 <= register10;
31'd11: REG_data_out2 <= register11;
31'd12: REG_data_out2 <= register12;
31'd13: REG_data_out2 <= register13;
31'd14: REG_data_out2 <= register14;
31'd15: REG_data_out2 <= register15;
31'd16: REG_data_out2 <= register16;
31'd17: REG_data_out2 <= register17;
31'd18: REG_data_out2 <= register18;
31'd19: REG_data_out2 <= register19;
31'd20: REG_data_out2 <= register20;
31'd21: REG_data_out2 <= register21;
31'd22: REG_data_out2 <= register22;
31'd23: REG_data_out2 <= register23;
31'd24: REG_data_out2 <= register24;
31'd25: REG_data_out2 <= register25;
31'd26: REG_data_out2 <= register26;
31'd27: REG_data_out2 <= register27;
31'd28: REG_data_out2 <= register28;
31'd29: REG_data_out2 <= register29;
31'd30: REG_data_out2 <= register30;
31'd31: REG_data_out2 <= register31;
	default: REG_data_out2 <= 32'b0;
	endcase
end
endmodule
