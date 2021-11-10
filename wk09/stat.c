#include <stdio.h>
#include <sys/_types/_s_ifmt.h>
#include <sys/stat.h>

// ./stat filename
int main(int argc, char **argv) {
    struct stat info;
    int success = stat(argv[1], &info);
    if (success == -1) {
        fprintf(stderr, "Stat on %s failed.\n", argv[1]);
        return 1;
    }

    // Print the size of the file called [filename].
    printf("Size of %s: %ld bytes\n", argv[1], (long)info.st_size);

    // Macros.
    // Check if the file is a directory.
    if (S_ISDIR(info.st_mode) == 1) {
        printf("%s is a directory.\n", argv[1]);
    }

    // Flags. 
    // Check if other has execute permission.
    if ((info.st_mode & S_IXOTH) != 0) {
        printf("Other has execute permission.\n");
    }

    return 0;
}