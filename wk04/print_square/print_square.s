        .data 
prompt:
        .asciiz         "Enter a number: "

###################################################
        .text
main:
# `int x` in $t0
# `int y` in $t1
        li      $v0, 4          # $v0 = 4
        la      $a0, prompt     # $a0 = &prompt
        syscall                 # printf(prompt);

        li      $v0, 5          # $v0 = 5
        syscall                 # scanf("%d"); -> result is in $v0
        move    $t0, $v0        # $t0 = $v0 

        mul     $t1, $t0, $t0   # $t1 = $t0 * $t0 

        li      $v0, 1          # $v0 = 1
        move    $a0, $t1        # $a0 = $t1
        syscall                 # printf("%d", y);

        li      $v0, 11         # $v0 = 11
        li      $a0, '\n'       # $a0 = '\n'
        syscall                 # printf("\n");

        li      $v0, 0          # $v0 = 0;
        jr      $ra             # return $v0;