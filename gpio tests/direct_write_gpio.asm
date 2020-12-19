trap_handler_start:
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
jal trap_handler_start
li s0,0x40010000
li x10,4
li x11,4
sw x10,0x1c(s0)
sw x11,0x10(s0)

// test status//
//passed
//this test will directly write 1 to 3rd gpio pin

//machine code is available in direct_write_gpio.mach
