This program is meant to help you understand how interaction between the symbols linked
into the assembly object are also accessible from C programs.
It's important to note that such linkage and access availability is possible due to the
ABI, so when in doubt the ABI should be consulted.


I've included the generated main.asm that contains cool things like call frame information
and other debug symbols. I've named this file main_att.asm so that it doesn't interfere
with building main.c
In order to produce this file you would run the following commands (which are also run by
the Makefile i made which can also be used as a template for future small ASM projects):
1. nasm -fwin32 file.asm
2. gcc main.c file.obj -o main_att.asm -S -O0

The file output by gcc with these default parameters will be in AT&T assembly syntax.


Passing parameters is an important part of the ABI. For example not only are the params
available on the stack but they may also be passed in via registers.
Here is the Microsoft documentation for how to pass params via registers and the order in
which registers are filled in: [Parameter passing](https://learn.microsoft.com/en-us/cpp/build/x64-calling-convention?view=msvc-180#parameter-passing) - see the table before the
exampoles.