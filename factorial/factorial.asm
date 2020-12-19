start_trap_handler:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
jal start_trap_handler
li s0, 0x40010000
li x10,6
li x11,1
li x12,1
li x13,4
loop:
bge x12,x13,end
mul x11,x11,x12
addi x12,x12,1
jal loop
end:
sw x10,0x1c(s0)
sw x11, 0x10(s0)

// status passed //

//test will write factorial of 3 on gpio in this case the answer is 6 so it will write value 6 on gpio block.
// writing result on GPIO is just for testing the functionality because in netlist we only have this short way to verify quickly.
