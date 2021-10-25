#include <stdio.h>

int main(void) {
    int i, num;
    int numbers[10] = {0};

    i = 0;
    while (i < 10) {
        scanf("%d", &num);
        numbers[i] = num;
        i++;
    }

    return 0;
}