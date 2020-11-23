main:
        addi    sp,sp,-32
        sw      s0,28(sp)
        addi    s0,sp,32
        li      a5,20
        sw      a5,-24(s0)
        addi    a5,s0,-24
        sw      a5,-20(s0)
        li      a5,0
        mv      a0,a5
        lw      s0,28(sp)
        addi    sp,sp,32
        jr      ra
