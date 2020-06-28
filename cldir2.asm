; Disassembly of file: cldir2.o
; Thu May 21 10:29:46 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global class_direct_2: function

extern puts                                             ; near


SECTION .text   align=16 execute                        ; section number 1, code

class_direct_2:; Function begin
        mov     dword [esp+4H], ?_001                   ; 0000 _ C7. 44 24, 04, 00000000(d)
        jmp     puts                                    ; 0008 _ E9, FFFFFFFC(rel)
; class_direct_2 End of function


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .rodata.str1.1 align=1 noexecute                ; section number 4, const

?_001:                                                  ; byte
        db 52H, 45H, 41H, 44H, 59H, 20H, 54H, 4FH       ; 0000 _ READY TO
        db 20H, 43H, 4CH, 41H, 53H, 53H, 49H, 46H       ; 0008 _  CLASSIF
        db 59H, 00H                                     ; 0010 _ Y.


SECTION .eh_frame align=4 noexecute                     ; section number 5, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 10H, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd class_direct_2-$-20H                         ; 0020 _ 00000000 (rel)
        dd 0000000DH, 00000000H                         ; 0024 _ 13 0 


