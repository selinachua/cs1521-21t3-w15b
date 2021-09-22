/**
 * Program that checks if a number is odd using bitwise operations.
 */

#include <stdio.h>

int is_odd(int num);

int main(void) {
    printf("Please enter a number: ");
    int num = 0;
    scanf("%d", &num);

    if (is_odd(num)) {
        printf("ODD\n");
    } else {
        printf("EVEN\n");
    }

    return 0;
}

/**
 * Function that checks if an int is odd or even using bit masking.
 * 
 * 0101 1010 -> even
 * 0101 1011 -> odd
 */
int is_odd(int num) {
    // extract the last bit
    // 1. create the mask 
    int mask = 1; // 0000 ... 0001
    // 2. value & mask
    int result = num & mask;

    if (result == 0) {
        return 0;
    }
    return 1;
}