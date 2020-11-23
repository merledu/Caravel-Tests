main:
        addi    sp,sp,-48
        sw      s0,44(sp)
        addi    s0,sp,48
        sw      zero,-24(s0)
        li      a5,1
        sw      a5,-28(s0)
        li      a5,5
        sw      a5,-32(s0)
        li      a5,1
        sw      a5,-20(s0)
.L3:
        lw      a4,-20(s0)
        lw      a5,-36(s0)
        bgt     a4,a5,.L2
        lw      a4,-24(s0)
        lw      a5,-28(s0)
        add     a5,a4,a5
        sw      a5,-32(s0)
        lw      a5,-28(s0)
        sw      a5,-24(s0)
        lw      a5,-32(s0)
        sw      a5,-28(s0)
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
        j       .L3
.L2:
        li      a5,0
        mv      a0,a5
        lw      s0,44(sp)
        addi    sp,sp,48
        jr      ra
