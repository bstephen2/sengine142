; Disassembly of file: pool.o
; Thu May 21 10:21:24 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro


global poolInitialize: function
global poolFreePool: function
global poolMalloc: function
global poolFree: function
global poolFreeAll: function

extern realloc                                          ; near
extern free                                             ; near
extern malloc                                           ; near


SECTION .text   align=16 execute                        ; section number 1, code

poolInitialize:; Function begin
        push    ebx                                     ; 0000 _ 53
        mov     eax, 4                                  ; 0001 _ B8, 00000004
        sub     esp, 24                                 ; 0006 _ 83. EC, 18
        mov     ecx, dword [esp+24H]                    ; 0009 _ 8B. 4C 24, 24
        mov     ebx, dword [esp+20H]                    ; 000D _ 8B. 5C 24, 20
        mov     edx, dword [esp+28H]                    ; 0011 _ 8B. 54 24, 28
        cmp     ecx, 4                                  ; 0015 _ 83. F9, 04
        cmovnc  eax, ecx                                ; 0018 _ 0F 43. C1
        mov     dword [ebx+0CH], -1                     ; 001B _ C7. 43, 0C, FFFFFFFF
        mov     dword [ebx+4H], edx                     ; 0022 _ 89. 53, 04
        sub     edx, 1                                  ; 0025 _ 83. EA, 01
        mov     dword [ebx], eax                        ; 0028 _ 89. 03
        mov     dword [ebx+8H], edx                     ; 002A _ 89. 53, 08
        mov     dword [ebx+10H], 0                      ; 002D _ C7. 43, 10, 00000000
        mov     dword [ebx+14H], 1                      ; 0034 _ C7. 43, 14, 00000001
        mov     dword [esp], 4                          ; 003B _ C7. 04 24, 00000004
        call    malloc                                  ; 0042 _ E8, FFFFFFFC(rel)
        mov     dword [ebx+18H], eax                    ; 0047 _ 89. 43, 18
        mov     dword [eax], 0                          ; 004A _ C7. 00, 00000000
        add     esp, 24                                 ; 0050 _ 83. C4, 18
        pop     ebx                                     ; 0053 _ 5B
        ret                                             ; 0054 _ C3
; poolInitialize End of function

; Filling space: 0BH
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H, 8DH, 0BCH, 27H, 00H
;       db 00H, 00H, 00H

ALIGN   16

poolFreePool:; Function begin
        push    esi                                     ; 0060 _ 56
        push    ebx                                     ; 0061 _ 53
        sub     esp, 20                                 ; 0062 _ 83. EC, 14
        mov     esi, dword [esp+20H]                    ; 0065 _ 8B. 74 24, 20
        mov     eax, dword [esi+14H]                    ; 0069 _ 8B. 46, 14
        mov     edx, dword [esi+18H]                    ; 006C _ 8B. 56, 18
        test    eax, eax                                ; 006F _ 85. C0
        jz      ?_003                                   ; 0071 _ 74, 27
        mov     eax, dword [edx]                        ; 0073 _ 8B. 02
        test    eax, eax                                ; 0075 _ 85. C0
        jz      ?_003                                   ; 0077 _ 74, 21
        xor     ebx, ebx                                ; 0079 _ 31. DB
        jmp     ?_002                                   ; 007B _ EB, 0A

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_001:  mov     eax, dword [edx+ebx*4]                  ; 0080 _ 8B. 04 9A
        test    eax, eax                                ; 0083 _ 85. C0
        jz      ?_003                                   ; 0085 _ 74, 13
?_002:  mov     dword [esp], eax                        ; 0087 _ 89. 04 24
        add     ebx, 1                                  ; 008A _ 83. C3, 01
        call    free                                    ; 008D _ E8, FFFFFFFC(rel)
        cmp     dword [esi+14H], ebx                    ; 0092 _ 39. 5E, 14
        mov     edx, dword [esi+18H]                    ; 0095 _ 8B. 56, 18
        ja      ?_001                                   ; 0098 _ 77, E6
?_003:  mov     dword [esp+20H], edx                    ; 009A _ 89. 54 24, 20
        add     esp, 20                                 ; 009E _ 83. C4, 14
        pop     ebx                                     ; 00A1 _ 5B
        pop     esi                                     ; 00A2 _ 5E
        jmp     free                                    ; 00A3 _ E9, FFFFFFFC(rel)
; poolFreePool End of function

        nop                                             ; 00A8 _ 90
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8

poolMalloc:; Function begin
        push    ebp                                     ; 00B0 _ 55
        push    edi                                     ; 00B1 _ 57
        push    esi                                     ; 00B2 _ 56
        push    ebx                                     ; 00B3 _ 53
        sub     esp, 28                                 ; 00B4 _ 83. EC, 1C
        mov     ebx, dword [esp+30H]                    ; 00B7 _ 8B. 5C 24, 30
        mov     eax, dword [ebx+10H]                    ; 00BB _ 8B. 43, 10
        test    eax, eax                                ; 00BE _ 85. C0
        jz      ?_004                                   ; 00C0 _ 74, 0E
        mov     edx, dword [eax]                        ; 00C2 _ 8B. 10
        mov     dword [ebx+10H], edx                    ; 00C4 _ 89. 53, 10
        add     esp, 28                                 ; 00C7 _ 83. C4, 1C
        pop     ebx                                     ; 00CA _ 5B
        pop     esi                                     ; 00CB _ 5E
        pop     edi                                     ; 00CC _ 5F
        pop     ebp                                     ; 00CD _ 5D
        ret                                             ; 00CE _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_004:  mov     eax, dword [ebx+8H]                     ; 00D0 _ 8B. 43, 08
        lea     edx, [eax+1H]                           ; 00D3 _ 8D. 50, 01
        cmp     edx, dword [ebx+4H]                     ; 00D6 _ 3B. 53, 04
        mov     dword [ebx+8H], edx                     ; 00D9 _ 89. 53, 08
        jz      ?_006                                   ; 00DC _ 74, 22
        mov     eax, dword [ebx+18H]                    ; 00DE _ 8B. 43, 18
        mov     ecx, dword [ebx+0CH]                    ; 00E1 _ 8B. 4B, 0C
        mov     ecx, dword [eax+ecx*4]                  ; 00E4 _ 8B. 0C 88
        mov     eax, dword [ebx]                        ; 00E7 _ 8B. 03
?_005:  add     esp, 28                                 ; 00E9 _ 83. C4, 1C
        imul    eax, edx                                ; 00EC _ 0F AF. C2
        pop     ebx                                     ; 00EF _ 5B
        add     eax, ecx                                ; 00F0 _ 01. C8
        pop     esi                                     ; 00F2 _ 5E
        pop     edi                                     ; 00F3 _ 5F
        pop     ebp                                     ; 00F4 _ 5D
        ret                                             ; 00F5 _ C3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_006:  mov     eax, dword [ebx+0CH]                    ; 0100 _ 8B. 43, 0C
        mov     dword [ebx+8H], 0                       ; 0103 _ C7. 43, 08, 00000000
        add     eax, 1                                  ; 010A _ 83. C0, 01
        cmp     eax, dword [ebx+14H]                    ; 010D _ 3B. 43, 14
        mov     dword [ebx+0CH], eax                    ; 0110 _ 89. 43, 0C
        mov     esi, eax                                ; 0113 _ 89. C6
        jz      ?_008                                   ; 0115 _ 74, 13
?_007:  mov     eax, dword [ebx+18H]                    ; 0117 _ 8B. 43, 18
        lea     edi, [eax+esi*4]                        ; 011A _ 8D. 3C B0
        mov     ecx, dword [edi]                        ; 011D _ 8B. 0F
        test    ecx, ecx                                ; 011F _ 85. C9
        jz      ?_012                                   ; 0121 _ 74, 56
        mov     edx, dword [ebx+8H]                     ; 0123 _ 8B. 53, 08
        mov     eax, dword [ebx]                        ; 0126 _ 8B. 03
        jmp     ?_005                                   ; 0128 _ EB, BF

?_008:  lea     edx, [eax+eax]                          ; 012A _ 8D. 14 00
        shl     eax, 3                                  ; 012D _ C1. E0, 03
        mov     dword [ebx+14H], edx                    ; 0130 _ 89. 53, 14
        mov     dword [esp+4H], eax                     ; 0133 _ 89. 44 24, 04
        mov     eax, dword [ebx+18H]                    ; 0137 _ 8B. 43, 18
        mov     dword [esp], eax                        ; 013A _ 89. 04 24
        call    realloc                                 ; 013D _ E8, FFFFFFFC(rel)
        mov     esi, dword [ebx+14H]                    ; 0142 _ 8B. 73, 14
        mov     dword [ebx+18H], eax                    ; 0145 _ 89. 43, 18
        mov     edx, esi                                ; 0148 _ 89. F2
        shr     edx, 1                                  ; 014A _ D1. EA
        lea     ecx, [edx*4]                            ; 014C _ 8D. 0C 95, 00000000
        cmp     esi, edx                                ; 0153 _ 39. D6
        ja      ?_010                                   ; 0155 _ 77, 0C
        jmp     ?_011                                   ; 0157 _ EB, 1B

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_009:  mov     eax, dword [ebx+18H]                    ; 0160 _ 8B. 43, 18
?_010:  add     edx, 1                                  ; 0163 _ 83. C2, 01
        mov     dword [eax+ecx], 0                      ; 0166 _ C7. 04 08, 00000000
        add     ecx, 4                                  ; 016D _ 83. C1, 04
        cmp     edx, esi                                ; 0170 _ 39. F2
        jnz     ?_009                                   ; 0172 _ 75, EC
?_011:  mov     esi, dword [ebx+0CH]                    ; 0174 _ 8B. 73, 0C
        jmp     ?_007                                   ; 0177 _ EB, 9E
; poolMalloc End of function

?_012:  ; Local function
        mov     ebp, dword [ebx]                        ; 0179 _ 8B. 2B
        mov     eax, dword [ebx+4H]                     ; 017B _ 8B. 43, 04
        imul    eax, ebp                                ; 017E _ 0F AF. C5
        mov     dword [esp], eax                        ; 0181 _ 89. 04 24
        call    malloc                                  ; 0184 _ E8, FFFFFFFC(rel)
        mov     edx, dword [ebx+8H]                     ; 0189 _ 8B. 53, 08
        mov     dword [edi], eax                        ; 018C _ 89. 07
        mov     eax, dword [ebx+18H]                    ; 018E _ 8B. 43, 18
        mov     ecx, dword [eax+esi*4]                  ; 0191 _ 8B. 0C B0
        mov     eax, ebp                                ; 0194 _ 89. E8
        jmp     ?_005                                   ; 0196 _ E9, FFFFFF4E

        nop                                             ; 019B _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8

poolFree:; Function begin
        mov     edx, dword [esp+4H]                     ; 01A0 _ 8B. 54 24, 04
        mov     eax, dword [esp+8H]                     ; 01A4 _ 8B. 44 24, 08
        mov     ecx, dword [edx+10H]                    ; 01A8 _ 8B. 4A, 10
        mov     dword [edx+10H], eax                    ; 01AB _ 89. 42, 10
        mov     dword [eax], ecx                        ; 01AE _ 89. 08
        ret                                             ; 01B0 _ C3
; poolFree End of function

        jmp     poolFreeAll                             ; 01B1 _ EB, 0D

        nop                                             ; 01B3 _ 90
        nop                                             ; 01B4 _ 90
        nop                                             ; 01B5 _ 90
        nop                                             ; 01B6 _ 90
        nop                                             ; 01B7 _ 90
        nop                                             ; 01B8 _ 90
        nop                                             ; 01B9 _ 90
        nop                                             ; 01BA _ 90
        nop                                             ; 01BB _ 90
        nop                                             ; 01BC _ 90
        nop                                             ; 01BD _ 90
        nop                                             ; 01BE _ 90
        nop                                             ; 01BF _ 90

ALIGN   16
poolFreeAll:; Function begin
        mov     eax, dword [esp+4H]                     ; 01C0 _ 8B. 44 24, 04
        mov     ecx, dword [eax+4H]                     ; 01C4 _ 8B. 48, 04
        mov     dword [eax+0CH], -1                     ; 01C7 _ C7. 40, 0C, FFFFFFFF
        mov     dword [eax+10H], 0                      ; 01CE _ C7. 40, 10, 00000000
        lea     edx, [ecx-1H]                           ; 01D5 _ 8D. 51, FF
        mov     dword [eax+8H], edx                     ; 01D8 _ 89. 50, 08
        ret                                             ; 01DB _ C3
; poolFreeAll End of function


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .eh_frame align=4 noexecute                     ; section number 4, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 20H, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _  .......
        dd poolInitialize-$-20H                         ; 0020 _ 00000000 (rel)
        dd 00000055H, 080E4100H                         ; 0024 _ 85 135151872 
        dd 0E480283H, 0E4A0220H                         ; 002C _ 239600259 239731232 
        dd 0EC34108H, 00000004H                         ; 0034 _ 247677192 4 
        dd 00000028H, 00000040H                         ; 003C _ 40 64 
        dd poolInitialize-$+1CH                         ; 0044 _ 00000060 (rel)
        dd 00000048H, 080E4100H                         ; 0048 _ 72 135151872 
        dd 0E410286H, 4303830CH                         ; 0050 _ 239141510 1124303628 
        dd 0E7C200EH, 0EC3410CH                         ; 0058 _ 243015694 247677196 
        dd 0EC64108H, 00000004H                         ; 0060 _ 247873800 4 
        dd 00000050H, 0000006CH                         ; 0068 _ 80 108 
        dd poolInitialize-$+40H                         ; 0070 _ 000000B0 (rel)
        dd 000000EBH, 080E4100H                         ; 0074 _ 235 135151872 
        dd 0E410285H, 4103870CH                         ; 007C _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0084 _ 75894798 -2095837631 
        dd 300E4305H, 140E0A53H                         ; 008C _ 806241029 336464467 
        dd 100EC341H, 0C0EC641H                         ; 0094 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 009C _ 135186241 68076865 
        dd 0A5C0B42H, 0C344140EH                        ; 00A4 _ 173804354 -1018948594 
        dd 0C643100EH, 0C7410C0EH                       ; 00AC _ -968683506 -952038386 
        dd 0C541080EH, 0B4B040EH                        ; 00B4 _ -985593842 189465614 
        dd 00000010H, 000000C0H                         ; 00BC _ 16 192 
        dd poolInitialize-$+0DCH                        ; 00C4 _ 000001A0 (rel)
        dd 00000011H, 00000000H                         ; 00C8 _ 17 0 
        dd 00000010H, 000000D4H                         ; 00D0 _ 16 212 
        dd poolInitialize-$+0E8H                        ; 00D8 _ 000001C0 (rel)
        dd 0000001CH, 00000000H                         ; 00DC _ 28 0 


