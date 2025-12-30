; The program is a DOS COM program thus
; it will need to start at 0x100h as it is required
; by this binary machine code format, it's not an EXE which 
; has a different layout
org 100h

; org is a directive not an instruction
; the program will be loaded at offset 0x100h
; CS:IP is the format that is used for setting the start
; of the program
; each COM program has a PSP (program segment prefix)
; which is created by DOS at the beginning of the memory segment
; allocated to every program (i.e. the structure used for managing the
; currently executing process)
; more info at: https://people.vts.su.ac.rs/~pmiki/ASM_old/ASM%20zbirka/Emu8086%20tutorial.pdf
; search for #MAKE_COM#
;
; When DOS loads a COM program, it:
;   - Allocates a memory segment
;   - Builds the PSP in the first 256 bytes (0-FFh)
;   - Loads your program code starting at offset 100h
;   - Sets CS:IP (Code Segment:Instruction Pointer) to point to offset 100h and begins execution

push ds

mov ax, 0
mov ds, ax
; remember the DOS program will use a segmented memory model
; this we need to have the IP in the second pair of bytes (little endian)
; and the code segment in the first pair of bytes which will be loaded in CS
mov [0x00], handle_int0        
mov [0x02], cs

pop ds

int 0x00

ret

handle_int0:
    mov ah, 0eh
    mov al, 'A'
    int 0x10
    iret


