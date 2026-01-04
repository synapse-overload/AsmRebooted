#include <stdio.h>

struct test {
    int a;
    char b;
};

extern struct test my_asm();

int main(int argc, char *argv[]) {
    struct test a = my_asm();
    printf("my_asm result a.a: %d a.b: %c\n", a.a, a.b);
    return 0;
}