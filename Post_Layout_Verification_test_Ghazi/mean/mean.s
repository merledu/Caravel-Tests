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
li x15, 0x40010000 	# gpio base address
li x14, 0x10000000 	# dccm base address for ibtida  # for ghazi change it to 0x18000000
addi x16, x0, 4		# first number
addi x17, x0, 6		# second number
addi x18, x0, 8		# third number
sw x16, 0(x14)		# storing numbers in dccm
sw x17, 4(x14)		# storing numbers in dccm
sw x18, 8(x14)		# storing numbers in dccm
jal average
lw x24, 0xc(x14)
li x25, 0xff
sw x25, 0x1c(x15)
sw x24, 0x10(x15)	# expected output in gpio is 6
jal end
average:
	lw x19, 0(x14)
    lw x20, 4(x14)
    lw x21, 8(x14)
    add x20, x19, x20
    add x21, x20, x21
    li x22, 3
    div x23, x21, x22
    sw x23, 0xc(x14)	#saving the average
    ret
end:




