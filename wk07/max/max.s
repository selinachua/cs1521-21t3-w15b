max:
        # $a0: a[] -> &a[0]
        # $a1: length
        # $s0: first_element
        # $t0: max_so_far
max__prologue:
        addi    $sp, $sp, -8
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)

max__body:
        lw      $s0, ($a0)              # first_element = a[0];

max__if:
        bne     $a1, 1, max__else       # if (length == 1)
        move    $v0, $s0                #
        j       max__epilogue           # return first_element;

max__else:
        addi    $a0, $a0, 4             # $a0 = &a[1]
        sub     $a1, $a1, 1             # $a1 = length - 1
        jal     max                     # max(&a[1], length - 1);
        move    $t0, $v0                # $t0 = $v0

max__if2:
        ble     $s0, $t0, max__endif2   # if (first_element > max_so_far) 
        move    $t0, $s0                # $t0 = $s0 

max__endif2:
        move    $v0, $t0                # $v0 = $t0 

max__endif:

max__epilogue:
        lw      $s0, 4($sp)
        lw      $ra, 0($sp)
        addi    $sp, $sp, 8 

        jr      $ra                     # return;