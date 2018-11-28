#compiling design modules
vlog Adder.v Instruction_Fetch.v Instruction_Memory.v Program_Counter.v instruction_fetch_tb.v 

#no optimization
vsim -novopt work.instruction_fetch_tb

#view waves
view wave

#adding waves

add wave \
{sim:/instruction_fetch_tb/clk } \
{sim:/instruction_fetch_tb/reset } \
{sim:/instruction_fetch_tb/Instruction } 

run 100ns