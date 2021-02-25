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
li s0, 0x40010000  # gpio base address
li x10,6
li x11,1
li x12,1
li x13,4
loop:
bgt x12,x13,end
mul x11,x11,x12
addi x12,x12,1
jal loop
end:
sw x10,0x1c(s0)
sw x11, 0x10(s0)




//test will write factorial of 4 on gpio in this case the answer is 24 so it will write value 18 on gpio block.
