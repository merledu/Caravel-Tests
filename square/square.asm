main:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        li      a5,5
        sw      a5,-20(s0)
        lw      a0,-20(s0)
        jal     ra,square
        li      a5,0
        mv      a0,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        j       end
square:
        addi    sp,sp,-32
        sw      s0,28(sp)
        addi    s0,sp,32
        sw      a0,-20(s0)
        lw      a4,-20(s0)
        lw      a5,-20(s0)
        mul     a5,a4,a5
        mv      a0,a5
        lw      s0,28(sp)
        addi    sp,sp,32
        jr      ra
end:
