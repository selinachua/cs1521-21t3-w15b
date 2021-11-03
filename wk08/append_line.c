#include<stdio.h>

int main(int argc, char **argv) {
    // 0. Check that there are correct # of args.
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }
    // 1. Open the file.
    FILE *stream = fopen(argv[1], "a");
    if (!stream) {
        perror(argv[1]);
        return 1;
    }
    // 2. Write input to file.
    char read[10];
    fgets(read, 10, stdin);
    fputs(read, stream);

    // 3. Close the file.
    fclose(stream);

    return 0;
}