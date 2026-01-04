    global _my_asm

    section .text

_my_asm:
    push ebp
    mov ebp, esp

    mov eax, 438373 ; the ABI allows registers to be used where it can
    mov dl, 'A'    ; put the char in the lower byte of edx will be the equivalent of 
                    ; A is put in the char field b of the structure
 
    pop ebp
    ret