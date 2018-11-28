module instruction_fetch_tb
(
);

reg clk;
reg reset;
wire [31:0] Instruction;

Instruction_Fetch if0(
	.clk(clk),
	.reset(reset),
	.Instruction(Instruction)
);

initial
	clk = 1'b0;
		
always
	#5 clk = ~clk;
	
initial
begin
	reset = 1'b0;
	#20 reset = 1'b1;		
end
endmodule