        .data 
# int i = 10;
i:
        .word   10
# char ch = 's';
ch:
        .byte   's'

################################################
        .text
main:
        lw      $t0, i          # $t0 = i
        lb      $t1, ch         # $t1 = 's'