    global _my_asm

    section .text

_my_asm:
    ; On 32-bit Windows, the return value is placed in EAX
    ; Compared to 8086 we have "extended" registers here
    ; so AX becomes EAX
    push ebp ; the ebp = old base pointer, used for stack frames
    mov ebp, esp ; set up stack frame
    mov eax , [ebp + 8] ; get the first argument (argument is at ebp + 8)
    mov ecx , [ebp + 12] ; get the second argument (argument is at ebp + 12)
    add eax, ecx ; add the two arguments
    pop ebp
    ret