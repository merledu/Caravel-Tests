li s0,0x40010000
li x10,8
sw x10,0x30(s0)
addi x11,x1,8
sw x11,0x4(s0)
nop
nop
nop
nop
nop
nop
mret
nop
nop

// status //

//core properly jumps to the interrupt handler but there is bug in returning from handler.
