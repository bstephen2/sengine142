; Disassembly of file: class_util.o
; Mon Aug  3 16:44:24 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global setup_id_board: function


SECTION .text   align=16 execute                        ; section number 1, code

setup_id_board:; Function begin
        DB      0F3H                                    ; Prefix coded explicitly
        ret                                             ; 0000 _ F3: C3
; setup_id_board End of function


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .eh_frame align=4 noexecute                     ; section number 4, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 10H, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd setup_id_board-$-20H                         ; 0020 _ 00000000 (rel)
        dd 00000002H, 00000000H                         ; 0024 _ 2 0 


