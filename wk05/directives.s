# Practice how to convert C variables into MIPS data directives.
# Two types of variables:
# - uninitialised variable -> int x;     -> .space 
# - initialised variable   -> int x = 0; -> .word, .byte, etc.

# file.c -> ... -> file.s -> ... -> ./file
# STATIC ALLOCATION -> memory that is allocated at compile time
# - global variables
# - intialised arrays
# - strings 

	.data
# prompt = "Enter a number:"
prompt:
        .asciiz         "Enter a number:"
# int u; -> uninitialised -> .space 
u:
        .space          4
# int v = 42; -> initialised int -> .word
v:
        .word           42
# char w; -> uninitialised -> .space
w:
        .space          1
# char x = 'a'; -> initialised char -> .byte 
x:
        .byte           'a'
# double y; -> uninitialised -> .space
y:
        .space          8
# int z[20]; -> uninitialised -> .space 
z:
        .space          80
# int numbers[4] = {0, 1, 2, 3}; -> initialised -> .word 
numbers:
        .word           0, 1, 2, 3
# char chs = {'a', 'b'}; -> initialised -> .byte 
chs:
        .byte           'a', 'b'