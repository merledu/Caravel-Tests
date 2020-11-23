main:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        li      a5,7
        sw      a5,-20(s0)
        lw      a0,-20(s0)
        jal    ra,fact
        li      a5,0
        mv      a0,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        jr      ra
fact:
        addi    sp,sp,-48
        sw      s0,44(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        li      a5,1
        sw      a5,-20(s0)
        li      a5,1
        sw      a5,-24(s0)
.L5:
        lw      a4,-24(s0)
        lw      a5,-36(s0)
        bgt     a4,a5,.L4
        lw      a4,-20(s0)
        lw      a5,-24(s0)
        mul     a5,a4,a5
        sw      a5,-20(s0)
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
        j       .L5
.L4:
        nop
        mv      a0,a5
        lw      s0,44(sp)
        addi    sp,sp,48
        jr      ra
