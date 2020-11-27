# putting fibonacci series on GPIOS

li a6, 0x40010000 # initializing GPIO address

addi a5,zero,17

start:
	li a3,0
	li a2,0
	li a1,0
addi a1,zero,1

upx:
	add a0,a2,zero
up:
	addi a3,a3,1
	add a2,a0,a1
	beq a5,a3,start
	andi a4,a3,1
	sw   a2,0(a6)
beq a4,zero upx
add a1,a2,zero
jal up