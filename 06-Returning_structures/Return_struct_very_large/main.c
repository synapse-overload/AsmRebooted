#include <stdio.h>

struct test {
    char buf[30];
}; 
extern struct test my_asm();

int main(int argc, char *argv[]) {
    struct test a = my_asm();
    printf("my_asm result: %s", a.buf);
    return 0;
}