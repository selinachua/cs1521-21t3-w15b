main:
main__prologue:
        addi    $sp, $sp, -4
        sw      $ra, 0($sp)

main__body:
        # $t0: z
        li      $a0, 11         # $a0 = 11
        li      $a1, 13         # $a1 = 13
        li      $a2, 17         # $a2 = 17
        li      $a3, 19         # $a3 = 19
        jal     sum4            # sum(11, 13, 17, 19);
        move    $t0, $v0        # $t0 = $v0 

        li      $v0, 1          # $v0 = 1
        move    $a0, $t0        # $a0 = $t0 
        syscall                 # printf("%d", z);

        li      $v0, 11         # $v0 = 11
        li      $a0, '\n'       # $a0 = '\n'
        syscall                 # printf("\n");

        li      $v0, 0          # $v0 = 0
        jr      $ra             # return $v0;

main__epilogue:
        lw      $ra, 0($sp)
        addi    $sp, $sp, 4



sum4:
sum4__prologue:
        addi    $sp, $sp, -16
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)
        sw      $s1, 8($sp)
        sw      $s2, 12($sp)

sum4__body:
        # $a0: a
        # $a1: b
        # $a2: c
        # $a3: d
        move    $s1, $a2        # $s1 = c
        move    $s2, $a3        # $s2 = d

        jal     sum2            # sum2(a, b);
        move    $s0, $v0        # $s0 = $v0 

        move    $a0, $s1        # $a0 = c
        move    $a1, $s2        # $a1 = d
        jal     sum2            # sum2(c, d);
        move    $t0, $v0        # $t0 = $v0 

        move    $a0, $s0        # $a0 = e
        move    $a1, $t0        # $a1 = f
        jal     sum2            # sum2(e, f);

sum4__epilogue:
        lw      $s2, 12($sp)
        lw      $s1, 8($sp)
        lw      $s0, 4($sp)
        lw      $ra, 0($sp)
        addi    $sp, $sp, 16

        jr      $ra



sum2:
        # $a0: x
        # $a1: y
        add     $v0, $a0, $a1 
        jr      $ra