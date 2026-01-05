#include <stdio.h>

struct test {
    char buf[30];
}; 
extern int my_asm(struct test t);

int main(int argc, char *argv[]) {
    struct test a;
    a.buf[0] = 'H';
    a.buf[1] = 'e';
    a.buf[2] = 'l';
    a.buf[3] = 'l';
    printf("my_asm returns: %c", (char)my_asm(a));
    
    return 0;
}