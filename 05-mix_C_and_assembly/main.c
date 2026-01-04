#include <stdio.h>

// my_asm will be the assembly function that we're calling
extern int my_asm(int a, int b);
// NOTE: there is some convention that symbols defined in assembly with NASM
// will be preceded with an underscore (_) when called from C. This is why
// we declare my_asm as _my_asm in the assembly file.

int main(int argc, char *argv[]) {
    int r = my_asm(5, 10);
    printf("my_asm returned %i\n", r);
    return 0;
}