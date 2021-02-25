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
li x8, 0x40010000 # gpio address
li x9, 0x18000000 # DCCM address for ghazi # for Ibtida change it to 0x10000000
li x7, 0xff
sw x7, 0x1c(x8)

li x5, 0
li x6, 15
sw x5, 0x4(x9)
j loop

loop:
lw x7, 0x4(x9)
addi x7, x7, 1
sw x7, 0x10(x8)
beq x7, x6, loop1
sw x7, 0x4(x9)
j loop

loop1:
sw x7, 0x10(x8)
li x7, 0
sw x7, 0x10(x8)

