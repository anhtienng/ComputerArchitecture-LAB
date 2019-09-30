module sign_extend (immediate_16bit, immediate_32bit);

input  [15:0] immediate_16bit;
output [31:0] immediate_32bit;

assign immediate_32bit = { {16{immediate_16bit[15]}}, immediate_16bit[15:0]};
endmodule