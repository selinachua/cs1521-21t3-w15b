// remove public write from specified as command line arguments if needed

#include <stdio.h>
#include <stdlib.h>
#include <sys/_types/_s_ifmt.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

void chmod_if_needed(char *pathname);

int main(int argc, char *argv[]) {
    for (int arg = 1; arg < argc; arg++) {
        chmod_if_needed(argv[arg]);
    }
    return 0;
}

// chmod a file if publically-writeable

void chmod_if_needed(char *pathname) {
    // 1. Get file metadata.

    // 2. Check if file is publically writable - if OTH can write.
  
    // 3. Remove OTH write permission using `chmod` function.

}