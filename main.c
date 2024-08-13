#include "elfsize.h"
#include <stdio.h>

int main(int argc, char* argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <file>\n", argv[0]);
        return 1;
    }

    const char* fname = argv[1];
    ssize_t size = get_elf_size(fname);

    if (size == -1) {
        fprintf(stderr, "Error: unable to get ELF size for file '%s'\n", fname);
        return 1;
    }

    printf("%lld\n", (long long)size);

    return 0;
}
