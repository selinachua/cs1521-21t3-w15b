        .data
numbers:
        .word   0, 0, 0, 0, 0, 0, 0, 0, 0, 0
####################################################
        .text
main:
# `int i` in $t0 
# `int num` in $t2
        li      $t0, 0                  # i = 0;
main__while:
        bge     $t0, 10, main__end      # while (i < 10)

        li      $v0, 5                  # $v0 = 5
        syscall                         # scanf("%d");
        move    $t2, $v0                # $t2 = $v0 

        mul     $t1, $t0, 4             # i * 4
        sw      $t2, numbers($t1)       # load from numbers + $t1

        addi    $t0, $t0, 1             # i++;
        j       main__while

main__end:
        li      $v0, 0
        jr      $ra