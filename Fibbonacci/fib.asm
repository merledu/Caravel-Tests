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
li x10,1 # i
li x11,6 # n
li x12,0 # t1
li x13,1 # t2
li x14,0 # result
loop:
beq x10,x11,end
add x14,x13,x12
sw x14,0x1c(s0)
sw x14,0x10(s0) // writing on GPIOs
mv x12,x13
mv x13,x14
addi x10,x10,1
jal loop
end:

// status passed//
// test will write each fabonacii resultant term on GPIOs.
