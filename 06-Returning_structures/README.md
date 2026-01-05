Returning structures is straightforward as long as you know where to expect the results.

### Return_fits_eax_edx

For the simple case where a structure has an int and a char, or multiple chars, the
results will be grouped in registers EAX and EDX, as long as they fit. Once you
get more chars than 4 there will no longer be room in EDX so we move on to the case in
the other project directory.

### Return_struct_very_large

This program teaches you how to use disassembly to make sense of what the compiler does when you return a larger struct.
The esssential command to observe what the C compiler expects is (added option to 
output in intel assembly syntax, no more AT&T):
```
gcc main.c -o main_out.asm -S -O0 -masm=intel
```