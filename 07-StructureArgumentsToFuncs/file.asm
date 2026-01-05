    global _my_asm

    section .text

_my_asm:
    push ebp
    mov ebp, esp
    ; at the moment we've already pushed the eip and ebp onto the stack
    ; so the first argument is at esp + 8
    ; we can also refer this as ebp + 8 since ebp = esp at this point
    mov eax, [esp + 11]; Hell -> return in eax one char as the int

    pop ebp
    ret