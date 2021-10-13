        .data
#############################################
        .text
main:
# `int x` in $s0
# `int y` in $t1
# `int sum` in $t2
main__prologue:
        addi    $sp, $sp, -8    # updating $sp
        sw      $ra, 0($sp)     # store $ra to stackframe 
        # sw      $s0, 4($sp)     # store $s0 to stackframe

main__body:
        li      $s0, 10         # x = 10;
        li      $t1, 5          # y = 5;

        # 1. Set up the arguments ($a)
        # 2. Call jal 
        # 3. Use the return value ($v0)
        move    $a0, $s0        # $a0 = $s0 x
        move    $a1, $t1        # $a1 = $t1 y
        jal     add_nums        # add_nums(x, y);
        move    $t2, $v0        # $t2 = $v0 

        li      $v0, 1          # $v0 = 1
        move    $a0, $t2        # $a0 = $t2 sum
        syscall                 # printf("%d", sum);

        li      $v0, 1          # $v0 = 1
        move    $a0, $s0        # $a0 = $s0 x
        syscall                 # printf("%d", x);

        li      $v0, 0 

main__epilogue:
        # lw      $s0, 4($sp)     # load $s0 from stackframe
        lw      $ra, 0($sp)     # load $ra from stackframe 
        addi    $sp, $sp, 8     # update $sp

        jr      $ra             # return $v0;

add_nums:
# `int x` in $a0 
# `int y` in $a1
add_nums__prologue:
        addi    $sp, $sp, -4    # update $sp
        sw      $s0, 0($sp)     # store $s0 onto stackframe

add_nums__body:
        add     $s0, $a0, $a1   # $s0 = x + y;
        move    $v0, $s0        # $v0 = $s0 sum

add_nums__epilogue:
        lw      $s0, 0($sp)     # loading $s0 from stackframe 
        addi    $sp, $sp, 4     # update $sp

        jr      $ra             # return $v0;

func:
# Uses $s0, $s1, $s2, $s3
func__prologue:
        # set up stack frame
	addiu   $sp, $sp, -20
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)
        sw      $s1, 8($sp)
        sw      $s2, 12($sp)
        sw      $s3, 16($sp)