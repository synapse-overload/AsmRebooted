; ------------------
; helloworld.asm
; This is a Win32 console program that writes "Hello, World" on one line
; and then exits. It needs to be linked with a C library.

; the start symbol of the binary should be pointed to the _main label
    global _main
; extern = symbol is declared externally and accessible for the rest of the program
; same as extern in C, but used for functions, while
; in C functions are extern by default unless specifying 
    extern _printf

    section .text
_main:
    push    message
    call    _printf
    ; clean up the stack by moving the pointer past the 4-byte last entry which
    ; contains the address of message
    add     esp, 4
    ret

message:
    ; yep the string contains the \n char
    db 'Hello, World', 10, 0