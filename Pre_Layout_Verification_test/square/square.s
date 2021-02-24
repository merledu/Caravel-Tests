li x20, 0x40010000		# gpio base address
li x21, 0x10000000		# dccm base address for ibtida # for ghazi change it to 0x18000000
addi x15, x0, 4			# any number that needs to be squared
sw x15, 0(x21)
jal square
lw x17, 4(x21)
addi x18, x0, 0x000000FF
sw x18, 0x1c(x20)
sw x17, 0x10(x20)
jal end
square:
	lw x16, 0(x21)
    mul x16, x16, x16
    sw x16, 4(x21)
    ret
end:
