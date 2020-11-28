li s0,0x40010000
li x10,8
li x11,8
sw x10,0x1c(s0)
sw x11,0x10(s0)

// test status//
//passed
//this test will directly write 1 to 4th gpio pin

//machine code is available in direct_write_gpio.mach
