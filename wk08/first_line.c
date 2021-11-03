#include<stdio.h>

// ./first_line filename
int main(int argc, char **argv) {
    // 0. Check that there are correct # of args.
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }
    // 1. Open the file.
    FILE *stream = fopen(argv[1], "r");
    if (stream == NULL) {
        perror(argv[1]);
        return 1;
    }
    // 2. Read the first line and print it.
    int ch = fgetc(stream);
    while (ch != '\n' || ch != EOF) {
        fputc(ch, stdout);
        ch = fgetc(stream);
    }
    // 3. Close the file.
    fclose(stream);

    return 0;
}