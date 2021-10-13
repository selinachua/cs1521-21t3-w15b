        .text
main:
# row = $t0
# col = $t1
        li      $t0, 0          # int row = 0;
main__row_loop:
        bge     $t0, 6, main__row_loop_end      # while (row < 6)

        li      $t1, 0          # int col = 0;
main__col_loop:
        bge     $t1, 12, main__col_loop_end     # while (col < 12)

        mul     $t2, $t0, 12    # row * N_COLS
        add     $t2, $t2, $t1   # offset = row * N_COLS + col
        lb      $t3, flag($t2)  # Load byte from flag + $t2

        li      $v0, 11         # $v0 = 11
        move    $a0, $t3        # $a0 = $t3
        syscall                 # printf("%c", ch);

        addi    $t1, $t1, 1     # col++;
        j        main__col_loop #

main__col_loop_end:
        li      $v0, 11         # $v0 = 11
        li      $a0, '\n'       # $a0 = '\n'
        syscall                 # printf("\n");

        addi    $t0, $t0, 1     # row++;
        j       main__row_loop  #

main__row_loop_end:
        li      $v0, 0
        jr      $ra 

###########################
	.data
flag:
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
	.byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
	.byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'