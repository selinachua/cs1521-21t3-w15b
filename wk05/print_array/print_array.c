#include <stdio.h>

int main(void) {
    int i;
    int numbers[10] = {0,1,2,3,4,5,6,7,8,9};

    i = 0;
    while (i < 10) {
        // numbers[0] offset = 0
        // numbers[1] offset = 4
        // numbers[2] offset = 8
        // numbers[3] offset = 12
        // ...
        // numbers[i] offset = 4 * i
        int num = numbers[i];
        printf("%d\n", num);
        i++;
    }
    return 0;
}