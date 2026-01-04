    global _my_asm

    section .text

_my_asm:
    push ebp
    mov ebp, esp

    ; The disassembled main_out.asm shows how the caller allocates space
    ; for the structure on the stack and passes the address of that space
    ; -------------------------------------------------------------------------
    ; lea	eax, [esp+18]
	; mov	DWORD PTR [esp], eax
	; call	_my_asm
    ; -------------------------------------------------------------------------
    ; the allocation for this space is actually allocated a bit earlier before 
    ; the call to ___main (triple underscore) which is part of the C runtime 
    ; startup:
    ; -------------------------------------------------------------------------
    ; sub	esp, 48
	; call	___main
    ; -------------------------------------------------------------------------
    ; 48 is the smallest 16 multiple that can hold our structure of 30 bytes and
    ; accomodate for another call that will require another 4 bytes for the FP
    ; and the previous BP (4 + 4 + 30 = 38, next multiple of 16 is 48)

    mov eax, [ebp + 8]
    mov byte [eax + 3],  's'
    mov byte [eax    ],  'A' ; put 'A' in the first byte of the structure
    mov byte [eax + 1],  'n'
    mov byte [eax + 4],   0  ; null terminator
    mov byte [eax + 2],  'u'
    pop ebp
    ret