        .data
####################################################
        .text
main:
# `int i` in $t0
        li      $t0, 0          # int i = 0;
do_label:
        addi    $t0, $t0, 1     # i++;

        li      $v0, 1          # $v0 = 1
        move    $a0, $t0        # $a0 = $t0 = i
        syscall                 # printf("%d", i);

        li      $v0, 11         # $v0 = 11
        li      $a0, '\n'       # $a0 = '\n'
        syscall                 # printf("\n");

while_label:
        blt     $t0, 10, do_label       # while (i < 10) goto do_label;

        li      $v0, 0
        jr      $ra