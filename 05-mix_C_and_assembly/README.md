This program is meant to help you understand how interaction between the symbols linked
into the assembly object are also accessible from C programs.
It's important to note that such linkage and access availability is possible due to the
ABI, so when in doubt the ABI should be consulted.


I've included the generated main.asm that contains cool things like call frame information
and other debug symbols. I've named this file main_att.asm so that it doesn't interfere
with building main.c
In order to produce this file you would run the following commands (which are also run by
the Makefile i made which can also be used as a template for future small ASM projects)
1. nasm -fwin32 file.asm
2. gcc main.c file.obj -o main_att.asm -S -O0
The file output by gcc with these default parameters will be in AT&T assembly syntax. 