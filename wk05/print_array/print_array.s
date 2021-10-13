        .data
numbers:
        .word   0, 1, 2, 3, 4, 5, 6, 7, 8, 9
####################################################
        .text
main:
# `int i` in $t0 
        li      $t0, 0                  # i = 0;
main__while:
        bge     $t0, 10, main__end      # while (i < 10)

        mul     $t1, $t0, 4             # i * 4
        lw      $t2, numbers($t1)       # load from numbers + $t1

        li      $v0, 1                  # $v0 = 1
        move    $a0, $t2                # $a0 = $t2 num
        syscall                         # printf("%d", num);

        li      $v0, 11                 # $v0 = 11
        li      $a0, '\n'               # $a0 = '\n'
        syscall                         # printf("\n");

        addi    $t0, $t0, 1             # i++;
        j       main__while

main__end:
        li      $v0, 0
        jr      $ra