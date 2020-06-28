; Disassembly of file: genx.o
; Thu May 21 10:21:26 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro


global genxNextUnicodeChar: function
global genxSetUserData: function
global genxGetUserData: function
global genxSetAlloc: function
global genxSetDealloc: function
global genxGetAlloc: function
global genxGetDealloc: function
global genxDispose: function
global genxCheckText: function
global genxScrubText: function
global genxCharClass: function
global genxGetErrorMessage: function
global genxLastErrorMessage: function
global genxDeclareNamespace: function
global genxNew: function
global genxGetNamespacePrefix: function
global genxDeclareElement: function
global genxDeclareAttribute: function
global genxStartDocFile: function
global genxStartDocSender: function
global genxUnsetDefaultNamespace: function
global genxStartElement: function
global genxAddNamespace: function
global genxAddAttribute: function
global genxEndElement: function
global genxAddText: function
global genxAddBoundedText: function
global genxAddCountedText: function
global genxAddCharacter: function
global genxEndDocument: function
global genxComment: function
global genxPI: function
global genxStartElementLiteral: function
global genxAddAttributeLiteral: function
global genxGetVersion: function

extern fflush                                           ; near
extern fwrite                                           ; near
extern genxSetCharProps                                 ; near
extern __stack_chk_fail                                 ; near
extern __sprintf_chk                                    ; near
extern strcmp                                           ; near
extern strncpy                                          ; near
extern strcpy                                           ; near
extern strlen                                           ; near
extern malloc                                           ; near
extern free                                             ; near
extern fputs                                            ; near


SECTION .text   align=16 execute                        ; section number 1, code

sendx:  ; Local function
        push    ebx                                     ; 0000 _ 53
        sub     esp, 24                                 ; 0001 _ 83. EC, 18
        mov     ebx, dword [eax+4H]                     ; 0004 _ 8B. 58, 04
        test    ebx, ebx                                ; 0007 _ 85. DB
        jz      ?_0001                                  ; 0009 _ 74, 15
        mov     dword [esp+4H], edx                     ; 000B _ 89. 54 24, 04
        mov     eax, dword [eax+10010H]                 ; 000F _ 8B. 80, 00010010
        mov     dword [esp], eax                        ; 0015 _ 89. 04 24
        call    near [ebx]                              ; 0018 _ FF. 13
        add     esp, 24                                 ; 001A _ 83. C4, 18
        pop     ebx                                     ; 001D _ 5B
        ret                                             ; 001E _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0001: mov     eax, dword [eax]                        ; 0020 _ 8B. 00
        mov     dword [esp], edx                        ; 0022 _ 89. 14 24
        mov     dword [esp+4H], eax                     ; 0025 _ 89. 44 24, 04
        call    fputs                                   ; 0029 _ E8, FFFFFFFC(rel)
        mov     edx, eax                                ; 002E _ 89. C2
        mov     eax, 10                                 ; 0030 _ B8, 0000000A
        cmp     edx, -1                                 ; 0035 _ 83. FA, FF
        cmovne  eax, ebx                                ; 0038 _ 0F 45. C3
        add     esp, 24                                 ; 003B _ 83. C4, 18
        pop     ebx                                     ; 003E _ 5B
        ret                                             ; 003F _ C3

listAppend:; Local function
        push    ebp                                     ; 0040 _ 55
        mov     ebp, edx                                ; 0041 _ 89. D5
        push    edi                                     ; 0043 _ 57
        push    esi                                     ; 0044 _ 56
        push    ebx                                     ; 0045 _ 53
        mov     ebx, eax                                ; 0046 _ 89. C3
        sub     esp, 28                                 ; 0048 _ 83. EC, 1C
        mov     esi, dword [eax+4H]                     ; 004B _ 8B. 70, 04
        mov     eax, dword [eax+8H]                     ; 004E _ 8B. 40, 08
        cmp     esi, eax                                ; 0051 _ 39. C6
        jge     ?_0004                                  ; 0053 _ 7D, 1B
        mov     edi, dword [ebx+0CH]                    ; 0055 _ 8B. 7B, 0C
?_0002: lea     eax, [esi+1H]                           ; 0058 _ 8D. 46, 01
        mov     dword [ebx+4H], eax                     ; 005B _ 89. 43, 04
        xor     eax, eax                                ; 005E _ 31. C0
        mov     dword [edi+esi*4], ebp                  ; 0060 _ 89. 2C B7
?_0003: add     esp, 28                                 ; 0063 _ 83. C4, 1C
        pop     ebx                                     ; 0066 _ 5B
        pop     esi                                     ; 0067 _ 5E
        pop     edi                                     ; 0068 _ 5F
        pop     ebp                                     ; 0069 _ 5D
        ret                                             ; 006A _ C3

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0004: lea     edx, [eax+eax]                          ; 0070 _ 8D. 14 00
        shl     eax, 3                                  ; 0073 _ C1. E0, 03
        mov     dword [ebx+8H], edx                     ; 0076 _ 89. 53, 08
        mov     edx, dword [ebx]                        ; 0079 _ 8B. 13
        mov     ecx, dword [edx+10010H]                 ; 007B _ 8B. 8A, 00010010
        mov     edx, dword [edx+10228H]                 ; 0081 _ 8B. 92, 00010228
        test    edx, edx                                ; 0087 _ 85. D2
        je      ?_0010                                  ; 0089 _ 0F 84, 00000081
        mov     dword [esp+4H], eax                     ; 008F _ 89. 44 24, 04
        mov     dword [esp], ecx                        ; 0093 _ 89. 0C 24
        call    edx                                     ; 0096 _ FF. D2
        mov     edi, eax                                ; 0098 _ 89. C7
?_0005: test    edi, edi                                ; 009A _ 85. FF
; Note: Immediate operand could be made smaller by sign extension
        je      ?_0011                                  ; 009C _ 0F 84, 0000007E
        mov     esi, dword [ebx+4H]                     ; 00A2 _ 8B. 73, 04
        xor     ecx, ecx                                ; 00A5 _ 31. C9
        lea     eax, [esi*4]                            ; 00A7 _ 8D. 04 B5, 00000000
        test    esi, esi                                ; 00AE _ 85. F6
        jle     ?_0007                                  ; 00B0 _ 7E, 16
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0006: mov     edx, dword [ebx+0CH]                    ; 00B8 _ 8B. 53, 0C
        mov     edx, dword [edx+ecx]                    ; 00BB _ 8B. 14 0A
        mov     dword [edi+ecx], edx                    ; 00BE _ 89. 14 0F
        add     ecx, 4                                  ; 00C1 _ 83. C1, 04
        cmp     ecx, eax                                ; 00C4 _ 39. C1
        jnz     ?_0006                                  ; 00C6 _ 75, F0
?_0007: mov     eax, dword [ebx]                        ; 00C8 _ 8B. 03
        mov     ecx, dword [ebx+0CH]                    ; 00CA _ 8B. 4B, 0C
        mov     edx, dword [eax+1022CH]                 ; 00CD _ 8B. 90, 0001022C
        test    edx, edx                                ; 00D3 _ 85. D2
        jz      ?_0009                                  ; 00D5 _ 74, 21
        mov     dword [esp+4H], ecx                     ; 00D7 _ 89. 4C 24, 04
        mov     eax, dword [eax+10010H]                 ; 00DB _ 8B. 80, 00010010
        mov     dword [esp], eax                        ; 00E1 _ 89. 04 24
        call    edx                                     ; 00E4 _ FF. D2
        mov     esi, dword [ebx+4H]                     ; 00E6 _ 8B. 73, 04
?_0008: mov     dword [ebx+0CH], edi                    ; 00E9 _ 89. 7B, 0C
        jmp     ?_0002                                  ; 00EC _ E9, FFFFFF67

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0009: mov     eax, dword [eax+10228H]                 ; 00F8 _ 8B. 80, 00010228
        test    eax, eax                                ; 00FE _ 85. C0
        jnz     ?_0008                                  ; 0100 _ 75, E7
        mov     dword [esp], ecx                        ; 0102 _ 89. 0C 24
        call    free                                    ; 0105 _ E8, FFFFFFFC(rel)
        mov     esi, dword [ebx+4H]                     ; 010A _ 8B. 73, 04
        jmp     ?_0008                                  ; 010D _ EB, DA

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0010: mov     dword [esp], eax                        ; 0110 _ 89. 04 24
        call    malloc                                  ; 0113 _ E8, FFFFFFFC(rel)
        mov     edi, eax                                ; 0118 _ 89. C7
        jmp     ?_0005                                  ; 011A _ E9, FFFFFF7B

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0011: mov     eax, 4                                  ; 0120 _ B8, 00000004
        jmp     ?_0003                                  ; 0125 _ E9, FFFFFF39

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8

checkExpand:; Local function
        push    esi                                     ; 0130 _ 56
        push    ebx                                     ; 0131 _ 53
        mov     ebx, eax                                ; 0132 _ 89. C3
        sub     esp, 20                                 ; 0134 _ 83. EC, 14
        mov     eax, dword [eax+8H]                     ; 0137 _ 8B. 40, 08
        cmp     dword [ebx+4H], eax                     ; 013A _ 39. 43, 04
        jge     ?_0013                                  ; 013D _ 7D, 11
        mov     eax, 1                                  ; 013F _ B8, 00000001
?_0012: add     esp, 20                                 ; 0144 _ 83. C4, 14
        pop     ebx                                     ; 0147 _ 5B
        pop     esi                                     ; 0148 _ 5E
        ret                                             ; 0149 _ C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0013: lea     edx, [eax+eax]                          ; 0150 _ 8D. 14 00
        shl     eax, 3                                  ; 0153 _ C1. E0, 03
        mov     dword [ebx+8H], edx                     ; 0156 _ 89. 53, 08
        mov     edx, dword [ebx]                        ; 0159 _ 8B. 13
        mov     ecx, dword [edx+10010H]                 ; 015B _ 8B. 8A, 00010010
        mov     edx, dword [edx+10228H]                 ; 0161 _ 8B. 92, 00010228
        test    edx, edx                                ; 0167 _ 85. D2
        jz      ?_0019                                  ; 0169 _ 74, 7D
        mov     dword [esp+4H], eax                     ; 016B _ 89. 44 24, 04
        mov     dword [esp], ecx                        ; 016F _ 89. 0C 24
        call    edx                                     ; 0172 _ FF. D2
        mov     esi, eax                                ; 0174 _ 89. C6
?_0014: test    esi, esi                                ; 0176 _ 85. F6
        jz      ?_0020                                  ; 0178 _ 74, 7E
        mov     ecx, dword [ebx+4H]                     ; 017A _ 8B. 4B, 04
        xor     edx, edx                                ; 017D _ 31. D2
        lea     eax, [ecx*4]                            ; 017F _ 8D. 04 8D, 00000000
        test    ecx, ecx                                ; 0186 _ 85. C9
        jle     ?_0016                                  ; 0188 _ 7E, 16
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0015: mov     ecx, dword [ebx+0CH]                    ; 0190 _ 8B. 4B, 0C
        mov     ecx, dword [ecx+edx]                    ; 0193 _ 8B. 0C 11
        mov     dword [esi+edx], ecx                    ; 0196 _ 89. 0C 16
        add     edx, 4                                  ; 0199 _ 83. C2, 04
        cmp     edx, eax                                ; 019C _ 39. C2
        jnz     ?_0015                                  ; 019E _ 75, F0
?_0016: mov     eax, dword [ebx]                        ; 01A0 _ 8B. 03
        mov     ecx, dword [ebx+0CH]                    ; 01A2 _ 8B. 4B, 0C
        mov     edx, dword [eax+1022CH]                 ; 01A5 _ 8B. 90, 0001022C
        test    edx, edx                                ; 01AB _ 85. D2
        jz      ?_0018                                  ; 01AD _ 74, 21
        mov     dword [esp+4H], ecx                     ; 01AF _ 89. 4C 24, 04
        mov     eax, dword [eax+10010H]                 ; 01B3 _ 8B. 80, 00010010
        mov     dword [esp], eax                        ; 01B9 _ 89. 04 24
        call    edx                                     ; 01BC _ FF. D2
?_0017: mov     dword [ebx+0CH], esi                    ; 01BE _ 89. 73, 0C
        add     esp, 20                                 ; 01C1 _ 83. C4, 14
        mov     eax, 1                                  ; 01C4 _ B8, 00000001
        pop     ebx                                     ; 01C9 _ 5B
        pop     esi                                     ; 01CA _ 5E
        ret                                             ; 01CB _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0018: mov     eax, dword [eax+10228H]                 ; 01D0 _ 8B. 80, 00010228
        test    eax, eax                                ; 01D6 _ 85. C0
        jnz     ?_0017                                  ; 01D8 _ 75, E4
        mov     dword [esp], ecx                        ; 01DA _ 89. 0C 24
        call    free                                    ; 01DD _ E8, FFFFFFFC(rel)
        jmp     ?_0017                                  ; 01E2 _ EB, DA

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0019: mov     dword [esp], eax                        ; 01E8 _ 89. 04 24
        call    malloc                                  ; 01EB _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 01F0 _ 89. C6
        jmp     ?_0014                                  ; 01F2 _ EB, 82

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0020: xor     eax, eax                                ; 01F8 _ 31. C0
        jmp     ?_0012                                  ; 01FA _ E9, FFFFFF45

        nop                                             ; 01FF _ 90

ALIGN   16
declareAttribute:; Local function
        push    ebp                                     ; 0200 _ 55
        mov     ebp, eax                                ; 0201 _ 89. C5
        mov     eax, edx                                ; 0203 _ 89. D0
        push    edi                                     ; 0205 _ 57
        push    esi                                     ; 0206 _ 56
        push    ebx                                     ; 0207 _ 53
        sub     esp, 44                                 ; 0208 _ 83. EC, 2C
        test    edx, edx                                ; 020B _ 85. D2
        mov     dword [ebp+10080H], edx                 ; 020D _ 89. 95, 00010080
        mov     edi, dword [ebp+10054H]                 ; 0213 _ 8B. BD, 00010054
        mov     dword [esp+1CH], edx                    ; 0219 _ 89. 54 24, 1C
        mov     dword [esp+18H], ecx                    ; 021D _ 89. 4C 24, 18
        mov     dword [ebp+1007CH], ecx                 ; 0221 _ 89. 8D, 0001007C
        mov     dword [esp+14H], edi                    ; 0227 _ 89. 7C 24, 14
        je      ?_0051                                  ; 022B _ 0F 84, 00000377
        mov     dword [ebp+10094H], 2                   ; 0231 _ C7. 85, 00010094, 00000002
        mov     edx, dword [ebp+10020H]                 ; 023B _ 8B. 95, 00010020
        cmp     dword [eax+14H], edx                    ; 0241 _ 39. 50, 14
        je      ?_0056                                  ; 0244 _ 0F 84, 000003D8
?_0021: mov     edi, dword [ebp+1004CH]                 ; 024A _ 8B. BD, 0001004C
        mov     esi, 4294967295                         ; 0250 _ BE, FFFFFFFF
?_0022: mov     eax, edi                                ; 0255 _ 89. F8
        sub     eax, esi                                ; 0257 _ 29. F0
        cmp     eax, 1                                  ; 0259 _ 83. F8, 01
        jle     ?_0025                                  ; 025C _ 7E, 40
?_0023: lea     eax, [edi+esi]                          ; 025E _ 8D. 04 37
        mov     ebx, eax                                ; 0261 _ 89. C3
        shr     ebx, 31                                 ; 0263 _ C1. EB, 1F
        add     ebx, eax                                ; 0266 _ 01. C3
        mov     eax, dword [esp+14H]                    ; 0268 _ 8B. 44 24, 14
        sar     ebx, 1                                  ; 026C _ D1. FB
        mov     edx, dword [eax+ebx*4]                  ; 026E _ 8B. 14 98
        mov     eax, dword [ebp+10094H]                 ; 0271 _ 8B. 85, 00010094
        mov     ecx, dword [edx+1CH]                    ; 0277 _ 8B. 4A, 1C
        cmp     eax, ecx                                ; 027A _ 39. C8
        je      ?_0038                                  ; 027C _ 0F 84, 000001EE
        test    eax, eax                                ; 0282 _ 85. C0
        je      ?_0037                                  ; 0284 _ 0F 84, 000001DE
        cmp     eax, 1                                  ; 028A _ 83. F8, 01
        je      ?_0036                                  ; 028D _ 0F 84, 000001CD
?_0024: mov     esi, ebx                                ; 0293 _ 89. DE
        mov     eax, edi                                ; 0295 _ 89. F8
        sub     eax, esi                                ; 0297 _ 29. F0
        cmp     eax, 1                                  ; 0299 _ 83. F8, 01
        jg      ?_0023                                  ; 029C _ 7F, C0
?_0025: cmp     esi, -1                                 ; 029E _ 83. FE, FF
        jz      ?_0026                                  ; 02A1 _ 74, 16
        mov     eax, dword [esp+14H]                    ; 02A3 _ 8B. 44 24, 14
        mov     ebx, dword [eax+esi*4]                  ; 02A7 _ 8B. 1C B0
        mov     eax, dword [ebp+10094H]                 ; 02AA _ 8B. 85, 00010094
        cmp     eax, dword [ebx+1CH]                    ; 02B0 _ 3B. 43, 1C
        je      ?_0042                                  ; 02B3 _ 0F 84, 00000207
?_0026: mov     eax, dword [ebp+10228H]                 ; 02B9 _ 8B. 85, 00010228
        mov     edx, dword [ebp+10010H]                 ; 02BF _ 8B. 95, 00010010
        test    eax, eax                                ; 02C5 _ 85. C0
        je      ?_0052                                  ; 02C7 _ 0F 84, 00000303
        mov     dword [esp+4H], 32                      ; 02CD _ C7. 44 24, 04, 00000020
        mov     dword [esp], edx                        ; 02D5 _ 89. 14 24
        call    eax                                     ; 02D8 _ FF. D0
        mov     ebx, eax                                ; 02DA _ 89. C3
?_0027: test    ebx, ebx                                ; 02DC _ 85. DB
        je      ?_0034                                  ; 02DE _ 0F 84, 0000015B
        mov     eax, dword [esp+1CH]                    ; 02E4 _ 8B. 44 24, 1C
        mov     dword [ebx], ebp                        ; 02E8 _ 89. 2B
        mov     dword [ebx+18H], 0                      ; 02EA _ C7. 43, 18, 00000000
        mov     dword [ebx+8H], eax                     ; 02F1 _ 89. 43, 08
        mov     eax, dword [ebp+10094H]                 ; 02F4 _ 8B. 85, 00010094
        mov     dword [ebx+1CH], eax                    ; 02FA _ 89. 43, 1C
        mov     eax, dword [esp+18H]                    ; 02FD _ 8B. 44 24, 18
        mov     dword [esp], eax                        ; 0301 _ 89. 04 24
        call    strlen                                  ; 0304 _ E8, FFFFFFFC(rel)
        mov     edx, dword [ebp+10228H]                 ; 0309 _ 8B. 95, 00010228
        add     eax, 1                                  ; 030F _ 83. C0, 01
        mov     ecx, dword [ebp+10010H]                 ; 0312 _ 8B. 8D, 00010010
        test    edx, edx                                ; 0318 _ 85. D2
        je      ?_0048                                  ; 031A _ 0F 84, 00000240
        mov     dword [esp+4H], eax                     ; 0320 _ 89. 44 24, 04
        mov     dword [esp], ecx                        ; 0324 _ 89. 0C 24
        call    edx                                     ; 0327 _ FF. D2
        mov     esi, eax                                ; 0329 _ 89. C6
?_0028: test    esi, esi                                ; 032B _ 85. F6
        je      ?_0055                                  ; 032D _ 0F 84, 000002E3
        mov     eax, dword [esp+18H]                    ; 0333 _ 8B. 44 24, 18
        mov     dword [esp], esi                        ; 0337 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 033A _ 89. 44 24, 04
        call    strcpy                                  ; 033E _ E8, FFFFFFFC(rel)
        mov     dword [ebx+4H], esi                     ; 0343 _ 89. 73, 04
        mov     dword [ebx+14H], 100                    ; 0346 _ C7. 43, 14, 00000064
        mov     eax, dword [ebp+10228H]                 ; 034D _ 8B. 85, 00010228
        mov     edx, dword [ebp+10010H]                 ; 0353 _ 8B. 95, 00010010
        test    eax, eax                                ; 0359 _ 85. C0
        je      ?_0053                                  ; 035B _ 0F 84, 00000287
        mov     dword [esp+4H], 100                     ; 0361 _ C7. 44 24, 04, 00000064
        mov     dword [esp], edx                        ; 0369 _ 89. 14 24
        call    eax                                     ; 036C _ FF. D0
        mov     esi, eax                                ; 036E _ 89. C6
?_0029: test    esi, esi                                ; 0370 _ 85. F6
        mov     dword [ebx+0CH], esi                    ; 0372 _ 89. 73, 0C
        je      ?_0034                                  ; 0375 _ 0F 84, 000000C4
        mov     edx, dword [esp+40H]                    ; 037B _ 8B. 54 24, 40
        mov     dword [ebx+10H], 0                      ; 037F _ C7. 43, 10, 00000000
        mov     dword [ebp+8H], 0                       ; 0386 _ C7. 45, 08, 00000000
        test    edx, edx                                ; 038D _ 85. D2
        je      ?_0033                                  ; 038F _ 0F 84, 00000097
        mov     eax, dword [esp+40H]                    ; 0395 _ 8B. 44 24, 40
        mov     dword [esp], eax                        ; 0399 _ 89. 04 24
        call    strlen                                  ; 039C _ E8, FFFFFFFC(rel)
        cmp     eax, dword [ebx+14H]                    ; 03A1 _ 3B. 43, 14
        jl      ?_0032                                  ; 03A4 _ 7C, 6F
        add     eax, eax                                ; 03A6 _ 01. C0
        mov     dword [ebx+14H], eax                    ; 03A8 _ 89. 43, 14
        mov     edx, dword [ebp+10228H]                 ; 03AB _ 8B. 95, 00010228
        mov     ecx, dword [ebp+10010H]                 ; 03B1 _ 8B. 8D, 00010010
        test    edx, edx                                ; 03B7 _ 85. D2
        je      ?_0050                                  ; 03B9 _ 0F 84, 000001D6
        mov     dword [esp+4H], eax                     ; 03BF _ 89. 44 24, 04
        mov     dword [esp], ecx                        ; 03C3 _ 89. 0C 24
        call    edx                                     ; 03C6 _ FF. D2
        mov     esi, eax                                ; 03C8 _ 89. C6
?_0030: test    esi, esi                                ; 03CA _ 85. F6
        jz      ?_0034                                  ; 03CC _ 74, 71
        mov     eax, dword [ebx+10H]                    ; 03CE _ 8B. 43, 10
        mov     dword [esp+8H], eax                     ; 03D1 _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 03D5 _ 8B. 43, 0C
        mov     dword [esp], esi                        ; 03D8 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 03DB _ 89. 44 24, 04
        call    strncpy                                 ; 03DF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 03E4 _ 8B. 43, 10
        mov     byte [esi+eax], 0                       ; 03E7 _ C6. 04 06, 00
        mov     eax, dword [ebp+1022CH]                 ; 03EB _ 8B. 85, 0001022C
        mov     edx, dword [ebx+0CH]                    ; 03F1 _ 8B. 53, 0C
        test    eax, eax                                ; 03F4 _ 85. C0
        je      ?_0054                                  ; 03F6 _ 0F 84, 000001FF
        mov     dword [esp+4H], edx                     ; 03FC _ 89. 54 24, 04
        mov     edx, dword [ebp+10010H]                 ; 0400 _ 8B. 95, 00010010
        mov     dword [esp], edx                        ; 0406 _ 89. 14 24
        call    eax                                     ; 0409 _ FF. D0
?_0031: mov     dword [ebx+0CH], esi                    ; 040B _ 89. 73, 0C
        mov     dword [ebp+8H], 0                       ; 040E _ C7. 45, 08, 00000000
?_0032: mov     eax, dword [esp+40H]                    ; 0415 _ 8B. 44 24, 40
        mov     dword [esp], esi                        ; 0419 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 041C _ 89. 44 24, 04
        call    strcpy                                  ; 0420 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+8H], 0                       ; 0425 _ C7. 45, 08, 00000000
?_0033: lea     eax, [ebp+10048H]                       ; 042C _ 8D. 85, 00010048
        call    checkExpand                             ; 0432 _ E8, FFFFFCF9
        test    eax, eax                                ; 0437 _ 85. C0
        jne     ?_0045                                  ; 0439 _ 0F 85, 000000B1
?_0034: mov     dword [ebp+8H], 4                       ; 043F _ C7. 45, 08, 00000004
        mov     eax, 4                                  ; 0446 _ B8, 00000004
?_0035: mov     edi, dword [esp+44H]                    ; 044B _ 8B. 7C 24, 44
        mov     dword [edi], eax                        ; 044F _ 89. 07
        add     esp, 44                                 ; 0451 _ 83. C4, 2C
        xor     eax, eax                                ; 0454 _ 31. C0
        pop     ebx                                     ; 0456 _ 5B
        pop     esi                                     ; 0457 _ 5E
        pop     edi                                     ; 0458 _ 5F
        pop     ebp                                     ; 0459 _ 5D
        ret                                             ; 045A _ C3

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0036: test    ecx, ecx                                ; 0460 _ 85. C9
        je      ?_0024                                  ; 0462 _ 0F 84, FFFFFE2B
?_0037: mov     edi, ebx                                ; 0468 _ 89. DF
        jmp     ?_0022                                  ; 046A _ E9, FFFFFDE6

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0038: cmp     eax, 2                                  ; 0470 _ 83. F8, 02
        jz      ?_0041                                  ; 0473 _ 74, 2B
?_0039: mov     eax, dword [edx+4H]                     ; 0475 _ 8B. 42, 04
        mov     dword [esp+4H], eax                     ; 0478 _ 89. 44 24, 04
        mov     eax, dword [esp+18H]                    ; 047C _ 8B. 44 24, 18
        mov     dword [esp], eax                        ; 0480 _ 89. 04 24
        call    strcmp                                  ; 0483 _ E8, FFFFFFFC(rel)
?_0040: test    eax, eax                                ; 0488 _ 85. C0
        jns     ?_0024                                  ; 048A _ 0F 89, FFFFFE03
        mov     edi, ebx                                ; 0490 _ 89. DF
        jmp     ?_0022                                  ; 0492 _ E9, FFFFFDBE

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0041: mov     eax, dword [edx+8H]                     ; 04A0 _ 8B. 42, 08
        mov     ecx, dword [esp+1CH]                    ; 04A3 _ 8B. 4C 24, 1C
        cmp     ecx, eax                                ; 04A7 _ 39. C1
        jz      ?_0039                                  ; 04A9 _ 74, CA
        mov     eax, dword [eax+4H]                     ; 04AB _ 8B. 40, 04
        mov     dword [esp+4H], eax                     ; 04AE _ 89. 44 24, 04
        mov     eax, dword [ecx+4H]                     ; 04B2 _ 8B. 41, 04
        mov     dword [esp], eax                        ; 04B5 _ 89. 04 24
        call    strcmp                                  ; 04B8 _ E8, FFFFFFFC(rel)
        jmp     ?_0040                                  ; 04BD _ EB, C9

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0042: cmp     eax, 2                                  ; 04C0 _ 83. F8, 02
        je      ?_0049                                  ; 04C3 _ 0F 84, 000000A6
?_0043: mov     eax, dword [ebx+4H]                     ; 04C9 _ 8B. 43, 04
        mov     dword [esp+4H], eax                     ; 04CC _ 89. 44 24, 04
        mov     eax, dword [esp+18H]                    ; 04D0 _ 8B. 44 24, 18
        mov     dword [esp], eax                        ; 04D4 _ 89. 04 24
        call    strcmp                                  ; 04D7 _ E8, FFFFFFFC(rel)
?_0044: test    eax, eax                                ; 04DC _ 85. C0
        jne     ?_0026                                  ; 04DE _ 0F 85, FFFFFDD5
        add     esp, 44                                 ; 04E4 _ 83. C4, 2C
        mov     eax, ebx                                ; 04E7 _ 89. D8
        pop     ebx                                     ; 04E9 _ 5B
        pop     esi                                     ; 04EA _ 5E
        pop     edi                                     ; 04EB _ 5F
        pop     ebp                                     ; 04EC _ 5D
        ret                                             ; 04ED _ C3

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0045: mov     esi, dword [ebp+1004CH]                 ; 04F0 _ 8B. B5, 0001004C
        lea     eax, [esi*4]                            ; 04F6 _ 8D. 04 B5, 00000000
        cmp     esi, edi                                ; 04FD _ 39. FE
        mov     edx, esi                                ; 04FF _ 89. F2
        jle     ?_0047                                  ; 0501 _ 7E, 28
        mov     dword [esp+14H], ebx                    ; 0503 _ 89. 5C 24, 14
; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0046: mov     ecx, dword [ebp+10054H]                 ; 0510 _ 8B. 8D, 00010054
        sub     edx, 1                                  ; 0516 _ 83. EA, 01
        mov     ebx, dword [ecx+eax-4H]                 ; 0519 _ 8B. 5C 01, FC
        mov     dword [ecx+eax], ebx                    ; 051D _ 89. 1C 01
        sub     eax, 4                                  ; 0520 _ 83. E8, 04
        cmp     edx, edi                                ; 0523 _ 39. FA
        jnz     ?_0046                                  ; 0525 _ 75, E9
        mov     ebx, dword [esp+14H]                    ; 0527 _ 8B. 5C 24, 14
?_0047: mov     eax, dword [ebp+10054H]                 ; 052B _ 8B. 85, 00010054
        add     esi, 1                                  ; 0531 _ 83. C6, 01
        mov     dword [ebp+1004CH], esi                 ; 0534 _ 89. B5, 0001004C
        mov     dword [eax+edi*4], ebx                  ; 053A _ 89. 1C B8
        mov     eax, dword [esp+44H]                    ; 053D _ 8B. 44 24, 44
        mov     dword [ebp+8H], 0                       ; 0541 _ C7. 45, 08, 00000000
        mov     dword [eax], 0                          ; 0548 _ C7. 00, 00000000
        add     esp, 44                                 ; 054E _ 83. C4, 2C
        mov     eax, ebx                                ; 0551 _ 89. D8
        pop     ebx                                     ; 0553 _ 5B
        pop     esi                                     ; 0554 _ 5E
        pop     edi                                     ; 0555 _ 5F
        pop     ebp                                     ; 0556 _ 5D
        ret                                             ; 0557 _ C3

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0048: mov     dword [esp], eax                        ; 0560 _ 89. 04 24
        call    malloc                                  ; 0563 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 0568 _ 89. C6
        jmp     ?_0028                                  ; 056A _ E9, FFFFFDBC

?_0049: mov     eax, dword [ebx+8H]                     ; 056F _ 8B. 43, 08
        mov     edx, dword [esp+1CH]                    ; 0572 _ 8B. 54 24, 1C
        cmp     edx, eax                                ; 0576 _ 39. C2
        je      ?_0043                                  ; 0578 _ 0F 84, FFFFFF4B
        mov     eax, dword [eax+4H]                     ; 057E _ 8B. 40, 04
        mov     dword [esp+4H], eax                     ; 0581 _ 89. 44 24, 04
        mov     eax, dword [edx+4H]                     ; 0585 _ 8B. 42, 04
        mov     dword [esp], eax                        ; 0588 _ 89. 04 24
        call    strcmp                                  ; 058B _ E8, FFFFFFFC(rel)
        jmp     ?_0044                                  ; 0590 _ E9, FFFFFF47

?_0050: mov     dword [esp], eax                        ; 0595 _ 89. 04 24
        call    malloc                                  ; 0598 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 059D _ 89. C6
        nop                                             ; 059F _ 90
        jmp     ?_0030                                  ; 05A0 _ E9, FFFFFE25

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0051: mov     esi, ecx                                ; 05A8 _ 89. CE
        mov     edi, ?_0849                             ; 05AA _ BF, 00000000(d)
        mov     ecx, 5                                  ; 05AF _ B9, 00000005
        repe cmpsb                                      ; 05B4 _ F3: A6
        setne   al                                      ; 05B6 _ 0F 95. C0
        movzx   eax, al                                 ; 05B9 _ 0F B6. C0
        mov     dword [ebp+10094H], eax                 ; 05BC _ 89. 85, 00010094
        jmp     ?_0021                                  ; 05C2 _ E9, FFFFFC83

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0052: mov     dword [esp], 32                         ; 05D0 _ C7. 04 24, 00000020
        call    malloc                                  ; 05D7 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 05DC _ 89. C3
        jmp     ?_0027                                  ; 05DE _ E9, FFFFFCF9

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0053: mov     dword [esp], 100                        ; 05E8 _ C7. 04 24, 00000064
        call    malloc                                  ; 05EF _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 05F4 _ 89. C6
        jmp     ?_0029                                  ; 05F6 _ E9, FFFFFD75

?_0054: mov     eax, dword [ebp+10228H]                 ; 05FB _ 8B. 85, 00010228
        test    eax, eax                                ; 0601 _ 85. C0
        jne     ?_0031                                  ; 0603 _ 0F 85, FFFFFE02
        mov     dword [esp], edx                        ; 0609 _ 89. 14 24
        call    free                                    ; 060C _ E8, FFFFFFFC(rel)
        jmp     ?_0031                                  ; 0611 _ E9, FFFFFDF5

?_0055: mov     dword [ebx+4H], 0                       ; 0616 _ C7. 43, 04, 00000000
        jmp     ?_0034                                  ; 061D _ E9, FFFFFE1D

?_0056: ; Local function
        mov     dword [ebp+8H], 16                      ; 0622 _ C7. 45, 08, 00000010
        mov     eax, 16                                 ; 0629 _ B8, 00000010
        jmp     ?_0035                                  ; 062E _ E9, FFFFFE18

; Filling space: 0DH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BCH
;       db 27H, 00H, 00H, 00H, 00H

ALIGN   16

storePrefix:; Local function
        push    ebp                                     ; 0640 _ 55
        push    edi                                     ; 0641 _ 57
        push    esi                                     ; 0642 _ 56
        push    ebx                                     ; 0643 _ 53
        sub     esp, 1084                               ; 0644 _ 81. EC, 0000043C
        mov     dword [esp+1CH], ecx                    ; 064A _ 89. 4C 24, 1C
        mov     ebp, dword [eax+10064H]                 ; 064E _ 8B. A8, 00010064
; Note: Absolute memory address without relocation
        mov     ecx, dword [gs:14H]                     ; 0654 _ 65: 8B. 0D, 00000014
        mov     dword [esp+42CH], ecx                   ; 065B _ 89. 8C 24, 0000042C
        xor     ecx, ecx                                ; 0662 _ 31. C9
        cmp     byte [edx], 0                           ; 0664 _ 80. 3A, 00
        mov     dword [esp+18H], eax                    ; 0667 _ 89. 44 24, 18
        mov     dword [esp+14H], ?_0849                 ; 066B _ C7. 44 24, 14, 00000000(d)
        jne     ?_0064                                  ; 0673 _ 0F 85, 0000010F
?_0057: mov     esi, dword [eax+1005CH]                 ; 0679 _ 8B. B0, 0001005C
        mov     edi, 4294967295                         ; 067F _ BF, FFFFFFFF
        jmp     ?_0059                                  ; 0684 _ EB, 32

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0058: lea     eax, [esi+edi]                          ; 0690 _ 8D. 04 3E
        mov     ebx, eax                                ; 0693 _ 89. C3
        shr     ebx, 31                                 ; 0695 _ C1. EB, 1F
        add     ebx, eax                                ; 0698 _ 01. C3
        sar     ebx, 1                                  ; 069A _ D1. FB
        mov     eax, dword [ebp+ebx*4]                  ; 069C _ 8B. 44 9D, 00
        mov     dword [esp+4H], eax                     ; 06A0 _ 89. 44 24, 04
        mov     eax, dword [esp+14H]                    ; 06A4 _ 8B. 44 24, 14
        mov     dword [esp], eax                        ; 06A8 _ 89. 04 24
        call    strcmp                                  ; 06AB _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 06B0 _ 85. C0
        cmovs   esi, ebx                                ; 06B2 _ 0F 48. F3
        cmovns  edi, ebx                                ; 06B5 _ 0F 49. FB
?_0059: mov     eax, esi                                ; 06B8 _ 89. F0
        sub     eax, edi                                ; 06BA _ 29. F8
        cmp     eax, 1                                  ; 06BC _ 83. F8, 01
        jg      ?_0058                                  ; 06BF _ 7F, CF
        cmp     edi, -1                                 ; 06C1 _ 83. FF, FF
        jz      ?_0060                                  ; 06C4 _ 74, 3A
        mov     ebx, dword [ebp+edi*4]                  ; 06C6 _ 8B. 5C BD, 00
        mov     eax, dword [esp+14H]                    ; 06CA _ 8B. 44 24, 14
        mov     dword [esp+4H], ebx                     ; 06CE _ 89. 5C 24, 04
        mov     dword [esp], eax                        ; 06D2 _ 89. 04 24
        call    strcmp                                  ; 06D5 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 06DA _ 85. C0
        jnz     ?_0060                                  ; 06DC _ 75, 22
        mov     edx, dword [esp+1CH]                    ; 06DE _ 8B. 54 24, 1C
        mov     eax, ebx                                ; 06E2 _ 89. D8
        test    edx, edx                                ; 06E4 _ 85. D2
        jnz     ?_0063                                  ; 06E6 _ 75, 7D
        mov     eax, dword [esp+18H]                    ; 06E8 _ 8B. 44 24, 18
        mov     dword [eax+8H], 7                       ; 06EC _ C7. 40, 08, 00000007
        xor     eax, eax                                ; 06F3 _ 31. C0
        jmp     ?_0063                                  ; 06F5 _ EB, 6E

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0060: mov     eax, dword [esp+14H]                    ; 0700 _ 8B. 44 24, 14
        mov     dword [esp], eax                        ; 0704 _ 89. 04 24
        call    strlen                                  ; 0707 _ E8, FFFFFFFC(rel)
        mov     edx, dword [esp+18H]                    ; 070C _ 8B. 54 24, 18
        add     eax, 1                                  ; 0710 _ 83. C0, 01
        mov     ecx, dword [edx+10010H]                 ; 0713 _ 8B. 8A, 00010010
        mov     edx, dword [edx+10228H]                 ; 0719 _ 8B. 92, 00010228
        test    edx, edx                                ; 071F _ 85. D2
        je      ?_0065                                  ; 0721 _ 0F 84, 00000099
        mov     dword [esp+4H], eax                     ; 0727 _ 89. 44 24, 04
        mov     dword [esp], ecx                        ; 072B _ 89. 0C 24
        call    edx                                     ; 072E _ FF. D2
        mov     ebx, eax                                ; 0730 _ 89. C3
?_0061: test    ebx, ebx                                ; 0732 _ 85. DB
        jz      ?_0062                                  ; 0734 _ 74, 22
        mov     eax, dword [esp+14H]                    ; 0736 _ 8B. 44 24, 14
        mov     dword [esp], ebx                        ; 073A _ 89. 1C 24
        mov     dword [esp+4H], eax                     ; 073D _ 89. 44 24, 04
        call    strcpy                                  ; 0741 _ E8, FFFFFFFC(rel)
        mov     eax, dword [esp+18H]                    ; 0746 _ 8B. 44 24, 18
        add     eax, 65624                              ; 074A _ 05, 00010058
        call    checkExpand                             ; 074F _ E8, FFFFF9DC
        test    eax, eax                                ; 0754 _ 85. C0
        jnz     ?_0066                                  ; 0756 _ 75, 78
?_0062: mov     eax, dword [esp+18H]                    ; 0758 _ 8B. 44 24, 18
        mov     dword [eax+8H], 4                       ; 075C _ C7. 40, 08, 00000004
        xor     eax, eax                                ; 0763 _ 31. C0
?_0063: mov     ecx, dword [esp+42CH]                   ; 0765 _ 8B. 8C 24, 0000042C
; Note: Absolute memory address without relocation
        xor     ecx, dword [gs:14H]                     ; 076C _ 65: 33. 0D, 00000014
        jne     ?_0069                                  ; 0773 _ 0F 85, 000000B6
        add     esp, 1084                               ; 0779 _ 81. C4, 0000043C
        pop     ebx                                     ; 077F _ 5B
        pop     esi                                     ; 0780 _ 5E
        pop     edi                                     ; 0781 _ 5F
        pop     ebp                                     ; 0782 _ 5D
        ret                                             ; 0783 _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0064: lea     edi, [esp+2CH]                          ; 0788 _ 8D. 7C 24, 2C
        mov     dword [esp+10H], edx                    ; 078C _ 89. 54 24, 10
        mov     dword [esp+0CH], ?_0850                 ; 0790 _ C7. 44 24, 0C, 00000006(d)
        mov     dword [esp+8H], 1024                    ; 0798 _ C7. 44 24, 08, 00000400
        mov     dword [esp+4H], 1                       ; 07A0 _ C7. 44 24, 04, 00000001
        mov     dword [esp], edi                        ; 07A8 _ 89. 3C 24
        call    __sprintf_chk                           ; 07AB _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], edi                    ; 07B0 _ 89. 7C 24, 14
        mov     eax, dword [esp+18H]                    ; 07B4 _ 8B. 44 24, 18
        jmp     ?_0057                                  ; 07B8 _ E9, FFFFFEBC

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0065: mov     dword [esp], eax                        ; 07C0 _ 89. 04 24
        call    malloc                                  ; 07C3 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 07C8 _ 89. C3
        jmp     ?_0061                                  ; 07CA _ E9, FFFFFF63

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0066: mov     eax, dword [esp+18H]                    ; 07D0 _ 8B. 44 24, 18
        mov     edi, dword [eax+1005CH]                 ; 07D4 _ 8B. B8, 0001005C
        lea     edx, [edi*4]                            ; 07DA _ 8D. 14 BD, 00000000
        cmp     edi, esi                                ; 07E1 _ 39. F7
        mov     ecx, edi                                ; 07E3 _ 89. F9
        jle     ?_0068                                  ; 07E5 _ 7E, 24
        mov     ebp, eax                                ; 07E7 _ 89. C5
        mov     dword [esp+14H], ebx                    ; 07E9 _ 89. 5C 24, 14
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0067: mov     eax, dword [ebp+10064H]                 ; 07F0 _ 8B. 85, 00010064
        sub     ecx, 1                                  ; 07F6 _ 83. E9, 01
        mov     ebx, dword [eax+edx-4H]                 ; 07F9 _ 8B. 5C 10, FC
        mov     dword [eax+edx], ebx                    ; 07FD _ 89. 1C 10
        sub     edx, 4                                  ; 0800 _ 83. EA, 04
        cmp     ecx, esi                                ; 0803 _ 39. F1
        jnz     ?_0067                                  ; 0805 _ 75, E9
        mov     ebx, dword [esp+14H]                    ; 0807 _ 8B. 5C 24, 14
?_0068: mov     ecx, dword [esp+18H]                    ; 080B _ 8B. 4C 24, 18
        add     edi, 1                                  ; 080F _ 83. C7, 01
        mov     eax, dword [ecx+10064H]                 ; 0812 _ 8B. 81, 00010064
        mov     dword [ecx+1005CH], edi                 ; 0818 _ 89. B9, 0001005C
        mov     dword [eax+esi*4], ebx                  ; 081E _ 89. 1C B0
        mov     eax, ebx                                ; 0821 _ 89. D8
        mov     dword [ecx+8H], 0                       ; 0823 _ C7. 41, 08, 00000000
        jmp     ?_0063                                  ; 082A _ E9, FFFFFF36

?_0069: ; Local function
        call    __stack_chk_fail                        ; 082F _ E8, FFFFFFFC(rel)
; Filling space: 0CH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BFH
;       db 00H, 00H, 00H, 00H

ALIGN   16
addAttribute:
        push    ebp                                     ; 0840 _ 55
        push    edi                                     ; 0841 _ 57
        push    esi                                     ; 0842 _ 56
        mov     esi, edx                                ; 0843 _ 89. D6
        push    ebx                                     ; 0845 _ 53
        mov     ebx, eax                                ; 0846 _ 89. C3
        sub     esp, 44                                 ; 0848 _ 83. EC, 2C
        test    edx, edx                                ; 084B _ 85. D2
        mov     ebp, dword [eax]                        ; 084D _ 8B. 28
        jz      ?_0077                                  ; 084F _ 74, 70
        mov     dword [eax+10H], 0                      ; 0851 _ C7. 40, 10, 00000000
        movzx   eax, byte [esi]                         ; 0858 _ 0F B6. 06
        test    al, al                                  ; 085B _ 84. C0
        jz      ?_0076                                  ; 085D _ 74, 58
        nop                                             ; 085F _ 90
?_0070: js      ?_0091                                  ; 0860 _ 0F 88, 000001CA
        lea     edi, [esi+1H]                           ; 0866 _ 8D. 7E, 01
?_0071: movsx   ecx, byte [ebp+eax+10H]                 ; 0869 _ 0F BE. 4C 05, 10
?_0072: test    ecx, ecx                                ; 086E _ 85. C9
        je      ?_0125                                  ; 0870 _ 0F 84, 0000071A
        sub     eax, 9                                  ; 0876 _ 83. E8, 09
        cmp     eax, 51                                 ; 0879 _ 83. F8, 33
        ja      ?_0089                                  ; 087C _ 0F 87, 0000016E
        jmp     near [?_0883+eax*4]                     ; 0882 _ FF. 24 85, 00000000(d)

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0073: mov     ecx, dword [ebx+10H]                    ; 0890 _ 8B. 4B, 10
        lea     eax, [ecx+4H]                           ; 0893 _ 8D. 41, 04
        cmp     eax, dword [ebx+14H]                    ; 0896 _ 3B. 43, 14
        jge     ?_0094                                  ; 0899 _ 0F 8D, 00000239
        mov     esi, dword [ebx+0CH]                    ; 089F _ 8B. 73, 0C
?_0074: mov     dword [esi+ecx], 997485606              ; 08A2 _ C7. 04 0E, 3B746C26
        mov     esi, edi                                ; 08A9 _ 89. FE
        add     dword [ebx+10H], 4                      ; 08AB _ 83. 43, 10, 04
        nop                                             ; 08AF _ 90
?_0075: movzx   eax, byte [esi]                         ; 08B0 _ 0F B6. 06
        test    al, al                                  ; 08B3 _ 84. C0
        jnz     ?_0070                                  ; 08B5 _ 75, A9
?_0076: mov     edx, dword [ebx+0CH]                    ; 08B7 _ 8B. 53, 0C
        mov     eax, dword [ebx+10H]                    ; 08BA _ 8B. 43, 10
        mov     byte [edx+eax], 0                       ; 08BD _ C6. 04 02, 00
?_0077: mov     eax, dword [ebx+8H]                     ; 08C1 _ 8B. 43, 08
        test    eax, eax                                ; 08C4 _ 85. C0
        jz      ?_0078                                  ; 08C6 _ 74, 07
        xor     edx, edx                                ; 08C8 _ 31. D2
        call    addNamespace                            ; 08CA _ E8, 00000851
?_0078: test    esi, esi                                ; 08CF _ 85. F6
        je      ?_0140                                  ; 08D1 _ 0F 84, 00000831
        mov     eax, dword [ebx+18H]                    ; 08D7 _ 8B. 43, 18
        test    eax, eax                                ; 08DA _ 85. C0
        je      ?_0140                                  ; 08DC _ 0F 84, 00000826
        mov     dword [ebp+8H], 15                      ; 08E2 _ C7. 45, 08, 0000000F
        add     esp, 44                                 ; 08E9 _ 83. C4, 2C
        mov     eax, 15                                 ; 08EC _ B8, 0000000F
        pop     ebx                                     ; 08F1 _ 5B
        pop     esi                                     ; 08F2 _ 5E
        pop     edi                                     ; 08F3 _ 5F
        pop     ebp                                     ; 08F4 _ 5D
        ret                                             ; 08F5 _ C3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0079: mov     ecx, dword [ebx+10H]                    ; 0900 _ 8B. 4B, 10
        lea     eax, [ecx+5H]                           ; 0903 _ 8D. 41, 05
        cmp     eax, dword [ebx+14H]                    ; 0906 _ 3B. 43, 14
        jge     ?_0100                                  ; 0909 _ 0F 8D, 00000291
        mov     esi, dword [ebx+0CH]                    ; 090F _ 8B. 73, 0C
?_0080: add     ecx, esi                                ; 0912 _ 01. F1
        mov     esi, edi                                ; 0914 _ 89. FE
        mov     dword [ecx], 1886216486                 ; 0916 _ C7. 01, 706D6126
        mov     byte [ecx+4H], 59                       ; 091C _ C6. 41, 04, 3B
        add     dword [ebx+10H], 5                      ; 0920 _ 83. 43, 10, 05
        jmp     ?_0075                                  ; 0924 _ EB, 8A

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0081: mov     ecx, dword [ebx+10H]                    ; 0930 _ 8B. 4B, 10
        lea     eax, [ecx+6H]                           ; 0933 _ 8D. 41, 06
        cmp     eax, dword [ebx+14H]                    ; 0936 _ 3B. 43, 14
        jge     ?_0103                                  ; 0939 _ 0F 8D, 000002E1
        mov     esi, dword [ebx+0CH]                    ; 093F _ 8B. 73, 0C
?_0082: add     ecx, esi                                ; 0942 _ 01. F1
        mov     eax, 15220                              ; 0944 _ B8, 00003B74
        mov     esi, edi                                ; 0949 _ 89. FE
        mov     dword [ecx], 1869967654                 ; 094B _ C7. 01, 6F757126
        mov     word [ecx+4H], ax                       ; 0951 _ 66: 89. 41, 04
        add     dword [ebx+10H], 6                      ; 0955 _ 83. 43, 10, 06
        jmp     ?_0075                                  ; 0959 _ E9, FFFFFF52

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0083: mov     ecx, dword [ebx+10H]                    ; 0960 _ 8B. 4B, 10
        lea     eax, [ecx+5H]                           ; 0963 _ 8D. 41, 05
        cmp     eax, dword [ebx+14H]                    ; 0966 _ 3B. 43, 14
        jge     ?_0106                                  ; 0969 _ 0F 8D, 00000331
        mov     esi, dword [ebx+0CH]                    ; 096F _ 8B. 73, 0C
?_0084: add     ecx, esi                                ; 0972 _ 01. F1
        mov     esi, edi                                ; 0974 _ 89. FE
        mov     dword [ecx], 1148724006                 ; 0976 _ C7. 01, 44782326
        mov     byte [ecx+4H], 59                       ; 097C _ C6. 41, 04, 3B
        add     dword [ebx+10H], 5                      ; 0980 _ 83. 43, 10, 05
        jmp     ?_0075                                  ; 0984 _ E9, FFFFFF27

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0085: mov     ecx, dword [ebx+10H]                    ; 0990 _ 8B. 4B, 10
        lea     eax, [ecx+5H]                           ; 0993 _ 8D. 41, 05
        cmp     eax, dword [ebx+14H]                    ; 0996 _ 3B. 43, 14
        jge     ?_0109                                  ; 0999 _ 0F 8D, 00000381
        mov     esi, dword [ebx+0CH]                    ; 099F _ 8B. 73, 0C
?_0086: add     ecx, esi                                ; 09A2 _ 01. F1
        mov     esi, edi                                ; 09A4 _ 89. FE
        mov     dword [ecx], 1098392358                 ; 09A6 _ C7. 01, 41782326
        mov     byte [ecx+4H], 59                       ; 09AC _ C6. 41, 04, 3B
        add     dword [ebx+10H], 5                      ; 09B0 _ 83. 43, 10, 05
        jmp     ?_0075                                  ; 09B4 _ E9, FFFFFEF7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0087: mov     ecx, dword [ebx+10H]                    ; 09C0 _ 8B. 4B, 10
        lea     eax, [ecx+5H]                           ; 09C3 _ 8D. 41, 05
        cmp     eax, dword [ebx+14H]                    ; 09C6 _ 3B. 43, 14
        jge     ?_0112                                  ; 09C9 _ 0F 8D, 000003D1
        mov     esi, dword [ebx+0CH]                    ; 09CF _ 8B. 73, 0C
?_0088: add     ecx, esi                                ; 09D2 _ 01. F1
        mov     esi, edi                                ; 09D4 _ 89. FE
        mov     dword [ecx], 964174630                  ; 09D6 _ C7. 01, 39782326
        mov     byte [ecx+4H], 59                       ; 09DC _ C6. 41, 04, 3B
        add     dword [ebx+10H], 5                      ; 09E0 _ 83. 43, 10, 05
        jmp     ?_0075                                  ; 09E4 _ E9, FFFFFEC7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0089: mov     eax, dword [ebx+10H]                    ; 09F0 _ 8B. 43, 10
        mov     edx, edi                                ; 09F3 _ 89. FA
        sub     edx, esi                                ; 09F5 _ 29. F2
        mov     dword [esp+0CH], edx                    ; 09F7 _ 89. 54 24, 0C
        lea     ecx, [eax+edx]                          ; 09FB _ 8D. 0C 10
        cmp     ecx, dword [ebx+14H]                    ; 09FE _ 3B. 4B, 14
        jge     ?_0097                                  ; 0A01 _ 0F 8D, 00000151
        mov     ecx, dword [ebx+0CH]                    ; 0A07 _ 8B. 4B, 0C
?_0090: mov     edx, dword [esp+0CH]                    ; 0A0A _ 8B. 54 24, 0C
        add     eax, ecx                                ; 0A0E _ 01. C8
        mov     dword [esp+4H], esi                     ; 0A10 _ 89. 74 24, 04
        mov     dword [esp], eax                        ; 0A14 _ 89. 04 24
        mov     esi, edi                                ; 0A17 _ 89. FE
        mov     dword [esp+8H], edx                     ; 0A19 _ 89. 54 24, 08
        call    strncpy                                 ; 0A1D _ E8, FFFFFFFC(rel)
        mov     edx, dword [esp+0CH]                    ; 0A22 _ 8B. 54 24, 0C
        add     dword [ebx+10H], edx                    ; 0A26 _ 01. 53, 10
        jmp     ?_0075                                  ; 0A29 _ E9, FFFFFE82

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0091: cmp     al, -63                                 ; 0A30 _ 3C, C1
        jbe     ?_0122                                  ; 0A32 _ 0F 86, 00000520
        cmp     al, -33                                 ; 0A38 _ 3C, DF
        ja      ?_0092                                  ; 0A3A _ 77, 2C
        mov     ecx, eax                                ; 0A3C _ 89. C1
        movzx   eax, byte [esi+1H]                      ; 0A3E _ 0F B6. 46, 01
        and     ecx, 1FH                                ; 0A42 _ 83. E1, 1F
        shl     ecx, 6                                  ; 0A45 _ C1. E1, 06
        lea     edx, [eax-80H]                          ; 0A48 _ 8D. 50, 80
        cmp     dl, 63                                  ; 0A4B _ 80. FA, 3F
        ja      ?_0122                                  ; 0A4E _ 0F 87, 00000504
        lea     edi, [esi+2H]                           ; 0A54 _ 8D. 7E, 02
        and     eax, 3FH                                ; 0A57 _ 83. E0, 3F
        or      eax, ecx                                ; 0A5A _ 09. C8
        jmp     ?_0071                                  ; 0A5C _ E9, FFFFFE08

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0092: cmp     al, -17                                 ; 0A68 _ 3C, EF
        ja      ?_0115                                  ; 0A6A _ 0F 87, 000003B0
        mov     ecx, eax                                ; 0A70 _ 89. C1
        movzx   edx, byte [esi+1H]                      ; 0A72 _ 0F B6. 56, 01
        shl     ecx, 12                                 ; 0A76 _ C1. E1, 0C
        cmp     eax, 224                                ; 0A79 _ 3D, 000000E0
        movzx   edi, cx                                 ; 0A7E _ 0F B7. F9
        mov     dword [esp+0CH], edi                    ; 0A81 _ 89. 7C 24, 0C
        je      ?_0119                                  ; 0A85 _ 0F 84, 0000049D
        cmp     eax, 236                                ; 0A8B _ 3D, 000000EC
        jle     ?_0120                                  ; 0A90 _ 0F 8E, 0000049C
        cmp     eax, 237                                ; 0A96 _ 3D, 000000ED
        jne     ?_0121                                  ; 0A9B _ 0F 85, 0000049B
        lea     eax, [edx-80H]                          ; 0AA1 _ 8D. 42, 80
        cmp     al, 31                                  ; 0AA4 _ 3C, 1F
        ja      ?_0122                                  ; 0AA6 _ 0F 87, 000004AC
?_0093: movzx   eax, byte [esi+2H]                      ; 0AAC _ 0F B6. 46, 02
        and     edx, 3FH                                ; 0AB0 _ 83. E2, 3F
        shl     edx, 6                                  ; 0AB3 _ C1. E2, 06
        lea     edi, [eax-80H]                          ; 0AB6 _ 8D. 78, 80
        mov     ecx, edi                                ; 0AB9 _ 89. F9
        cmp     cl, 63                                  ; 0ABB _ 80. F9, 3F
        ja      ?_0122                                  ; 0ABE _ 0F 87, 00000494
        lea     edi, [esi+3H]                           ; 0AC4 _ 8D. 7E, 03
        and     eax, 3FH                                ; 0AC7 _ 83. E0, 3F
        or      eax, dword [esp+0CH]                    ; 0ACA _ 0B. 44 24, 0C
        or      eax, edx                                ; 0ACE _ 09. D0
        jmp     ?_0071                                  ; 0AD0 _ E9, FFFFFD94

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0094: add     eax, eax                                ; 0AD8 _ 01. C0
        mov     dword [ebx+14H], eax                    ; 0ADA _ 89. 43, 14
        mov     ecx, dword [ebp+10228H]                 ; 0ADD _ 8B. 8D, 00010228
        mov     esi, dword [ebp+10010H]                 ; 0AE3 _ 8B. B5, 00010010
        test    ecx, ecx                                ; 0AE9 _ 85. C9
        je      ?_0126                                  ; 0AEB _ 0F 84, 000004B7
        mov     dword [esp], esi                        ; 0AF1 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0AF4 _ 89. 44 24, 04
        call    ecx                                     ; 0AF8 _ FF. D1
        mov     esi, eax                                ; 0AFA _ 89. C6
?_0095: test    esi, esi                                ; 0AFC _ 85. F6
        je      ?_0099                                  ; 0AFE _ 0F 84, 00000084
        mov     eax, dword [ebx+10H]                    ; 0B04 _ 8B. 43, 10
        mov     dword [esp+8H], eax                     ; 0B07 _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 0B0B _ 8B. 43, 0C
        mov     dword [esp], esi                        ; 0B0E _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0B11 _ 89. 44 24, 04
        call    strncpy                                 ; 0B15 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 0B1A _ 8B. 43, 10
        mov     byte [esi+eax], 0                       ; 0B1D _ C6. 04 06, 00
        mov     eax, dword [ebp+1022CH]                 ; 0B21 _ 8B. 85, 0001022C
        mov     ecx, dword [ebx+0CH]                    ; 0B27 _ 8B. 4B, 0C
        test    eax, eax                                ; 0B2A _ 85. C0
        je      ?_0137                                  ; 0B2C _ 0F 84, 0000056E
        mov     dword [esp+4H], ecx                     ; 0B32 _ 89. 4C 24, 04
        mov     ecx, dword [ebp+10010H]                 ; 0B36 _ 8B. 8D, 00010010
        mov     dword [esp], ecx                        ; 0B3C _ 89. 0C 24
        call    eax                                     ; 0B3F _ FF. D0
?_0096: mov     dword [ebx+0CH], esi                    ; 0B41 _ 89. 73, 0C
        mov     ecx, dword [ebx+10H]                    ; 0B44 _ 8B. 4B, 10
        mov     dword [ebp+8H], 0                       ; 0B47 _ C7. 45, 08, 00000000
        jmp     ?_0074                                  ; 0B4E _ E9, FFFFFD4F

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0097: lea     eax, [ecx+ecx]                          ; 0B58 _ 8D. 04 09
        mov     dword [ebx+14H], eax                    ; 0B5B _ 89. 43, 14
        mov     ecx, dword [ebp+10228H]                 ; 0B5E _ 8B. 8D, 00010228
        mov     edx, dword [ebp+10010H]                 ; 0B64 _ 8B. 95, 00010010
        test    ecx, ecx                                ; 0B6A _ 85. C9
        je      ?_0128                                  ; 0B6C _ 0F 84, 0000045E
        mov     dword [esp+4H], eax                     ; 0B72 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0B76 _ 89. 14 24
        call    ecx                                     ; 0B79 _ FF. D1
        mov     ecx, eax                                ; 0B7B _ 89. C1
?_0098: test    ecx, ecx                                ; 0B7D _ 85. C9
        jne     ?_0117                                  ; 0B7F _ 0F 85, 00000343
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0099: mov     dword [ebp+8H], 4                       ; 0B88 _ C7. 45, 08, 00000004
        add     esp, 44                                 ; 0B8F _ 83. C4, 2C
        mov     eax, 4                                  ; 0B92 _ B8, 00000004
        pop     ebx                                     ; 0B97 _ 5B
        pop     esi                                     ; 0B98 _ 5E
        pop     edi                                     ; 0B99 _ 5F
        pop     ebp                                     ; 0B9A _ 5D
        ret                                             ; 0B9B _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0100: add     eax, eax                                ; 0BA0 _ 01. C0
        mov     dword [ebx+14H], eax                    ; 0BA2 _ 89. 43, 14
        mov     ecx, dword [ebp+10228H]                 ; 0BA5 _ 8B. 8D, 00010228
        mov     esi, dword [ebp+10010H]                 ; 0BAB _ 8B. B5, 00010010
        test    ecx, ecx                                ; 0BB1 _ 85. C9
        je      ?_0131                                  ; 0BB3 _ 0F 84, 00000447
        mov     dword [esp], esi                        ; 0BB9 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0BBC _ 89. 44 24, 04
        call    ecx                                     ; 0BC0 _ FF. D1
        mov     esi, eax                                ; 0BC2 _ 89. C6
?_0101: test    esi, esi                                ; 0BC4 _ 85. F6
        jz      ?_0099                                  ; 0BC6 _ 74, C0
        mov     eax, dword [ebx+10H]                    ; 0BC8 _ 8B. 43, 10
        mov     dword [esp+8H], eax                     ; 0BCB _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 0BCF _ 8B. 43, 0C
        mov     dword [esp], esi                        ; 0BD2 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0BD5 _ 89. 44 24, 04
        call    strncpy                                 ; 0BD9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 0BDE _ 8B. 43, 10
        mov     byte [esi+eax], 0                       ; 0BE1 _ C6. 04 06, 00
        mov     eax, dword [ebp+1022CH]                 ; 0BE5 _ 8B. 85, 0001022C
        mov     ecx, dword [ebx+0CH]                    ; 0BEB _ 8B. 4B, 0C
        test    eax, eax                                ; 0BEE _ 85. C0
        je      ?_0133                                  ; 0BF0 _ 0F 84, 0000042A
        mov     dword [esp+4H], ecx                     ; 0BF6 _ 89. 4C 24, 04
        mov     ecx, dword [ebp+10010H]                 ; 0BFA _ 8B. 8D, 00010010
        mov     dword [esp], ecx                        ; 0C00 _ 89. 0C 24
        call    eax                                     ; 0C03 _ FF. D0
?_0102: mov     dword [ebx+0CH], esi                    ; 0C05 _ 89. 73, 0C
        mov     ecx, dword [ebx+10H]                    ; 0C08 _ 8B. 4B, 10
        mov     dword [ebp+8H], 0                       ; 0C0B _ C7. 45, 08, 00000000
        jmp     ?_0080                                  ; 0C12 _ E9, FFFFFCFB

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0103: add     eax, eax                                ; 0C20 _ 01. C0
        mov     dword [ebx+14H], eax                    ; 0C22 _ 89. 43, 14
        mov     ecx, dword [ebp+10228H]                 ; 0C25 _ 8B. 8D, 00010228
        mov     esi, dword [ebp+10010H]                 ; 0C2B _ 8B. B5, 00010010
        test    ecx, ecx                                ; 0C31 _ 85. C9
        je      ?_0132                                  ; 0C33 _ 0F 84, 000003D7
        mov     dword [esp], esi                        ; 0C39 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0C3C _ 89. 44 24, 04
        call    ecx                                     ; 0C40 _ FF. D1
        mov     esi, eax                                ; 0C42 _ 89. C6
?_0104: test    esi, esi                                ; 0C44 _ 85. F6
        je      ?_0099                                  ; 0C46 _ 0F 84, FFFFFF3C
        mov     eax, dword [ebx+10H]                    ; 0C4C _ 8B. 43, 10
        mov     dword [esp+8H], eax                     ; 0C4F _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 0C53 _ 8B. 43, 0C
        mov     dword [esp], esi                        ; 0C56 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0C59 _ 89. 44 24, 04
        call    strncpy                                 ; 0C5D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 0C62 _ 8B. 43, 10
        mov     byte [esi+eax], 0                       ; 0C65 _ C6. 04 06, 00
        mov     eax, dword [ebp+1022CH]                 ; 0C69 _ 8B. 85, 0001022C
        mov     ecx, dword [ebx+0CH]                    ; 0C6F _ 8B. 4B, 0C
        test    eax, eax                                ; 0C72 _ 85. C0
        je      ?_0134                                  ; 0C74 _ 0F 84, 000003C6
        mov     dword [esp+4H], ecx                     ; 0C7A _ 89. 4C 24, 04
        mov     ecx, dword [ebp+10010H]                 ; 0C7E _ 8B. 8D, 00010010
        mov     dword [esp], ecx                        ; 0C84 _ 89. 0C 24
        call    eax                                     ; 0C87 _ FF. D0
?_0105: mov     dword [ebx+0CH], esi                    ; 0C89 _ 89. 73, 0C
        mov     ecx, dword [ebx+10H]                    ; 0C8C _ 8B. 4B, 10
        mov     dword [ebp+8H], 0                       ; 0C8F _ C7. 45, 08, 00000000
        jmp     ?_0082                                  ; 0C96 _ E9, FFFFFCA7

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0106: add     eax, eax                                ; 0CA0 _ 01. C0
        mov     dword [ebx+14H], eax                    ; 0CA2 _ 89. 43, 14
        mov     ecx, dword [ebp+10228H]                 ; 0CA5 _ 8B. 8D, 00010228
        mov     esi, dword [ebp+10010H]                 ; 0CAB _ 8B. B5, 00010010
        test    ecx, ecx                                ; 0CB1 _ 85. C9
        je      ?_0129                                  ; 0CB3 _ 0F 84, 00000327
        mov     dword [esp], esi                        ; 0CB9 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0CBC _ 89. 44 24, 04
        call    ecx                                     ; 0CC0 _ FF. D1
        mov     esi, eax                                ; 0CC2 _ 89. C6
?_0107: test    esi, esi                                ; 0CC4 _ 85. F6
        je      ?_0099                                  ; 0CC6 _ 0F 84, FFFFFEBC
        mov     eax, dword [ebx+10H]                    ; 0CCC _ 8B. 43, 10
        mov     dword [esp+8H], eax                     ; 0CCF _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 0CD3 _ 8B. 43, 0C
        mov     dword [esp], esi                        ; 0CD6 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0CD9 _ 89. 44 24, 04
        call    strncpy                                 ; 0CDD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 0CE2 _ 8B. 43, 10
        mov     byte [esi+eax], 0                       ; 0CE5 _ C6. 04 06, 00
        mov     eax, dword [ebp+1022CH]                 ; 0CE9 _ 8B. 85, 0001022C
        mov     ecx, dword [ebx+0CH]                    ; 0CEF _ 8B. 4B, 0C
        test    eax, eax                                ; 0CF2 _ 85. C0
        je      ?_0135                                  ; 0CF4 _ 0F 84, 00000366
        mov     dword [esp+4H], ecx                     ; 0CFA _ 89. 4C 24, 04
        mov     ecx, dword [ebp+10010H]                 ; 0CFE _ 8B. 8D, 00010010
        mov     dword [esp], ecx                        ; 0D04 _ 89. 0C 24
        call    eax                                     ; 0D07 _ FF. D0
?_0108: mov     dword [ebx+0CH], esi                    ; 0D09 _ 89. 73, 0C
        mov     ecx, dword [ebx+10H]                    ; 0D0C _ 8B. 4B, 10
        mov     dword [ebp+8H], 0                       ; 0D0F _ C7. 45, 08, 00000000
        jmp     ?_0084                                  ; 0D16 _ E9, FFFFFC57

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0109: add     eax, eax                                ; 0D20 _ 01. C0
        mov     dword [ebx+14H], eax                    ; 0D22 _ 89. 43, 14
        mov     ecx, dword [ebp+10228H]                 ; 0D25 _ 8B. 8D, 00010228
        mov     esi, dword [ebp+10010H]                 ; 0D2B _ 8B. B5, 00010010
        test    ecx, ecx                                ; 0D31 _ 85. C9
        je      ?_0130                                  ; 0D33 _ 0F 84, 000002B7
        mov     dword [esp], esi                        ; 0D39 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0D3C _ 89. 44 24, 04
        call    ecx                                     ; 0D40 _ FF. D1
        mov     esi, eax                                ; 0D42 _ 89. C6
?_0110: test    esi, esi                                ; 0D44 _ 85. F6
        je      ?_0099                                  ; 0D46 _ 0F 84, FFFFFE3C
        mov     eax, dword [ebx+10H]                    ; 0D4C _ 8B. 43, 10
        mov     dword [esp+8H], eax                     ; 0D4F _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 0D53 _ 8B. 43, 0C
        mov     dword [esp], esi                        ; 0D56 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0D59 _ 89. 44 24, 04
        call    strncpy                                 ; 0D5D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 0D62 _ 8B. 43, 10
        mov     byte [esi+eax], 0                       ; 0D65 _ C6. 04 06, 00
        mov     eax, dword [ebp+1022CH]                 ; 0D69 _ 8B. 85, 0001022C
        mov     ecx, dword [ebx+0CH]                    ; 0D6F _ 8B. 4B, 0C
        test    eax, eax                                ; 0D72 _ 85. C0
        je      ?_0136                                  ; 0D74 _ 0F 84, 00000306
        mov     dword [esp+4H], ecx                     ; 0D7A _ 89. 4C 24, 04
        mov     ecx, dword [ebp+10010H]                 ; 0D7E _ 8B. 8D, 00010010
        mov     dword [esp], ecx                        ; 0D84 _ 89. 0C 24
        call    eax                                     ; 0D87 _ FF. D0
?_0111: mov     dword [ebx+0CH], esi                    ; 0D89 _ 89. 73, 0C
        mov     ecx, dword [ebx+10H]                    ; 0D8C _ 8B. 4B, 10
        mov     dword [ebp+8H], 0                       ; 0D8F _ C7. 45, 08, 00000000
        jmp     ?_0086                                  ; 0D96 _ E9, FFFFFC07

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0112: add     eax, eax                                ; 0DA0 _ 01. C0
        mov     dword [ebx+14H], eax                    ; 0DA2 _ 89. 43, 14
        mov     ecx, dword [ebp+10228H]                 ; 0DA5 _ 8B. 8D, 00010228
        mov     esi, dword [ebp+10010H]                 ; 0DAB _ 8B. B5, 00010010
        test    ecx, ecx                                ; 0DB1 _ 85. C9
        je      ?_0127                                  ; 0DB3 _ 0F 84, 00000207
        mov     dword [esp], esi                        ; 0DB9 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0DBC _ 89. 44 24, 04
        call    ecx                                     ; 0DC0 _ FF. D1
        mov     esi, eax                                ; 0DC2 _ 89. C6
?_0113: test    esi, esi                                ; 0DC4 _ 85. F6
        je      ?_0099                                  ; 0DC6 _ 0F 84, FFFFFDBC
        mov     eax, dword [ebx+10H]                    ; 0DCC _ 8B. 43, 10
        mov     dword [esp+8H], eax                     ; 0DCF _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 0DD3 _ 8B. 43, 0C
        mov     dword [esp], esi                        ; 0DD6 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 0DD9 _ 89. 44 24, 04
        call    strncpy                                 ; 0DDD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 0DE2 _ 8B. 43, 10
        mov     byte [esi+eax], 0                       ; 0DE5 _ C6. 04 06, 00
        mov     eax, dword [ebp+1022CH]                 ; 0DE9 _ 8B. 85, 0001022C
        mov     ecx, dword [ebx+0CH]                    ; 0DEF _ 8B. 4B, 0C
        test    eax, eax                                ; 0DF2 _ 85. C0
        je      ?_0138                                  ; 0DF4 _ 0F 84, 000002C6
        mov     dword [esp+4H], ecx                     ; 0DFA _ 89. 4C 24, 04
        mov     ecx, dword [ebp+10010H]                 ; 0DFE _ 8B. 8D, 00010010
        mov     dword [esp], ecx                        ; 0E04 _ 89. 0C 24
        call    eax                                     ; 0E07 _ FF. D0
?_0114: mov     dword [ebx+0CH], esi                    ; 0E09 _ 89. 73, 0C
        mov     ecx, dword [ebx+10H]                    ; 0E0C _ 8B. 4B, 10
        mov     dword [ebp+8H], 0                       ; 0E0F _ C7. 45, 08, 00000000
        jmp     ?_0088                                  ; 0E16 _ E9, FFFFFBB7

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0115: cmp     al, -12                                 ; 0E20 _ 3C, F4
        ja      ?_0122                                  ; 0E22 _ 0F 87, 00000130
        movzx   ecx, al                                 ; 0E28 _ 0F B6. C8
        and     eax, 07H                                ; 0E2B _ 83. E0, 07
        shl     eax, 18                                 ; 0E2E _ C1. E0, 12
        cmp     ecx, 240                                ; 0E31 _ 81. F9, 000000F0
        je      ?_0123                                  ; 0E37 _ 0F 84, 00000133
        cmp     ecx, 244                                ; 0E3D _ 81. F9, 000000F4
        movzx   ecx, byte [esi+1H]                      ; 0E43 _ 0F B6. 4E, 01
        jne     ?_0124                                  ; 0E47 _ 0F 85, 0000012F
        lea     edx, [ecx-80H]                          ; 0E4D _ 8D. 51, 80
        cmp     dl, 15                                  ; 0E50 _ 80. FA, 0F
        ja      ?_0122                                  ; 0E53 _ 0F 87, 000000FF
?_0116: movzx   edx, byte [esi+2H]                      ; 0E59 _ 0F B6. 56, 02
        mov     edi, ecx                                ; 0E5D _ 89. CF
        and     edi, 3FH                                ; 0E5F _ 83. E7, 3F
        mov     dword [esp+0CH], edi                    ; 0E62 _ 89. 7C 24, 0C
        shl     dword [esp+0CH], 12                     ; 0E66 _ C1. 64 24, 0C, 0C
        lea     edi, [edx-80H]                          ; 0E6B _ 8D. 7A, 80
        mov     ecx, edi                                ; 0E6E _ 89. F9
        cmp     cl, 63                                  ; 0E70 _ 80. F9, 3F
        ja      ?_0122                                  ; 0E73 _ 0F 87, 000000DF
        movzx   ecx, byte [esi+3H]                      ; 0E79 _ 0F B6. 4E, 03
        and     edx, 3FH                                ; 0E7D _ 83. E2, 3F
        shl     edx, 6                                  ; 0E80 _ C1. E2, 06
        lea     edi, [ecx-80H]                          ; 0E83 _ 8D. 79, 80
        mov     byte [esp+10H], cl                      ; 0E86 _ 88. 4C 24, 10
        mov     ecx, edi                                ; 0E8A _ 89. F9
        cmp     cl, 63                                  ; 0E8C _ 80. F9, 3F
        ja      ?_0122                                  ; 0E8F _ 0F 87, 000000C3
        lea     edi, [esi+4H]                           ; 0E95 _ 8D. 7E, 04
        or      eax, edx                                ; 0E98 _ 09. D0
        mov     edx, dword [esp+10H]                    ; 0E9A _ 8B. 54 24, 10
        and     edx, 3FH                                ; 0E9E _ 83. E2, 3F
        or      eax, edx                                ; 0EA1 _ 09. D0
        or      eax, dword [esp+0CH]                    ; 0EA3 _ 0B. 44 24, 0C
        cmp     eax, 65535                              ; 0EA7 _ 3D, 0000FFFF
        jle     ?_0071                                  ; 0EAC _ 0F 8E, FFFFF9B7
        xor     ecx, ecx                                ; 0EB2 _ 31. C9
        cmp     eax, 1114111                            ; 0EB4 _ 3D, 0010FFFF
        setle   cl                                      ; 0EB9 _ 0F 9E. C1
        jmp     ?_0072                                  ; 0EBC _ E9, FFFFF9AD

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0117: mov     eax, dword [ebx+10H]                    ; 0EC8 _ 8B. 43, 10
        mov     dword [esp+10H], ecx                    ; 0ECB _ 89. 4C 24, 10
        mov     dword [esp+8H], eax                     ; 0ECF _ 89. 44 24, 08
        mov     eax, dword [ebx+0CH]                    ; 0ED3 _ 8B. 43, 0C
        mov     dword [esp], ecx                        ; 0ED6 _ 89. 0C 24
        mov     dword [esp+4H], eax                     ; 0ED9 _ 89. 44 24, 04
        call    strncpy                                 ; 0EDD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+10H]                    ; 0EE2 _ 8B. 43, 10
        mov     ecx, dword [esp+10H]                    ; 0EE5 _ 8B. 4C 24, 10
        mov     byte [ecx+eax], 0                       ; 0EE9 _ C6. 04 01, 00
        mov     eax, dword [ebp+1022CH]                 ; 0EED _ 8B. 85, 0001022C
        mov     edx, dword [ebx+0CH]                    ; 0EF3 _ 8B. 53, 0C
        test    eax, eax                                ; 0EF6 _ 85. C0
        je      ?_0139                                  ; 0EF8 _ 0F 84, 000001E2
        mov     dword [esp+4H], edx                     ; 0EFE _ 89. 54 24, 04
        mov     edx, dword [ebp+10010H]                 ; 0F02 _ 8B. 95, 00010010
        mov     dword [esp], edx                        ; 0F08 _ 89. 14 24
        call    eax                                     ; 0F0B _ FF. D0
        mov     ecx, dword [esp+10H]                    ; 0F0D _ 8B. 4C 24, 10
?_0118: mov     dword [ebx+0CH], ecx                    ; 0F11 _ 89. 4B, 0C
        mov     eax, dword [ebx+10H]                    ; 0F14 _ 8B. 43, 10
        mov     dword [ebp+8H], 0                       ; 0F17 _ C7. 45, 08, 00000000
        jmp     ?_0090                                  ; 0F1E _ E9, FFFFFAE7

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0119: lea     edi, [edx+60H]                          ; 0F28 _ 8D. 7A, 60
        mov     ecx, edi                                ; 0F2B _ 89. F9
        cmp     cl, 31                                  ; 0F2D _ 80. F9, 1F
        ja      ?_0122                                  ; 0F30 _ 77, 26
?_0120: lea     edi, [edx-80H]                          ; 0F32 _ 8D. 7A, 80
        mov     ecx, edi                                ; 0F35 _ 89. F9
        cmp     cl, 63                                  ; 0F37 _ 80. F9, 3F
        ja      ?_0122                                  ; 0F3A _ 77, 1C
?_0121: cmp     eax, 237                                ; 0F3C _ 3D, 000000ED
        jle     ?_0093                                  ; 0F41 _ 0F 8E, FFFFFB65
        lea     eax, [edx-80H]                          ; 0F47 _ 8D. 42, 80
        cmp     al, 63                                  ; 0F4A _ 3C, 3F
        jbe     ?_0093                                  ; 0F4C _ 0F 86, FFFFFB5A
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0122: mov     dword [ebp+8H], 1                       ; 0F58 _ C7. 45, 08, 00000001
        add     esp, 44                                 ; 0F5F _ 83. C4, 2C
        mov     eax, 1                                  ; 0F62 _ B8, 00000001
        pop     ebx                                     ; 0F67 _ 5B
        pop     esi                                     ; 0F68 _ 5E
        pop     edi                                     ; 0F69 _ 5F
        pop     ebp                                     ; 0F6A _ 5D
        ret                                             ; 0F6B _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0123: movzx   ecx, byte [esi+1H]                      ; 0F70 _ 0F B6. 4E, 01
        lea     edx, [ecx+70H]                          ; 0F74 _ 8D. 51, 70
        cmp     dl, 47                                  ; 0F77 _ 80. FA, 2F
        ja      ?_0122                                  ; 0F7A _ 77, DC
?_0124: lea     edx, [ecx-80H]                          ; 0F7C _ 8D. 51, 80
        cmp     dl, 63                                  ; 0F7F _ 80. FA, 3F
        jbe     ?_0116                                  ; 0F82 _ 0F 86, FFFFFED1
        jmp     ?_0122                                  ; 0F88 _ EB, CE

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0125: mov     dword [ebp+8H], 2                       ; 0F90 _ C7. 45, 08, 00000002
        add     esp, 44                                 ; 0F97 _ 83. C4, 2C
        mov     eax, 2                                  ; 0F9A _ B8, 00000002
        pop     ebx                                     ; 0F9F _ 5B
        pop     esi                                     ; 0FA0 _ 5E
        pop     edi                                     ; 0FA1 _ 5F
        pop     ebp                                     ; 0FA2 _ 5D
        ret                                             ; 0FA3 _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0126: mov     dword [esp], eax                        ; 0FA8 _ 89. 04 24
        call    malloc                                  ; 0FAB _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 0FB0 _ 89. C6
        jmp     ?_0095                                  ; 0FB2 _ E9, FFFFFB45

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0127: mov     dword [esp], eax                        ; 0FC0 _ 89. 04 24
        call    malloc                                  ; 0FC3 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 0FC8 _ 89. C6
        jmp     ?_0113                                  ; 0FCA _ E9, FFFFFDF5

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0128: mov     dword [esp], eax                        ; 0FD0 _ 89. 04 24
        call    malloc                                  ; 0FD3 _ E8, FFFFFFFC(rel)
        mov     ecx, eax                                ; 0FD8 _ 89. C1
        jmp     ?_0098                                  ; 0FDA _ E9, FFFFFB9E

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0129: mov     dword [esp], eax                        ; 0FE0 _ 89. 04 24
        call    malloc                                  ; 0FE3 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 0FE8 _ 89. C6
        jmp     ?_0107                                  ; 0FEA _ E9, FFFFFCD5

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0130: mov     dword [esp], eax                        ; 0FF0 _ 89. 04 24
        call    malloc                                  ; 0FF3 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 0FF8 _ 89. C6
        jmp     ?_0110                                  ; 0FFA _ E9, FFFFFD45

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0131: mov     dword [esp], eax                        ; 1000 _ 89. 04 24
        call    malloc                                  ; 1003 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 1008 _ 89. C6
        jmp     ?_0101                                  ; 100A _ E9, FFFFFBB5

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0132: mov     dword [esp], eax                        ; 1010 _ 89. 04 24
        call    malloc                                  ; 1013 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 1018 _ 89. C6
        jmp     ?_0104                                  ; 101A _ E9, FFFFFC25

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0133: mov     eax, dword [ebp+10228H]                 ; 1020 _ 8B. 85, 00010228
        test    eax, eax                                ; 1026 _ 85. C0
        jne     ?_0102                                  ; 1028 _ 0F 85, FFFFFBD7
        mov     dword [esp], ecx                        ; 102E _ 89. 0C 24
        call    free                                    ; 1031 _ E8, FFFFFFFC(rel)
        jmp     ?_0102                                  ; 1036 _ E9, FFFFFBCA

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0134: mov     eax, dword [ebp+10228H]                 ; 1040 _ 8B. 85, 00010228
        test    eax, eax                                ; 1046 _ 85. C0
        jne     ?_0105                                  ; 1048 _ 0F 85, FFFFFC3B
        mov     dword [esp], ecx                        ; 104E _ 89. 0C 24
        call    free                                    ; 1051 _ E8, FFFFFFFC(rel)
        jmp     ?_0105                                  ; 1056 _ E9, FFFFFC2E

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0135: mov     eax, dword [ebp+10228H]                 ; 1060 _ 8B. 85, 00010228
        test    eax, eax                                ; 1066 _ 85. C0
        jne     ?_0108                                  ; 1068 _ 0F 85, FFFFFC9B
        mov     dword [esp], ecx                        ; 106E _ 89. 0C 24
        call    free                                    ; 1071 _ E8, FFFFFFFC(rel)
        jmp     ?_0108                                  ; 1076 _ E9, FFFFFC8E

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0136: mov     edx, dword [ebp+10228H]                 ; 1080 _ 8B. 95, 00010228
        test    edx, edx                                ; 1086 _ 85. D2
        jne     ?_0111                                  ; 1088 _ 0F 85, FFFFFCFB
        mov     dword [esp], ecx                        ; 108E _ 89. 0C 24
        call    free                                    ; 1091 _ E8, FFFFFFFC(rel)
        jmp     ?_0111                                  ; 1096 _ E9, FFFFFCEE

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0137: mov     eax, dword [ebp+10228H]                 ; 10A0 _ 8B. 85, 00010228
        test    eax, eax                                ; 10A6 _ 85. C0
        jne     ?_0096                                  ; 10A8 _ 0F 85, FFFFFA93
        mov     dword [esp], ecx                        ; 10AE _ 89. 0C 24
        call    free                                    ; 10B1 _ E8, FFFFFFFC(rel)
        jmp     ?_0096                                  ; 10B6 _ E9, FFFFFA86

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0138: mov     eax, dword [ebp+10228H]                 ; 10C0 _ 8B. 85, 00010228
        test    eax, eax                                ; 10C6 _ 85. C0
        jne     ?_0114                                  ; 10C8 _ 0F 85, FFFFFD3B
        mov     dword [esp], ecx                        ; 10CE _ 89. 0C 24
        call    free                                    ; 10D1 _ E8, FFFFFFFC(rel)
        jmp     ?_0114                                  ; 10D6 _ E9, FFFFFD2E

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0139: mov     eax, dword [ebp+10228H]                 ; 10E0 _ 8B. 85, 00010228
        test    eax, eax                                ; 10E6 _ 85. C0
        jne     ?_0118                                  ; 10E8 _ 0F 85, FFFFFE23
        mov     dword [esp], edx                        ; 10EE _ 89. 14 24
        mov     dword [esp+10H], ecx                    ; 10F1 _ 89. 4C 24, 10
        call    free                                    ; 10F5 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [esp+10H]                    ; 10FA _ 8B. 4C 24, 10
        jmp     ?_0118                                  ; 10FE _ E9, FFFFFE0E

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0140: mov     dword [ebx+18H], 1                      ; 1108 _ C7. 43, 18, 00000001
        add     esp, 44                                 ; 110F _ 83. C4, 2C
        xor     eax, eax                                ; 1112 _ 31. C0
        pop     ebx                                     ; 1114 _ 5B
        pop     esi                                     ; 1115 _ 5E
        pop     edi                                     ; 1116 _ 5F
        pop     ebp                                     ; 1117 _ 5D
        ret                                             ; 1118 _ C3

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8

addNamespace:; Local function
        push    ebp                                     ; 1120 _ 55
        push    edi                                     ; 1121 _ 57
        push    esi                                     ; 1122 _ 56
        push    ebx                                     ; 1123 _ 53
        mov     ebx, eax                                ; 1124 _ 89. C3
        sub     esp, 28                                 ; 1126 _ 83. EC, 1C
        test    edx, edx                                ; 1129 _ 85. D2
        mov     esi, dword [eax]                        ; 112B _ 8B. 30
        je      ?_0158                                  ; 112D _ 0F 84, 00000168
        cmp     byte [edx], 0                           ; 1133 _ 80. 3A, 00
        jne     ?_0153                                  ; 1136 _ 0F 85, 000000BF
        mov     edi, dword [esi+10020H]                 ; 113C _ 8B. BE, 00010020
?_0141: cmp     dword [ebx+14H], edi                    ; 1142 _ 39. 7B, 14
        je      ?_0159                                  ; 1145 _ 0F 84, 00000153
        mov     dword [ebx+0CH], 1                      ; 114B _ C7. 43, 0C, 00000001
?_0142: mov     eax, dword [esi+1006CH]                 ; 1152 _ 8B. 86, 0001006C
        lea     ebp, [eax-1H]                           ; 1158 _ 8D. 68, FF
        mov     eax, dword [esi+10074H]                 ; 115B _ 8B. 86, 00010074
        test    ebp, ebp                                ; 1161 _ 85. ED
        mov     ecx, ebp                                ; 1163 _ 89. E9
        jle     ?_0147                                  ; 1165 _ 7E, 35
        mov     edx, dword [eax+ecx*4]                  ; 1167 _ 8B. 14 88
        sub     ecx, 2                                  ; 116A _ 83. E9, 02
        test    edx, edx                                ; 116D _ 85. D2
        jz      ?_0145                                  ; 116F _ 74, 1B
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0143: cmp     ebx, dword [eax+ecx*4+4H]               ; 1178 _ 3B. 5C 88, 04
        jz      ?_0146                                  ; 117C _ 74, 1A
        cmp     edi, edx                                ; 117E _ 39. D7
        jz      ?_0147                                  ; 1180 _ 74, 1A
?_0144: mov     edx, dword [eax+ecx*4]                  ; 1182 _ 8B. 14 88
        sub     ecx, 2                                  ; 1185 _ 83. E9, 02
        test    edx, edx                                ; 1188 _ 85. D2
        jnz     ?_0143                                  ; 118A _ 75, EC
?_0145: test    ecx, ecx                                ; 118C _ 85. C9
        jg      ?_0144                                  ; 118E _ 7F, F2
        jmp     ?_0147                                  ; 1190 _ EB, 0A

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0146: cmp     edx, edi                                ; 1198 _ 39. FA
        jz      ?_0152                                  ; 119A _ 74, 4E
?_0147: lea     edx, [eax+ebp*4]                        ; 119C _ 8D. 14 A8
        mov     ecx, dword [edx]                        ; 119F _ 8B. 0A
        test    ecx, ecx                                ; 11A1 _ 85. C9
        jz      ?_0149                                  ; 11A3 _ 74, 18
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0148: sub     edx, 8                                  ; 11A8 _ 83. EA, 08
        sub     ebp, 2                                  ; 11AB _ 83. ED, 02
        cmp     ebx, dword [edx+4H]                     ; 11AE _ 3B. 5A, 04
        je      ?_0154                                  ; 11B1 _ 0F 84, 00000083
        mov     ecx, dword [edx]                        ; 11B7 _ 8B. 0A
        test    ecx, ecx                                ; 11B9 _ 85. C9
        jnz     ?_0148                                  ; 11BB _ 75, EB
?_0149: mov     eax, dword [eax+ebp*4-4H]               ; 11BD _ 8B. 44 A8, FC
        mov     eax, dword [eax+8H]                     ; 11C1 _ 8B. 40, 08
        test    eax, eax                                ; 11C4 _ 85. C0
        je      ?_0156                                  ; 11C6 _ 0F 84, 000000AA
?_0150: lea     ebp, [esi+10068H]                       ; 11CC _ 8D. AE, 00010068
        mov     edx, ebx                                ; 11D2 _ 89. DA
        mov     eax, ebp                                ; 11D4 _ 89. E8
        call    listAppend                              ; 11D6 _ E8, FFFFEE65
        test    eax, eax                                ; 11DB _ 85. C0
        mov     dword [esi+8H], eax                     ; 11DD _ 89. 46, 08
        jz      ?_0155                                  ; 11E0 _ 74, 6C
?_0151: add     esp, 28                                 ; 11E2 _ 83. C4, 1C
        pop     ebx                                     ; 11E5 _ 5B
        pop     esi                                     ; 11E6 _ 5E
        pop     edi                                     ; 11E7 _ 5F
        pop     ebp                                     ; 11E8 _ 5D
        ret                                             ; 11E9 _ C3

?_0152: mov     dword [esi+8H], 0                       ; 11EA _ C7. 46, 08, 00000000
        add     esp, 28                                 ; 11F1 _ 83. C4, 1C
        xor     eax, eax                                ; 11F4 _ 31. C0
        pop     ebx                                     ; 11F6 _ 5B
        pop     esi                                     ; 11F7 _ 5E
        pop     edi                                     ; 11F8 _ 5F
        pop     ebp                                     ; 11F9 _ 5D
        ret                                             ; 11FA _ C3

?_0153: mov     ecx, 1                                  ; 11FB _ B9, 00000001
        mov     eax, esi                                ; 1200 _ 89. F0
        call    storePrefix                             ; 1202 _ E8, FFFFF439
        test    eax, eax                                ; 1207 _ 85. C0
        je      ?_0157                                  ; 1209 _ 0F 84, 00000084
        lea     edx, [esi+8H]                           ; 120F _ 8D. 56, 08
        mov     ecx, eax                                ; 1212 _ 89. C1
        mov     eax, esi                                ; 1214 _ 89. F0
        mov     dword [esp+4H], edx                     ; 1216 _ 89. 54 24, 04
        mov     edx, dword [ebx+4H]                     ; 121A _ 8B. 53, 04
        mov     dword [esp], edx                        ; 121D _ 89. 14 24
        xor     edx, edx                                ; 1220 _ 31. D2
        call    declareAttribute                        ; 1222 _ E8, FFFFEFD9
        mov     edi, eax                                ; 1227 _ 89. C7
        mov     eax, dword [esi+8H]                     ; 1229 _ 8B. 46, 08
        test    edi, edi                                ; 122C _ 85. FF
        jz      ?_0151                                  ; 122E _ 74, B2
        test    eax, eax                                ; 1230 _ 85. C0
        je      ?_0141                                  ; 1232 _ 0F 84, FFFFFF0A
        jmp     ?_0151                                  ; 1238 _ EB, A8

?_0154: mov     dword [esi+8H], 17                      ; 123A _ C7. 46, 08, 00000011
        add     esp, 28                                 ; 1241 _ 83. C4, 1C
        mov     eax, 17                                 ; 1244 _ B8, 00000011
        pop     ebx                                     ; 1249 _ 5B
        pop     esi                                     ; 124A _ 5E
        pop     edi                                     ; 124B _ 5F
        pop     ebp                                     ; 124C _ 5D
        ret                                             ; 124D _ C3

?_0155: mov     edx, edi                                ; 124E _ 89. FA
        mov     eax, ebp                                ; 1250 _ 89. E8
        call    listAppend                              ; 1252 _ E8, FFFFEDE9
        test    eax, eax                                ; 1257 _ 85. C0
        mov     dword [esi+8H], eax                     ; 1259 _ 89. 46, 08
        jnz     ?_0151                                  ; 125C _ 75, 84
        add     dword [ebx+8H], 1                       ; 125E _ 83. 43, 08, 01
        mov     dword [ebx+10H], edi                    ; 1262 _ 89. 7B, 10
        mov     eax, edi                                ; 1265 _ 89. F8
        mov     edx, dword [ebx+4H]                     ; 1267 _ 8B. 53, 04
        add     esp, 28                                 ; 126A _ 83. C4, 1C
        pop     ebx                                     ; 126D _ 5B
        pop     esi                                     ; 126E _ 5E
        pop     edi                                     ; 126F _ 5F
        pop     ebp                                     ; 1270 _ 5D
        jmp     addAttribute                            ; 1271 _ E9, FFFFF5CA

?_0156: cmp     dword [esi+10020H], edi                 ; 1276 _ 39. BE, 00010020
        jne     ?_0150                                  ; 127C _ 0F 85, FFFFFF4A
        mov     dword [esi+8H], 18                      ; 1282 _ C7. 46, 08, 00000012
        mov     eax, 18                                 ; 1289 _ B8, 00000012
        jmp     ?_0151                                  ; 128E _ E9, FFFFFF4F

?_0157: mov     eax, dword [esi+8H]                     ; 1293 _ 8B. 46, 08
        jmp     ?_0151                                  ; 1296 _ E9, FFFFFF47

?_0158: mov     edi, dword [eax+14H]                    ; 129B _ 8B. 78, 14
?_0159: mov     eax, dword [ebx+0CH]                    ; 129E _ 8B. 43, 0C
        test    eax, eax                                ; 12A1 _ 85. C0
        jne     ?_0142                                  ; 12A3 _ 0F 85, FFFFFEA9
        mov     ebp, dword [ebx+8H]                     ; 12A9 _ 8B. 6B, 08
        test    ebp, ebp                                ; 12AC _ 85. ED
        jg      ?_0152                                  ; 12AE _ 0F 8F, FFFFFF36
        mov     edx, dword [esi+1006CH]                 ; 12B4 _ 8B. 96, 0001006C
        mov     eax, dword [esi+10074H]                 ; 12BA _ 8B. 86, 00010074
        lea     ebp, [edx-1H]                           ; 12C0 _ 8D. 6A, FF
        jmp     ?_0147                                  ; 12C3 _ E9, FFFFFED4

        nop                                             ; 12C8 _ 90
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8

unsetDefaultNamespace:; Local function
        push    ebp                                     ; 12D0 _ 55
        push    edi                                     ; 12D1 _ 57
        mov     edi, eax                                ; 12D2 _ 89. C7
        push    esi                                     ; 12D4 _ 56
        push    ebx                                     ; 12D5 _ 53
        sub     esp, 28                                 ; 12D6 _ 83. EC, 1C
        mov     ebp, dword [eax+1006CH]                 ; 12D9 _ 8B. A8, 0001006C
        lea     ebx, [ebp-1H]                           ; 12DF _ 8D. 5D, FF
        test    ebx, ebx                                ; 12E2 _ 85. DB
        jle     ?_0163                                  ; 12E4 _ 7E, 31
        mov     eax, dword [eax+10074H]                 ; 12E6 _ 8B. 80, 00010074
?_0160: lea     edx, [eax+ebx*4]                        ; 12EC _ 8D. 14 98
        jmp     ?_0162                                  ; 12EF _ EB, 19

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0161: mov     esi, dword [edx-4H]                     ; 12F8 _ 8B. 72, FC
        test    esi, esi                                ; 12FB _ 85. F6
        jz      ?_0164                                  ; 12FD _ 74, 21
        sub     edx, 8                                  ; 12FF _ 83. EA, 08
        cmp     ecx, dword [edi+10020H]                 ; 1302 _ 3B. 8F, 00010020
        jz      ?_0166                                  ; 1308 _ 74, 2E
?_0162: mov     ecx, dword [edx]                        ; 130A _ 8B. 0A
        sub     ebx, 2                                  ; 130C _ 83. EB, 02
        test    ecx, ecx                                ; 130F _ 85. C9
        jnz     ?_0161                                  ; 1311 _ 75, E5
        test    ebx, ebx                                ; 1313 _ 85. DB
        jg      ?_0160                                  ; 1315 _ 7F, D5
?_0163: xor     eax, eax                                ; 1317 _ 31. C0
        jmp     ?_0165                                  ; 1319 _ EB, 0E

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0164: mov     dword [edi+8H], 0                       ; 1320 _ C7. 47, 08, 00000000
        xor     eax, eax                                ; 1327 _ 31. C0
?_0165: add     esp, 28                                 ; 1329 _ 83. C4, 1C
        pop     ebx                                     ; 132C _ 5B
        pop     esi                                     ; 132D _ 5E
        pop     edi                                     ; 132E _ 5F
        pop     ebp                                     ; 132F _ 5D
        ret                                             ; 1330 _ C3

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0166: mov     edx, dword [edi+10070H]                 ; 1338 _ 8B. 97, 00010070
        mov     dword [esi+0CH], 1                      ; 133E _ C7. 46, 0C, 00000001
        cmp     ebp, edx                                ; 1345 _ 39. D5
        jge     ?_0174                                  ; 1347 _ 0F 8D, 000000F3
?_0167: lea     ecx, [ebp+1H]                           ; 134D _ 8D. 4D, 01
        mov     dword [edi+1006CH], ecx                 ; 1350 _ 89. 8F, 0001006C
        cmp     ecx, edx                                ; 1356 _ 39. D1
        mov     dword [eax+ebp*4], 0                    ; 1358 _ C7. 04 A8, 00000000
        mov     ebx, dword [edi+10020H]                 ; 135F _ 8B. 9F, 00010020
        mov     dword [edi+8H], 0                       ; 1365 _ C7. 47, 08, 00000000
        jge     ?_0169                                  ; 136C _ 7D, 31
        mov     esi, dword [edi+10074H]                 ; 136E _ 8B. B7, 00010074
?_0168: lea     eax, [ecx+1H]                           ; 1374 _ 8D. 41, 01
        mov     dword [edi+1006CH], eax                 ; 1377 _ 89. 87, 0001006C
        mov     dword [esi+ecx*4], ebx                  ; 137D _ 89. 1C 8E
        mov     edx, dword [edi+10018H]                 ; 1380 _ 8B. 97, 00010018
        mov     dword [edi+8H], 0                       ; 1386 _ C7. 47, 08, 00000000
        mov     eax, dword [edi+10020H]                 ; 138D _ 8B. 87, 00010020
        add     esp, 28                                 ; 1393 _ 83. C4, 1C
        pop     ebx                                     ; 1396 _ 5B
        pop     esi                                     ; 1397 _ 5E
        pop     edi                                     ; 1398 _ 5F
        pop     ebp                                     ; 1399 _ 5D
        jmp     addAttribute                            ; 139A _ E9, FFFFF4A1

?_0169: lea     eax, [edx+edx]                          ; 139F _ 8D. 04 12
        shl     edx, 3                                  ; 13A2 _ C1. E2, 03
        mov     dword [edi+10070H], eax                 ; 13A5 _ 89. 87, 00010070
        mov     eax, dword [edi+10068H]                 ; 13AB _ 8B. 87, 00010068
        mov     ecx, dword [eax+10010H]                 ; 13B1 _ 8B. 88, 00010010
        mov     eax, dword [eax+10228H]                 ; 13B7 _ 8B. 80, 00010228
        test    eax, eax                                ; 13BD _ 85. C0
        je      ?_0183                                  ; 13BF _ 0F 84, 0000017C
        mov     dword [esp+4H], edx                     ; 13C5 _ 89. 54 24, 04
        mov     dword [esp], ecx                        ; 13C9 _ 89. 0C 24
        call    eax                                     ; 13CC _ FF. D0
        mov     esi, eax                                ; 13CE _ 89. C6
?_0170: test    esi, esi                                ; 13D0 _ 85. F6
        je      ?_0182                                  ; 13D2 _ 0F 84, 00000158
        mov     ecx, dword [edi+1006CH]                 ; 13D8 _ 8B. 8F, 0001006C
        xor     edx, edx                                ; 13DE _ 31. D2
        lea     ebp, [ecx*4]                            ; 13E0 _ 8D. 2C 8D, 00000000
        test    ecx, ecx                                ; 13E7 _ 85. C9
        jle     ?_0172                                  ; 13E9 _ 7E, 13
?_0171: mov     eax, dword [edi+10074H]                 ; 13EB _ 8B. 87, 00010074
        mov     eax, dword [eax+edx]                    ; 13F1 _ 8B. 04 10
        mov     dword [esi+edx], eax                    ; 13F4 _ 89. 04 16
        add     edx, 4                                  ; 13F7 _ 83. C2, 04
        cmp     edx, ebp                                ; 13FA _ 39. EA
        jnz     ?_0171                                  ; 13FC _ 75, ED
?_0172: mov     eax, dword [edi+10068H]                 ; 13FE _ 8B. 87, 00010068
        mov     edx, dword [edi+10074H]                 ; 1404 _ 8B. 97, 00010074
        mov     ebp, dword [eax+1022CH]                 ; 140A _ 8B. A8, 0001022C
        test    ebp, ebp                                ; 1410 _ 85. ED
        je      ?_0181                                  ; 1412 _ 0F 84, 000000F7
        mov     dword [esp+4H], edx                     ; 1418 _ 89. 54 24, 04
        mov     eax, dword [eax+10010H]                 ; 141C _ 8B. 80, 00010010
        mov     dword [esp], eax                        ; 1422 _ 89. 04 24
        call    ebp                                     ; 1425 _ FF. D5
        mov     ecx, dword [edi+1006CH]                 ; 1427 _ 8B. 8F, 0001006C
?_0173: mov     dword [edi+10074H], esi                 ; 142D _ 89. B7, 00010074
        jmp     ?_0168                                  ; 1433 _ E9, FFFFFF3C

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0174: lea     eax, [edx+edx]                          ; 1440 _ 8D. 04 12
        shl     edx, 3                                  ; 1443 _ C1. E2, 03
        mov     dword [edi+10070H], eax                 ; 1446 _ 89. 87, 00010070
        mov     eax, dword [edi+10068H]                 ; 144C _ 8B. 87, 00010068
        mov     ecx, dword [eax+10010H]                 ; 1452 _ 8B. 88, 00010010
        mov     eax, dword [eax+10228H]                 ; 1458 _ 8B. 80, 00010228
        test    eax, eax                                ; 145E _ 85. C0
        je      ?_0180                                  ; 1460 _ 0F 84, 0000009A
        mov     dword [esp+4H], edx                     ; 1466 _ 89. 54 24, 04
        mov     dword [esp], ecx                        ; 146A _ 89. 0C 24
        call    eax                                     ; 146D _ FF. D0
        mov     ebx, eax                                ; 146F _ 89. C3
?_0175: test    ebx, ebx                                ; 1471 _ 85. DB
        je      ?_0182                                  ; 1473 _ 0F 84, 000000B7
        mov     ebp, dword [edi+1006CH]                 ; 1479 _ 8B. AF, 0001006C
        xor     edx, edx                                ; 147F _ 31. D2
        lea     ecx, [ebp*4]                            ; 1481 _ 8D. 0C AD, 00000000
        test    ebp, ebp                                ; 1488 _ 85. ED
        jle     ?_0177                                  ; 148A _ 7E, 13
?_0176: mov     eax, dword [edi+10074H]                 ; 148C _ 8B. 87, 00010074
        mov     eax, dword [eax+edx]                    ; 1492 _ 8B. 04 10
        mov     dword [ebx+edx], eax                    ; 1495 _ 89. 04 13
        add     edx, 4                                  ; 1498 _ 83. C2, 04
        cmp     edx, ecx                                ; 149B _ 39. CA
        jnz     ?_0176                                  ; 149D _ 75, ED
?_0177: mov     eax, dword [edi+10068H]                 ; 149F _ 8B. 87, 00010068
        mov     edx, dword [edi+10074H]                 ; 14A5 _ 8B. 97, 00010074
        mov     ecx, dword [eax+1022CH]                 ; 14AB _ 8B. 88, 0001022C
        test    ecx, ecx                                ; 14B1 _ 85. C9
        jz      ?_0179                                  ; 14B3 _ 74, 28
        mov     dword [esp+4H], edx                     ; 14B5 _ 89. 54 24, 04
        mov     eax, dword [eax+10010H]                 ; 14B9 _ 8B. 80, 00010010
        mov     dword [esp], eax                        ; 14BF _ 89. 04 24
        call    ecx                                     ; 14C2 _ FF. D1
        mov     ebp, dword [edi+1006CH]                 ; 14C4 _ 8B. AF, 0001006C
?_0178: mov     dword [edi+10074H], ebx                 ; 14CA _ 89. 9F, 00010074
        mov     edx, dword [edi+10070H]                 ; 14D0 _ 8B. 97, 00010070
        mov     eax, ebx                                ; 14D6 _ 89. D8
        jmp     ?_0167                                  ; 14D8 _ E9, FFFFFE70

?_0179: mov     ecx, dword [eax+10228H]                 ; 14DD _ 8B. 88, 00010228
        test    ecx, ecx                                ; 14E3 _ 85. C9
        jnz     ?_0178                                  ; 14E5 _ 75, E3
        mov     dword [esp], edx                        ; 14E7 _ 89. 14 24
        call    free                                    ; 14EA _ E8, FFFFFFFC(rel)
        mov     ebp, dword [edi+1006CH]                 ; 14EF _ 8B. AF, 0001006C
        jmp     ?_0178                                  ; 14F5 _ EB, D3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0180: mov     dword [esp], edx                        ; 1500 _ 89. 14 24
        call    malloc                                  ; 1503 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 1508 _ 89. C3
        jmp     ?_0175                                  ; 150A _ E9, FFFFFF62

?_0181: mov     eax, dword [eax+10228H]                 ; 150F _ 8B. 80, 00010228
        test    eax, eax                                ; 1515 _ 85. C0
        jne     ?_0173                                  ; 1517 _ 0F 85, FFFFFF10
        mov     dword [esp], edx                        ; 151D _ 89. 14 24
        call    free                                    ; 1520 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [edi+1006CH]                 ; 1525 _ 8B. 8F, 0001006C
        jmp     ?_0173                                  ; 152B _ E9, FFFFFEFD

?_0182: mov     dword [edi+8H], 4                       ; 1530 _ C7. 47, 08, 00000004
        mov     eax, 4                                  ; 1537 _ B8, 00000004
        jmp     ?_0165                                  ; 153C _ E9, FFFFFDE8

?_0183: ; Local function
        mov     dword [esp], edx                        ; 1541 _ 89. 14 24
        call    malloc                                  ; 1544 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 1549 _ 89. C6
        jmp     ?_0170                                  ; 154B _ E9, FFFFFE80

writeStartTag:; Local function
        push    ebp                                     ; 1550 _ 55
        push    edi                                     ; 1551 _ 57
        push    esi                                     ; 1552 _ 56
        push    ebx                                     ; 1553 _ 53
        mov     ebx, eax                                ; 1554 _ 89. C3
        sub     esp, 28                                 ; 1556 _ 83. EC, 1C
        mov     esi, dword [eax+10024H]                 ; 1559 _ 8B. B0, 00010024
        mov     ebp, dword [eax+10054H]                 ; 155F _ 8B. A8, 00010054
        mov     eax, dword [esi+8H]                     ; 1565 _ 8B. 46, 08
        test    eax, eax                                ; 1568 _ 85. C0
        je      ?_0212                                  ; 156A _ 0F 84, 000003C0
        xor     edx, edx                                ; 1570 _ 31. D2
        call    addNamespace                            ; 1572 _ E8, FFFFFBA9
?_0184: mov     edx, dword [ebx+4H]                     ; 1577 _ 8B. 53, 04
        mov     dword [ebx+8H], 0                       ; 157A _ C7. 43, 08, 00000000
        test    edx, edx                                ; 1581 _ 85. D2
        je      ?_0205                                  ; 1583 _ 0F 84, 0000027F
        mov     dword [esp+4H], ?_0851                  ; 1589 _ C7. 44 24, 04, 0000000F(d)
        mov     eax, dword [ebx+10010H]                 ; 1591 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 1597 _ 89. 04 24
        call    near [edx]                              ; 159A _ FF. 12
        mov     edi, eax                                ; 159C _ 89. C7
?_0185: test    edi, edi                                ; 159E _ 85. FF
        mov     dword [ebx+8H], edi                     ; 15A0 _ 89. 7B, 08
        jnz     ?_0188                                  ; 15A3 _ 75, 3D
        mov     eax, dword [esi+8H]                     ; 15A5 _ 8B. 46, 08
        test    eax, eax                                ; 15A8 _ 85. C0
        jz      ?_0191                                  ; 15AA _ 74, 6B
        mov     eax, dword [eax+10H]                    ; 15AC _ 8B. 40, 10
        cmp     eax, dword [ebx+10020H]                 ; 15AF _ 3B. 83, 00010020
        jz      ?_0191                                  ; 15B5 _ 74, 60
        mov     eax, dword [eax+4H]                     ; 15B7 _ 8B. 40, 04
        lea     edx, [eax+6H]                           ; 15BA _ 8D. 50, 06
        mov     eax, dword [ebx+4H]                     ; 15BD _ 8B. 43, 04
        test    eax, eax                                ; 15C0 _ 85. C0
        je      ?_0214                                  ; 15C2 _ 0F 84, 00000388
        mov     dword [esp+4H], edx                     ; 15C8 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 15CC _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 15D2 _ 89. 14 24
        call    near [eax]                              ; 15D5 _ FF. 10
        mov     edx, eax                                ; 15D7 _ 89. C2
?_0186: test    edx, edx                                ; 15D9 _ 85. D2
        mov     dword [ebx+8H], edx                     ; 15DB _ 89. 53, 08
        jz      ?_0189                                  ; 15DE _ 74, 10
?_0187: mov     edi, edx                                ; 15E0 _ 89. D7
?_0188: add     esp, 28                                 ; 15E2 _ 83. C4, 1C
        mov     eax, edi                                ; 15E5 _ 89. F8
        pop     ebx                                     ; 15E7 _ 5B
        pop     esi                                     ; 15E8 _ 5E
        pop     edi                                     ; 15E9 _ 5F
        pop     ebp                                     ; 15EA _ 5D
        ret                                             ; 15EB _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0189: mov     eax, dword [ebx+4H]                     ; 15F0 _ 8B. 43, 04
        test    eax, eax                                ; 15F3 _ 85. C0
        je      ?_0220                                  ; 15F5 _ 0F 84, 000003D5
        mov     dword [esp+4H], ?_0852                  ; 15FB _ C7. 44 24, 04, 00000011(d)
        mov     edx, dword [ebx+10010H]                 ; 1603 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 1609 _ 89. 14 24
        call    near [eax]                              ; 160C _ FF. 10
        mov     edx, eax                                ; 160E _ 89. C2
?_0190: test    edx, edx                                ; 1610 _ 85. D2
        mov     dword [ebx+8H], edx                     ; 1612 _ 89. 53, 08
        jnz     ?_0187                                  ; 1615 _ 75, C9
?_0191: mov     eax, dword [ebx+4H]                     ; 1617 _ 8B. 43, 04
        mov     edx, dword [esi+4H]                     ; 161A _ 8B. 56, 04
        test    eax, eax                                ; 161D _ 85. C0
        je      ?_0215                                  ; 161F _ 0F 84, 0000034B
        mov     dword [esp+4H], edx                     ; 1625 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 1629 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 162F _ 89. 14 24
        call    near [eax]                              ; 1632 _ FF. 10
        mov     edi, eax                                ; 1634 _ 89. C7
?_0192: test    edi, edi                                ; 1636 _ 85. FF
        mov     dword [ebx+8H], edi                     ; 1638 _ 89. 7B, 08
        jnz     ?_0188                                  ; 163B _ 75, A5
        mov     edx, dword [ebx+1004CH]                 ; 163D _ 8B. 93, 0001004C
        test    edx, edx                                ; 1643 _ 85. D2
        jle     ?_0217                                  ; 1645 _ 0F 8E, 00000349
        xor     esi, esi                                ; 164B _ 31. F6
        mov     dword [esp+0CH], edi                    ; 164D _ 89. 7C 24, 0C
        jmp     ?_0203                                  ; 1651 _ E9, 00000153

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0193: mov     dword [esp+4H], ?_0853                  ; 1660 _ C7. 44 24, 04, 00000013(d)
        mov     edx, dword [ebx+10010H]                 ; 1668 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 166E _ 89. 14 24
        call    near [eax]                              ; 1671 _ FF. 10
        mov     edi, eax                                ; 1673 _ 89. C7
?_0194: test    edi, edi                                ; 1675 _ 85. FF
        mov     dword [ebx+8H], edi                     ; 1677 _ 89. 7B, 08
        jne     ?_0213                                  ; 167A _ 0F 85, 000002C0
        mov     ecx, dword [ebp+esi*4]                  ; 1680 _ 8B. 4C B5, 00
        mov     eax, dword [ecx+8H]                     ; 1684 _ 8B. 41, 08
        test    eax, eax                                ; 1687 _ 85. C0
        jz      ?_0197                                  ; 1689 _ 74, 5F
        mov     eax, dword [eax+10H]                    ; 168B _ 8B. 40, 10
        mov     eax, dword [eax+4H]                     ; 168E _ 8B. 40, 04
        lea     ecx, [eax+6H]                           ; 1691 _ 8D. 48, 06
        mov     eax, dword [ebx+4H]                     ; 1694 _ 8B. 43, 04
        test    eax, eax                                ; 1697 _ 85. C0
        je      ?_0210                                  ; 1699 _ 0F 84, 00000239
        mov     dword [esp+4H], ecx                     ; 169F _ 89. 4C 24, 04
        mov     ecx, dword [ebx+10010H]                 ; 16A3 _ 8B. 8B, 00010010
        mov     dword [esp], ecx                        ; 16A9 _ 89. 0C 24
        call    near [eax]                              ; 16AC _ FF. 10
        mov     ecx, eax                                ; 16AE _ 89. C1
?_0195: test    ecx, ecx                                ; 16B0 _ 85. C9
        mov     dword [ebx+8H], ecx                     ; 16B2 _ 89. 4B, 08
        jne     ?_0219                                  ; 16B5 _ 0F 85, 00000305
        mov     eax, dword [ebx+4H]                     ; 16BB _ 8B. 43, 04
        test    eax, eax                                ; 16BE _ 85. C0
        je      ?_0211                                  ; 16C0 _ 0F 84, 0000023A
        mov     dword [esp+4H], ?_0852                  ; 16C6 _ C7. 44 24, 04, 00000011(d)
        mov     ecx, dword [ebx+10010H]                 ; 16CE _ 8B. 8B, 00010010
        mov     dword [esp], ecx                        ; 16D4 _ 89. 0C 24
        call    near [eax]                              ; 16D7 _ FF. 10
        mov     ecx, eax                                ; 16D9 _ 89. C1
?_0196: test    ecx, ecx                                ; 16DB _ 85. C9
        mov     dword [ebx+8H], ecx                     ; 16DD _ 89. 4B, 08
        jne     ?_0219                                  ; 16E0 _ 0F 85, 000002DA
        mov     ecx, dword [ebp+esi*4]                  ; 16E6 _ 8B. 4C B5, 00
?_0197: mov     eax, dword [ebx+4H]                     ; 16EA _ 8B. 43, 04
        mov     ecx, dword [ecx+4H]                     ; 16ED _ 8B. 49, 04
        test    eax, eax                                ; 16F0 _ 85. C0
        je      ?_0206                                  ; 16F2 _ 0F 84, 00000140
        mov     dword [esp+4H], ecx                     ; 16F8 _ 89. 4C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 16FC _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 1702 _ 89. 14 24
        call    near [eax]                              ; 1705 _ FF. 10
        mov     edi, eax                                ; 1707 _ 89. C7
?_0198: test    edi, edi                                ; 1709 _ 85. FF
        mov     dword [ebx+8H], edi                     ; 170B _ 89. 7B, 08
        jne     ?_0213                                  ; 170E _ 0F 85, 0000022C
        mov     eax, dword [ebx+4H]                     ; 1714 _ 8B. 43, 04
        test    eax, eax                                ; 1717 _ 85. C0
        je      ?_0207                                  ; 1719 _ 0F 84, 00000141
        mov     dword [esp+4H], ?_0854                  ; 171F _ C7. 44 24, 04, 00000015(d)
        mov     edx, dword [ebx+10010H]                 ; 1727 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 172D _ 89. 14 24
        call    near [eax]                              ; 1730 _ FF. 10
        mov     edi, eax                                ; 1732 _ 89. C7
?_0199: test    edi, edi                                ; 1734 _ 85. FF
        mov     dword [ebx+8H], edi                     ; 1736 _ 89. 7B, 08
        jne     ?_0213                                  ; 1739 _ 0F 85, 00000201
        mov     eax, dword [ebp+esi*4]                  ; 173F _ 8B. 44 B5, 00
        mov     ecx, dword [eax+0CH]                    ; 1743 _ 8B. 48, 0C
        mov     eax, dword [ebx+4H]                     ; 1746 _ 8B. 43, 04
        test    eax, eax                                ; 1749 _ 85. C0
        je      ?_0208                                  ; 174B _ 0F 84, 00000137
        mov     dword [esp+4H], ecx                     ; 1751 _ 89. 4C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 1755 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 175B _ 89. 14 24
        call    near [eax]                              ; 175E _ FF. 10
        mov     edi, eax                                ; 1760 _ 89. C7
?_0200: test    edi, edi                                ; 1762 _ 85. FF
        mov     dword [ebx+8H], edi                     ; 1764 _ 89. 7B, 08
        jne     ?_0213                                  ; 1767 _ 0F 85, 000001D3
        mov     eax, dword [ebx+4H]                     ; 176D _ 8B. 43, 04
        test    eax, eax                                ; 1770 _ 85. C0
        je      ?_0209                                  ; 1772 _ 0F 84, 00000138
        mov     dword [esp+4H], ?_0855                  ; 1778 _ C7. 44 24, 04, 00000018(d)
        mov     edx, dword [ebx+10010H]                 ; 1780 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 1786 _ 89. 14 24
        call    near [eax]                              ; 1789 _ FF. 10
        mov     edi, eax                                ; 178B _ 89. C7
?_0201: test    edi, edi                                ; 178D _ 85. FF
        mov     dword [ebx+8H], edi                     ; 178F _ 89. 7B, 08
        jne     ?_0213                                  ; 1792 _ 0F 85, 000001A8
        mov     edx, dword [ebx+1004CH]                 ; 1798 _ 8B. 93, 0001004C
?_0202: add     esi, 1                                  ; 179E _ 83. C6, 01
        cmp     esi, edx                                ; 17A1 _ 39. D6
        jge     ?_0216                                  ; 17A3 _ 0F 8D, 000001E7
?_0203: mov     eax, dword [ebp+esi*4]                  ; 17A9 _ 8B. 44 B5, 00
        mov     ecx, dword [eax+18H]                    ; 17AD _ 8B. 48, 18
        test    ecx, ecx                                ; 17B0 _ 85. C9
        jz      ?_0202                                  ; 17B2 _ 74, EA
        mov     eax, dword [eax+8H]                     ; 17B4 _ 8B. 40, 08
        test    eax, eax                                ; 17B7 _ 85. C0
        jz      ?_0204                                  ; 17B9 _ 74, 16
        mov     edx, dword [eax+0CH]                    ; 17BB _ 8B. 50, 0C
        test    edx, edx                                ; 17BE _ 85. D2
        jz      ?_0204                                  ; 17C0 _ 74, 0F
        mov     ecx, dword [ebx+10020H]                 ; 17C2 _ 8B. 8B, 00010020
        cmp     dword [eax+10H], ecx                    ; 17C8 _ 39. 48, 10
        je      ?_0221                                  ; 17CB _ 0F 84, 00000229
?_0204: mov     eax, dword [ebx+4H]                     ; 17D1 _ 8B. 43, 04
        test    eax, eax                                ; 17D4 _ 85. C0
        jne     ?_0193                                  ; 17D6 _ 0F 85, FFFFFE84
        mov     eax, dword [ebx]                        ; 17DC _ 8B. 03
        mov     dword [esp], ?_0853                     ; 17DE _ C7. 04 24, 00000013(d)
        mov     edi, 10                                 ; 17E5 _ BF, 0000000A
        mov     dword [esp+4H], eax                     ; 17EA _ 89. 44 24, 04
        call    fputs                                   ; 17EE _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 17F3 _ 83. F8, FF
        mov     eax, 0                                  ; 17F6 _ B8, 00000000
        cmovne  edi, eax                                ; 17FB _ 0F 45. F8
        jmp     ?_0194                                  ; 17FE _ E9, FFFFFE72

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0205: mov     eax, dword [ebx]                        ; 1808 _ 8B. 03
        mov     dword [esp], ?_0851                     ; 180A _ C7. 04 24, 0000000F(d)
        mov     edi, 10                                 ; 1811 _ BF, 0000000A
        mov     dword [esp+8H], edx                     ; 1816 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 181A _ 89. 44 24, 04
        call    fputs                                   ; 181E _ E8, FFFFFFFC(rel)
        mov     edx, dword [esp+8H]                     ; 1823 _ 8B. 54 24, 08
        cmp     eax, -1                                 ; 1827 _ 83. F8, FF
        cmovne  edi, edx                                ; 182A _ 0F 45. FA
        jmp     ?_0185                                  ; 182D _ E9, FFFFFD6C

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0206: mov     eax, dword [ebx]                        ; 1838 _ 8B. 03
        mov     dword [esp], ecx                        ; 183A _ 89. 0C 24
        mov     dword [esp+4H], eax                     ; 183D _ 89. 44 24, 04
        call    fputs                                   ; 1841 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 1846 _ 83. F8, FF
        mov     eax, 10                                 ; 1849 _ B8, 0000000A
        cmove   edi, eax                                ; 184E _ 0F 44. F8
        jmp     ?_0198                                  ; 1851 _ E9, FFFFFEB3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0207: mov     eax, dword [ebx]                        ; 1860 _ 8B. 03
        mov     dword [esp], ?_0854                     ; 1862 _ C7. 04 24, 00000015(d)
        mov     dword [esp+4H], eax                     ; 1869 _ 89. 44 24, 04
        call    fputs                                   ; 186D _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 1872 _ 83. F8, FF
        mov     eax, 10                                 ; 1875 _ B8, 0000000A
        cmove   edi, eax                                ; 187A _ 0F 44. F8
        jmp     ?_0199                                  ; 187D _ E9, FFFFFEB2

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0208: mov     eax, dword [ebx]                        ; 1888 _ 8B. 03
        mov     dword [esp], ecx                        ; 188A _ 89. 0C 24
        mov     dword [esp+4H], eax                     ; 188D _ 89. 44 24, 04
        call    fputs                                   ; 1891 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 1896 _ 83. F8, FF
        mov     eax, 10                                 ; 1899 _ B8, 0000000A
        cmove   edi, eax                                ; 189E _ 0F 44. F8
        jmp     ?_0200                                  ; 18A1 _ E9, FFFFFEBC

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0209: mov     eax, dword [ebx]                        ; 18B0 _ 8B. 03
        mov     dword [esp], ?_0855                     ; 18B2 _ C7. 04 24, 00000018(d)
        mov     dword [esp+4H], eax                     ; 18B9 _ 89. 44 24, 04
        call    fputs                                   ; 18BD _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 18C2 _ 83. F8, FF
        mov     eax, 10                                 ; 18C5 _ B8, 0000000A
        cmove   edi, eax                                ; 18CA _ 0F 44. F8
        jmp     ?_0201                                  ; 18CD _ E9, FFFFFEBB

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0210: mov     eax, dword [ebx]                        ; 18D8 _ 8B. 03
        mov     dword [esp], ecx                        ; 18DA _ 89. 0C 24
        mov     dword [esp+4H], eax                     ; 18DD _ 89. 44 24, 04
        call    fputs                                   ; 18E1 _ E8, FFFFFFFC(rel)
        mov     ecx, 10                                 ; 18E6 _ B9, 0000000A
        cmp     eax, -1                                 ; 18EB _ 83. F8, FF
        mov     eax, 0                                  ; 18EE _ B8, 00000000
        cmovne  ecx, eax                                ; 18F3 _ 0F 45. C8
        jmp     ?_0195                                  ; 18F6 _ E9, FFFFFDB5

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0211: mov     eax, dword [ebx]                        ; 1900 _ 8B. 03
        mov     dword [esp], ?_0852                     ; 1902 _ C7. 04 24, 00000011(d)
        mov     dword [esp+8H], ecx                     ; 1909 _ 89. 4C 24, 08
        mov     dword [esp+4H], eax                     ; 190D _ 89. 44 24, 04
        call    fputs                                   ; 1911 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [esp+8H]                     ; 1916 _ 8B. 4C 24, 08
        cmp     eax, -1                                 ; 191A _ 83. F8, FF
        mov     eax, 10                                 ; 191D _ B8, 0000000A
        cmove   ecx, eax                                ; 1922 _ 0F 44. C8
        jmp     ?_0196                                  ; 1925 _ E9, FFFFFDB1

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0212: mov     eax, ebx                                ; 1930 _ 89. D8
        call    unsetDefaultNamespace                   ; 1932 _ E8, FFFFF999
        jmp     ?_0184                                  ; 1937 _ E9, FFFFFC3B

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0213: mov     edx, edi                                ; 1940 _ 89. FA
        mov     edi, edx                                ; 1942 _ 89. D7
        jmp     ?_0188                                  ; 1944 _ E9, FFFFFC99

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0214: mov     eax, dword [ebx]                        ; 1950 _ 8B. 03
        mov     dword [esp], edx                        ; 1952 _ 89. 14 24
        mov     dword [esp+4H], eax                     ; 1955 _ 89. 44 24, 04
        call    fputs                                   ; 1959 _ E8, FFFFFFFC(rel)
        mov     edx, 10                                 ; 195E _ BA, 0000000A
        cmp     eax, -1                                 ; 1963 _ 83. F8, FF
        cmovne  edx, edi                                ; 1966 _ 0F 45. D7
        jmp     ?_0186                                  ; 1969 _ E9, FFFFFC6B

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0215: mov     eax, dword [ebx]                        ; 1970 _ 8B. 03
        mov     dword [esp], edx                        ; 1972 _ 89. 14 24
        mov     dword [esp+4H], eax                     ; 1975 _ 89. 44 24, 04
        call    fputs                                   ; 1979 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 197E _ 83. F8, FF
        mov     eax, 10                                 ; 1981 _ B8, 0000000A
        cmove   edi, eax                                ; 1986 _ 0F 44. F8
        jmp     ?_0192                                  ; 1989 _ E9, FFFFFCA8

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0216: mov     edi, dword [esp+0CH]                    ; 1990 _ 8B. 7C 24, 0C
?_0217: mov     eax, dword [ebx+4H]                     ; 1994 _ 8B. 43, 04
        test    eax, eax                                ; 1997 _ 85. C0
        jz      ?_0222                                  ; 1999 _ 74, 70
        mov     dword [esp+4H], ?_0856                  ; 199B _ C7. 44 24, 04, 0000001A(d)
        mov     edx, dword [ebx+10010H]                 ; 19A3 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 19A9 _ 89. 14 24
        call    near [eax]                              ; 19AC _ FF. 10
        mov     edi, eax                                ; 19AE _ 89. C7
?_0218: mov     dword [ebx+8H], edi                     ; 19B0 _ 89. 7B, 08
        jmp     ?_0188                                  ; 19B3 _ E9, FFFFFC2A

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0219: mov     edi, ecx                                ; 19C0 _ 89. CF
        jmp     ?_0188                                  ; 19C2 _ E9, FFFFFC1B

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0220: mov     eax, dword [ebx]                        ; 19D0 _ 8B. 03
        mov     dword [esp], ?_0852                     ; 19D2 _ C7. 04 24, 00000011(d)
        mov     dword [esp+8H], edx                     ; 19D9 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 19DD _ 89. 44 24, 04
        call    fputs                                   ; 19E1 _ E8, FFFFFFFC(rel)
        mov     edx, dword [esp+8H]                     ; 19E6 _ 8B. 54 24, 08
        cmp     eax, -1                                 ; 19EA _ 83. F8, FF
        mov     eax, 10                                 ; 19ED _ B8, 0000000A
        cmove   edx, eax                                ; 19F2 _ 0F 44. D0
        jmp     ?_0190                                  ; 19F5 _ E9, FFFFFC16

?_0221: mov     dword [ebx+8H], 16                      ; 19FA _ C7. 43, 08, 00000010
        mov     edi, 16                                 ; 1A01 _ BF, 00000010
        jmp     ?_0188                                  ; 1A06 _ E9, FFFFFBD7

?_0222: ; Local function
        mov     eax, dword [ebx]                        ; 1A0B _ 8B. 03
        mov     dword [esp], ?_0856                     ; 1A0D _ C7. 04 24, 0000001A(d)
        mov     dword [esp+4H], eax                     ; 1A14 _ 89. 44 24, 04
        call    fputs                                   ; 1A18 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 1A1D _ 83. F8, FF
        mov     eax, 10                                 ; 1A20 _ B8, 0000000A
        cmove   edi, eax                                ; 1A25 _ 0F 44. F8
        jmp     ?_0218                                  ; 1A28 _ EB, 86

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8

genxNextUnicodeChar:; Function begin
        push    ebp                                     ; 1A30 _ 55
        push    edi                                     ; 1A31 _ 57
        push    esi                                     ; 1A32 _ 56
        push    ebx                                     ; 1A33 _ 53
        sub     esp, 4                                  ; 1A34 _ 83. EC, 04
        mov     ecx, dword [esp+18H]                    ; 1A37 _ 8B. 4C 24, 18
        mov     edx, dword [ecx]                        ; 1A3B _ 8B. 11
        movzx   eax, byte [edx]                         ; 1A3D _ 0F B6. 02
        test    al, al                                  ; 1A40 _ 84. C0
        je      ?_0239                                  ; 1A42 _ 0F 84, 000001A8
        js      ?_0225                                  ; 1A48 _ 78, 16
        add     edx, 1                                  ; 1A4A _ 83. C2, 01
?_0223: mov     dword [ecx], edx                        ; 1A4D _ 89. 11
?_0224: add     esp, 4                                  ; 1A4F _ 83. C4, 04
        pop     ebx                                     ; 1A52 _ 5B
        pop     esi                                     ; 1A53 _ 5E
        pop     edi                                     ; 1A54 _ 5F
        pop     ebp                                     ; 1A55 _ 5D
        ret                                             ; 1A56 _ C3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0225: cmp     al, -63                                 ; 1A60 _ 3C, C1
        jbe     ?_0240                                  ; 1A62 _ 0F 86, 00000198
        cmp     al, -33                                 ; 1A68 _ 3C, DF
        ja      ?_0226                                  ; 1A6A _ 77, 24
        movzx   ebx, byte [edx+1H]                      ; 1A6C _ 0F B6. 5A, 01
        mov     esi, eax                                ; 1A70 _ 89. C6
        and     esi, 1FH                                ; 1A72 _ 83. E6, 1F
        shl     esi, 6                                  ; 1A75 _ C1. E6, 06
        lea     eax, [ebx-80H]                          ; 1A78 _ 8D. 43, 80
        cmp     al, 63                                  ; 1A7B _ 3C, 3F
        ja      ?_0241                                  ; 1A7D _ 0F 87, 00000182
        mov     eax, ebx                                ; 1A83 _ 89. D8
        add     edx, 2                                  ; 1A85 _ 83. C2, 02
        and     eax, 3FH                                ; 1A88 _ 83. E0, 3F
        or      eax, esi                                ; 1A8B _ 09. F0
        jmp     ?_0223                                  ; 1A8D _ EB, BE

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0226: cmp     al, -17                                 ; 1A90 _ 3C, EF
        ja      ?_0228                                  ; 1A92 _ 77, 6C
        mov     esi, eax                                ; 1A94 _ 89. C6
        mov     dword [esp], eax                        ; 1A96 _ 89. 04 24
        movzx   ebx, byte [edx+1H]                      ; 1A99 _ 0F B6. 5A, 01
        lea     edi, [edx+1H]                           ; 1A9D _ 8D. 7A, 01
        shl     esi, 12                                 ; 1AA0 _ C1. E6, 0C
        cmp     eax, 224                                ; 1AA3 _ 3D, 000000E0
        movzx   esi, si                                 ; 1AA8 _ 0F B7. F6
        je      ?_0230                                  ; 1AAB _ 0F 84, 000000DF
        cmp     dword [esp], 236                        ; 1AB1 _ 81. 3C 24, 000000EC
        jle     ?_0231                                  ; 1AB8 _ 0F 8E, 000000DB
        cmp     dword [esp], 237                        ; 1ABE _ 81. 3C 24, 000000ED
        jne     ?_0232                                  ; 1AC5 _ 0F 85, 000000D7
        lea     eax, [ebx-80H]                          ; 1ACB _ 8D. 43, 80
        cmp     al, 31                                  ; 1ACE _ 3C, 1F
        ja      ?_0233                                  ; 1AD0 _ 0F 87, 000000E4
?_0227: mov     edi, ebx                                ; 1AD6 _ 89. DF
        movzx   ebx, byte [edx+2H]                      ; 1AD8 _ 0F B6. 5A, 02
        and     edi, 3FH                                ; 1ADC _ 83. E7, 3F
        shl     edi, 6                                  ; 1ADF _ C1. E7, 06
        lea     eax, [ebx-80H]                          ; 1AE2 _ 8D. 43, 80
        cmp     al, 63                                  ; 1AE5 _ 3C, 3F
        ja      ?_0242                                  ; 1AE7 _ 0F 87, 0000011D
        mov     eax, ebx                                ; 1AED _ 89. D8
        add     edx, 3                                  ; 1AEF _ 83. C2, 03
        and     eax, 3FH                                ; 1AF2 _ 83. E0, 3F
        or      eax, esi                                ; 1AF5 _ 09. F0
        or      eax, edi                                ; 1AF7 _ 09. F8
        jmp     ?_0223                                  ; 1AF9 _ E9, FFFFFF4F

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0228: cmp     al, -12                                 ; 1B00 _ 3C, F4
        ja      ?_0240                                  ; 1B02 _ 0F 87, 000000F8
        lea     esi, [edx+1H]                           ; 1B08 _ 8D. 72, 01
        movzx   ebx, al                                 ; 1B0B _ 0F B6. D8
        and     eax, 07H                                ; 1B0E _ 83. E0, 07
        mov     dword [esp], eax                        ; 1B11 _ 89. 04 24
        shl     dword [esp], 18                         ; 1B14 _ C1. 24 24, 12
        cmp     ebx, 240                                ; 1B18 _ 81. FB, 000000F0
        je      ?_0236                                  ; 1B1E _ 0F 84, 000000AC
        cmp     ebx, 244                                ; 1B24 _ 81. FB, 000000F4
        movzx   ebx, byte [edx+1H]                      ; 1B2A _ 0F B6. 5A, 01
        jne     ?_0237                                  ; 1B2E _ 0F 85, 000000A9
        lea     edi, [ebx-80H]                          ; 1B34 _ 8D. 7B, 80
        mov     eax, edi                                ; 1B37 _ 89. F8
        cmp     al, 15                                  ; 1B39 _ 3C, 0F
        ja      ?_0238                                  ; 1B3B _ 0F 87, 000000A9
?_0229: mov     esi, ebx                                ; 1B41 _ 89. DE
        movzx   ebx, byte [edx+2H]                      ; 1B43 _ 0F B6. 5A, 02
        and     esi, 3FH                                ; 1B47 _ 83. E6, 3F
        shl     esi, 12                                 ; 1B4A _ C1. E6, 0C
        lea     edi, [ebx-80H]                          ; 1B4D _ 8D. 7B, 80
        mov     eax, edi                                ; 1B50 _ 89. F8
        cmp     al, 63                                  ; 1B52 _ 3C, 3F
        ja      ?_0242                                  ; 1B54 _ 0F 87, 000000B0
        mov     edi, ebx                                ; 1B5A _ 89. DF
        movzx   ebx, byte [edx+3H]                      ; 1B5C _ 0F B6. 5A, 03
        and     edi, 3FH                                ; 1B60 _ 83. E7, 3F
        shl     edi, 6                                  ; 1B63 _ C1. E7, 06
        lea     ebp, [ebx-80H]                          ; 1B66 _ 8D. 6B, 80
        mov     eax, ebp                                ; 1B69 _ 89. E8
        cmp     al, 63                                  ; 1B6B _ 3C, 3F
        ja      ?_0243                                  ; 1B6D _ 0F 87, 0000009C
        mov     eax, dword [esp]                        ; 1B73 _ 8B. 04 24
        and     ebx, 3FH                                ; 1B76 _ 83. E3, 3F
        add     edx, 4                                  ; 1B79 _ 83. C2, 04
        or      eax, edi                                ; 1B7C _ 09. F8
        or      eax, ebx                                ; 1B7E _ 09. D8
        or      eax, esi                                ; 1B80 _ 09. F0
        jmp     ?_0223                                  ; 1B82 _ E9, FFFFFEC6

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0230: lea     ebp, [ebx+60H]                          ; 1B90 _ 8D. 6B, 60
        mov     eax, ebp                                ; 1B93 _ 89. E8
        cmp     al, 31                                  ; 1B95 _ 3C, 1F
        ja      ?_0233                                  ; 1B97 _ 77, 21
?_0231: lea     ebp, [ebx-80H]                          ; 1B99 _ 8D. 6B, 80
        mov     eax, ebp                                ; 1B9C _ 89. E8
        cmp     al, 63                                  ; 1B9E _ 3C, 3F
        ja      ?_0233                                  ; 1BA0 _ 77, 18
?_0232: cmp     dword [esp], 237                        ; 1BA2 _ 81. 3C 24, 000000ED
        jle     ?_0227                                  ; 1BA9 _ 0F 8E, FFFFFF27
        lea     eax, [ebx-80H]                          ; 1BAF _ 8D. 43, 80
        cmp     al, 63                                  ; 1BB2 _ 3C, 3F
        jbe     ?_0227                                  ; 1BB4 _ 0F 86, FFFFFF1C
?_0233: mov     edx, edi                                ; 1BBA _ 89. FA
?_0234: test    bl, bl                                  ; 1BBC _ 84. DB
        jnz     ?_0240                                  ; 1BBE _ 75, 40
?_0235: mov     dword [ecx], edx                        ; 1BC0 _ 89. 11
        mov     eax, 4294967295                         ; 1BC2 _ B8, FFFFFFFF
        jmp     ?_0224                                  ; 1BC7 _ E9, FFFFFE83

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0236: movzx   ebx, byte [edx+1H]                      ; 1BD0 _ 0F B6. 5A, 01
        lea     edi, [ebx+70H]                          ; 1BD4 _ 8D. 7B, 70
        mov     eax, edi                                ; 1BD7 _ 89. F8
        cmp     al, 47                                  ; 1BD9 _ 3C, 2F
        ja      ?_0238                                  ; 1BDB _ 77, 0D
?_0237: lea     edi, [ebx-80H]                          ; 1BDD _ 8D. 7B, 80
        mov     eax, edi                                ; 1BE0 _ 89. F8
        cmp     al, 63                                  ; 1BE2 _ 3C, 3F
        jbe     ?_0229                                  ; 1BE4 _ 0F 86, FFFFFF57
?_0238: mov     edx, esi                                ; 1BEA _ 89. F2
        jmp     ?_0234                                  ; 1BEC _ EB, CE

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0239: mov     eax, 4294967295                         ; 1BF0 _ B8, FFFFFFFF
        jmp     ?_0224                                  ; 1BF5 _ E9, FFFFFE55

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0240: add     edx, 1                                  ; 1C00 _ 83. C2, 01
        jmp     ?_0235                                  ; 1C03 _ EB, BB

?_0241: add     edx, 1                                  ; 1C05 _ 83. C2, 01
        jmp     ?_0234                                  ; 1C08 _ EB, B2

?_0242: add     edx, 2                                  ; 1C0A _ 83. C2, 02
        jmp     ?_0234                                  ; 1C0D _ EB, AD
; genxNextUnicodeChar End of function

?_0243: ; Local function
        add     edx, 3                                  ; 1C0F _ 83. C2, 03
        jmp     ?_0234                                  ; 1C12 _ EB, A8

; Filling space: 0CH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BFH
;       db 00H, 00H, 00H, 00H

ALIGN   16

genxDeclareNamespace.constprop.13:; Local function
        push    ebp                                     ; 1C20 _ 55
        push    edi                                     ; 1C21 _ 57
        push    esi                                     ; 1C22 _ 56
        push    ebx                                     ; 1C23 _ 53
        mov     ebx, edx                                ; 1C24 _ 89. D3
        sub     esp, 156                                ; 1C26 _ 81. EC, 0000009C
        mov     dword [esp+18H], eax                    ; 1C2C _ 89. 44 24, 18
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 1C30 _ 65: A1, 00000014
        mov     dword [esp+8CH], eax                    ; 1C36 _ 89. 84 24, 0000008C
        xor     eax, eax                                ; 1C3D _ 31. C0
        test    edx, edx                                ; 1C3F _ 85. D2
        mov     dword [esp+1CH], ecx                    ; 1C41 _ 89. 4C 24, 1C
        je      ?_0269                                  ; 1C45 _ 0F 84, 00000395
        movzx   edx, byte [edx]                         ; 1C4B _ 0F B6. 12
        mov     eax, ebx                                ; 1C4E _ 89. D8
        test    dl, dl                                  ; 1C50 _ 84. D2
        je      ?_0269                                  ; 1C52 _ 0F 84, 00000388
        mov     ebp, dword [esp+18H]                    ; 1C58 _ 8B. 6C 24, 18
        mov     dword [esp+14H], ebx                    ; 1C5C _ 89. 5C 24, 14
        jmp     ?_0246                                  ; 1C60 _ EB, 1E

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0244: movsx   edx, byte [ebp+edi+10H]                 ; 1C68 _ 0F BE. 54 3D, 10
?_0245: test    edx, edx                                ; 1C6D _ 85. D2
        je      ?_0280                                  ; 1C6F _ 0F 84, 00000455
        movzx   edx, byte [eax]                         ; 1C75 _ 0F B6. 10
        test    dl, dl                                  ; 1C78 _ 84. D2
        je      ?_0260                                  ; 1C7A _ 0F 84, 000001A0
?_0246: test    dl, dl                                  ; 1C80 _ 84. D2
        js      ?_0248                                  ; 1C82 _ 78, 1C
        add     eax, 1                                  ; 1C84 _ 83. C0, 01
        movzx   edi, dl                                 ; 1C87 _ 0F B6. FA
?_0247: cmp     edi, 65535                              ; 1C8A _ 81. FF, 0000FFFF
        jle     ?_0244                                  ; 1C90 _ 7E, D6
        xor     edx, edx                                ; 1C92 _ 31. D2
        cmp     edi, 1114111                            ; 1C94 _ 81. FF, 0010FFFF
        setle   dl                                      ; 1C9A _ 0F 9E. C2
        jmp     ?_0245                                  ; 1C9D _ EB, CE

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0248: cmp     dl, -63                                 ; 1CA0 _ 80. FA, C1
        jbe     ?_0250                                  ; 1CA3 _ 76, 73
        cmp     dl, -33                                 ; 1CA5 _ 80. FA, DF
        ja      ?_0249                                  ; 1CA8 _ 77, 26
        movzx   ecx, byte [eax+1H]                      ; 1CAA _ 0F B6. 48, 01
        and     edx, 1FH                                ; 1CAE _ 83. E2, 1F
        shl     edx, 6                                  ; 1CB1 _ C1. E2, 06
        lea     esi, [ecx-80H]                          ; 1CB4 _ 8D. 71, 80
        mov     ebx, esi                                ; 1CB7 _ 89. F3
        cmp     bl, 63                                  ; 1CB9 _ 80. FB, 3F
        ja      ?_0250                                  ; 1CBC _ 77, 5A
        mov     edi, ecx                                ; 1CBE _ 89. CF
        add     eax, 2                                  ; 1CC0 _ 83. C0, 02
        and     edi, 3FH                                ; 1CC3 _ 83. E7, 3F
        or      edi, edx                                ; 1CC6 _ 09. D7
        jmp     ?_0247                                  ; 1CC8 _ EB, C0

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0249: cmp     dl, -17                                 ; 1CD0 _ 80. FA, EF
        ja      ?_0254                                  ; 1CD3 _ 77, 7B
        mov     esi, edx                                ; 1CD5 _ 89. D6
        movzx   ecx, byte [eax+1H]                      ; 1CD7 _ 0F B6. 48, 01
        shl     esi, 12                                 ; 1CDB _ C1. E6, 0C
        cmp     edx, 224                                ; 1CDE _ 81. FA, 000000E0
        movzx   esi, si                                 ; 1CE4 _ 0F B7. F6
        je      ?_0256                                  ; 1CE7 _ 0F 84, 000000D3
        cmp     edx, 236                                ; 1CED _ 81. FA, 000000EC
        jle     ?_0257                                  ; 1CF3 _ 0F 8E, 000000D5
        cmp     edx, 237                                ; 1CF9 _ 81. FA, 000000ED
        jne     ?_0258                                  ; 1CFF _ 0F 85, 000000D7
        lea     edx, [ecx-80H]                          ; 1D05 _ 8D. 51, 80
        cmp     dl, 31                                  ; 1D08 _ 80. FA, 1F
        jbe     ?_0259                                  ; 1D0B _ 0F 86, 000000DF
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0250: mov     eax, 1                                  ; 1D18 _ B8, 00000001
?_0251: mov     ecx, dword [esp+18H]                    ; 1D1D _ 8B. 4C 24, 18
        mov     dword [ecx+8H], eax                     ; 1D21 _ 89. 41, 08
?_0252: mov     esi, dword [esp+1CH]                    ; 1D24 _ 8B. 74 24, 1C
        mov     dword [esi], eax                        ; 1D28 _ 89. 06
        xor     eax, eax                                ; 1D2A _ 31. C0
?_0253: mov     ecx, dword [esp+8CH]                    ; 1D2C _ 8B. 8C 24, 0000008C
; Note: Absolute memory address without relocation
        xor     ecx, dword [gs:14H]                     ; 1D33 _ 65: 33. 0D, 00000014
        jne     ?_0278                                  ; 1D3A _ 0F 85, 00000379
        add     esp, 156                                ; 1D40 _ 81. C4, 0000009C
        pop     ebx                                     ; 1D46 _ 5B
        pop     esi                                     ; 1D47 _ 5E
        pop     edi                                     ; 1D48 _ 5F
        pop     ebp                                     ; 1D49 _ 5D
        ret                                             ; 1D4A _ C3

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0254: cmp     dl, -12                                 ; 1D50 _ 80. FA, F4
        ja      ?_0250                                  ; 1D53 _ 77, C3
        movzx   ecx, dl                                 ; 1D55 _ 0F B6. CA
        and     edx, 07H                                ; 1D58 _ 83. E2, 07
        shl     edx, 18                                 ; 1D5B _ C1. E2, 12
        cmp     ecx, 240                                ; 1D5E _ 81. F9, 000000F0
        je      ?_0267                                  ; 1D64 _ 0F 84, 0000024E
        cmp     ecx, 244                                ; 1D6A _ 81. F9, 000000F4
        movzx   ecx, byte [eax+1H]                      ; 1D70 _ 0F B6. 48, 01
        jne     ?_0268                                  ; 1D74 _ 0F 85, 00000250
        lea     esi, [ecx-80H]                          ; 1D7A _ 8D. 71, 80
        mov     ebx, esi                                ; 1D7D _ 89. F3
        cmp     bl, 15                                  ; 1D7F _ 80. FB, 0F
        ja      ?_0250                                  ; 1D82 _ 77, 94
?_0255: movzx   esi, byte [eax+2H]                      ; 1D84 _ 0F B6. 70, 02
        and     ecx, 3FH                                ; 1D88 _ 83. E1, 3F
        shl     ecx, 12                                 ; 1D8B _ C1. E1, 0C
        lea     edi, [esi-80H]                          ; 1D8E _ 8D. 7E, 80
        mov     ebx, edi                                ; 1D91 _ 89. FB
        cmp     bl, 63                                  ; 1D93 _ 80. FB, 3F
        ja      ?_0250                                  ; 1D96 _ 77, 80
        movzx   edi, byte [eax+3H]                      ; 1D98 _ 0F B6. 78, 03
        and     esi, 3FH                                ; 1D9C _ 83. E6, 3F
        shl     esi, 6                                  ; 1D9F _ C1. E6, 06
        lea     ebx, [edi-80H]                          ; 1DA2 _ 8D. 5F, 80
        cmp     bl, 63                                  ; 1DA5 _ 80. FB, 3F
        ja      ?_0250                                  ; 1DA8 _ 0F 87, FFFFFF6A
        and     edi, 3FH                                ; 1DAE _ 83. E7, 3F
        add     eax, 4                                  ; 1DB1 _ 83. C0, 04
        or      edi, edx                                ; 1DB4 _ 09. D7
        or      edi, esi                                ; 1DB6 _ 09. F7
        or      edi, ecx                                ; 1DB8 _ 09. CF
        jmp     ?_0247                                  ; 1DBA _ E9, FFFFFECB

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0256: lea     edi, [ecx+60H]                          ; 1DC0 _ 8D. 79, 60
        mov     ebx, edi                                ; 1DC3 _ 89. FB
        cmp     bl, 31                                  ; 1DC5 _ 80. FB, 1F
        ja      ?_0250                                  ; 1DC8 _ 0F 87, FFFFFF4A
?_0257: lea     edi, [ecx-80H]                          ; 1DCE _ 8D. 79, 80
        mov     ebx, edi                                ; 1DD1 _ 89. FB
        cmp     bl, 63                                  ; 1DD3 _ 80. FB, 3F
        ja      ?_0250                                  ; 1DD6 _ 0F 87, FFFFFF3C
?_0258: cmp     edx, 237                                ; 1DDC _ 81. FA, 000000ED
        jle     ?_0259                                  ; 1DE2 _ 7E, 0C
        lea     edx, [ecx-80H]                          ; 1DE4 _ 8D. 51, 80
        cmp     dl, 63                                  ; 1DE7 _ 80. FA, 3F
        ja      ?_0250                                  ; 1DEA _ 0F 87, FFFFFF28
?_0259: movzx   edx, byte [eax+2H]                      ; 1DF0 _ 0F B6. 50, 02
        and     ecx, 3FH                                ; 1DF4 _ 83. E1, 3F
        shl     ecx, 6                                  ; 1DF7 _ C1. E1, 06
        lea     edi, [edx-80H]                          ; 1DFA _ 8D. 7A, 80
        mov     ebx, edi                                ; 1DFD _ 89. FB
        cmp     bl, 63                                  ; 1DFF _ 80. FB, 3F
        ja      ?_0250                                  ; 1E02 _ 0F 87, FFFFFF10
        mov     edi, edx                                ; 1E08 _ 89. D7
        add     eax, 3                                  ; 1E0A _ 83. C0, 03
        and     edi, 3FH                                ; 1E0D _ 83. E7, 3F
        or      edi, esi                                ; 1E10 _ 09. F7
        or      edi, ecx                                ; 1E12 _ 09. CF
        jmp     ?_0247                                  ; 1E14 _ E9, FFFFFE71

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0260: mov     eax, dword [esp+18H]                    ; 1E20 _ 8B. 44 24, 18
        mov     ebx, dword [esp+14H]                    ; 1E24 _ 8B. 5C 24, 14
        mov     ecx, dword [eax+1002CH]                 ; 1E28 _ 8B. 88, 0001002C
        mov     dword [eax+8H], 0                       ; 1E2E _ C7. 40, 08, 00000000
        mov     esi, dword [eax+10034H]                 ; 1E35 _ 8B. B0, 00010034
        test    ecx, ecx                                ; 1E3B _ 85. C9
        mov     dword [esp+14H], ecx                    ; 1E3D _ 89. 4C 24, 14
        jle     ?_0263                                  ; 1E41 _ 7E, 4D
        xor     ebp, ebp                                ; 1E43 _ 31. ED
        jmp     ?_0262                                  ; 1E45 _ EB, 12

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0261: add     ebp, 1                                  ; 1E50 _ 83. C5, 01
        cmp     ebp, dword [esp+14H]                    ; 1E53 _ 3B. 6C 24, 14
        jz      ?_0263                                  ; 1E57 _ 74, 37
?_0262: mov     edi, dword [esi+ebp*4]                  ; 1E59 _ 8B. 3C AE
        mov     eax, dword [edi+4H]                     ; 1E5C _ 8B. 47, 04
        mov     dword [esp], ebx                        ; 1E5F _ 89. 1C 24
        mov     dword [esp+4H], eax                     ; 1E62 _ 89. 44 24, 04
        call    strcmp                                  ; 1E66 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 1E6B _ 85. C0
        jnz     ?_0261                                  ; 1E6D _ 75, E1
        mov     eax, dword [esp+1CH]                    ; 1E6F _ 8B. 44 24, 1C
        mov     dword [eax], 0                          ; 1E73 _ C7. 00, 00000000
        mov     eax, dword [esp+18H]                    ; 1E79 _ 8B. 44 24, 18
        mov     dword [eax+8H], 0                       ; 1E7D _ C7. 40, 08, 00000000
        mov     eax, edi                                ; 1E84 _ 89. F8
        jmp     ?_0253                                  ; 1E86 _ E9, FFFFFEA1

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0263: mov     esi, dword [esp+18H]                    ; 1E90 _ 8B. 74 24, 18
        lea     edi, [esp+28H]                          ; 1E94 _ 8D. 7C 24, 28
        mov     eax, dword [esi+10014H]                 ; 1E98 _ 8B. 86, 00010014
        lea     edx, [eax+1H]                           ; 1E9E _ 8D. 50, 01
        mov     dword [esi+10014H], edx                 ; 1EA1 _ 89. 96, 00010014
        mov     dword [esp+10H], eax                    ; 1EA7 _ 89. 44 24, 10
        mov     dword [esp+0CH], ?_0857                 ; 1EAB _ C7. 44 24, 0C, 0000001C(d)
        mov     dword [esp+8H], 100                     ; 1EB3 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], 1                       ; 1EBB _ C7. 44 24, 04, 00000001
        mov     dword [esp], edi                        ; 1EC3 _ 89. 3C 24
        call    __sprintf_chk                           ; 1EC6 _ E8, FFFFFFFC(rel)
        mov     eax, dword [esi+10228H]                 ; 1ECB _ 8B. 86, 00010228
        mov     edx, dword [esi+10010H]                 ; 1ED1 _ 8B. 96, 00010010
        test    eax, eax                                ; 1ED7 _ 85. C0
        je      ?_0271                                  ; 1ED9 _ 0F 84, 00000173
        mov     dword [esp+4H], 24                      ; 1EDF _ C7. 44 24, 04, 00000018
        mov     dword [esp], edx                        ; 1EE7 _ 89. 14 24
        call    eax                                     ; 1EEA _ FF. D0
        mov     esi, eax                                ; 1EEC _ 89. C6
?_0264: test    esi, esi                                ; 1EEE _ 85. F6
        je      ?_0274                                  ; 1EF0 _ 0F 84, 00000185
        mov     ebp, dword [esp+18H]                    ; 1EF6 _ 8B. 6C 24, 18
        mov     dword [esi+0CH], 0                      ; 1EFA _ C7. 46, 0C, 00000000
        mov     dword [esi], ebp                        ; 1F01 _ 89. 2E
        mov     dword [esp], ebx                        ; 1F03 _ 89. 1C 24
        call    strlen                                  ; 1F06 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [ebp+10010H]                 ; 1F0B _ 8B. 8D, 00010010
        lea     edx, [eax+1H]                           ; 1F11 _ 8D. 50, 01
        mov     eax, dword [ebp+10228H]                 ; 1F14 _ 8B. 85, 00010228
        test    eax, eax                                ; 1F1A _ 85. C0
        je      ?_0272                                  ; 1F1C _ 0F 84, 00000143
        mov     dword [esp+4H], edx                     ; 1F22 _ 89. 54 24, 04
        mov     dword [esp], ecx                        ; 1F26 _ 89. 0C 24
        call    eax                                     ; 1F29 _ FF. D0
        mov     ebp, eax                                ; 1F2B _ 89. C5
?_0265: test    ebp, ebp                                ; 1F2D _ 85. ED
        je      ?_0273                                  ; 1F2F _ 0F 84, 0000013F
        mov     dword [esp+4H], ebx                     ; 1F35 _ 89. 5C 24, 04
        mov     dword [esp], ebp                        ; 1F39 _ 89. 2C 24
        call    strcpy                                  ; 1F3C _ E8, FFFFFFFC(rel)
        mov     ebx, dword [esp+18H]                    ; 1F41 _ 8B. 5C 24, 18
        mov     dword [esi+4H], ebp                     ; 1F45 _ 89. 6E, 04
        mov     edx, esi                                ; 1F48 _ 89. F2
        mov     eax, ebx                                ; 1F4A _ 89. D8
        add     eax, 65576                              ; 1F4C _ 05, 00010028
        call    listAppend                              ; 1F51 _ E8, FFFFE0EA
        test    eax, eax                                ; 1F56 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 1F58 _ 89. 43, 08
        jne     ?_0252                                  ; 1F5B _ 0F 85, FFFFFDC3
        cmp     byte [esp+28H], 0                       ; 1F61 _ 80. 7C 24, 28, 00
        mov     dword [esi+10H], 0                      ; 1F66 _ C7. 46, 10, 00000000
        mov     dword [esi+14H], 0                      ; 1F6D _ C7. 46, 14, 00000000
        mov     dword [esi+8H], 0                       ; 1F74 _ C7. 46, 08, 00000000
        jnz     ?_0270                                  ; 1F7B _ 75, 78
        mov     eax, dword [ebx+1001CH]                 ; 1F7D _ 8B. 83, 0001001C
        test    eax, eax                                ; 1F83 _ 85. C0
        jne     ?_0275                                  ; 1F85 _ 0F 85, 00000105
        mov     ecx, dword [esp+18H]                    ; 1F8B _ 8B. 4C 24, 18
        mov     dword [ecx+1001CH], 1                   ; 1F8F _ C7. 81, 0001001C, 00000001
        mov     eax, dword [ecx+10020H]                 ; 1F99 _ 8B. 81, 00010020
?_0266: mov     dword [esi+14H], eax                    ; 1F9F _ 89. 46, 14
        mov     eax, dword [esp+1CH]                    ; 1FA2 _ 8B. 44 24, 1C
        mov     dword [eax], 0                          ; 1FA6 _ C7. 00, 00000000
        mov     eax, esi                                ; 1FAC _ 89. F0
        jmp     ?_0253                                  ; 1FAE _ E9, FFFFFD79

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0267: movzx   ecx, byte [eax+1H]                      ; 1FB8 _ 0F B6. 48, 01
        lea     esi, [ecx+70H]                          ; 1FBC _ 8D. 71, 70
        mov     ebx, esi                                ; 1FBF _ 89. F3
        cmp     bl, 47                                  ; 1FC1 _ 80. FB, 2F
        ja      ?_0250                                  ; 1FC4 _ 0F 87, FFFFFD4E
?_0268: lea     esi, [ecx-80H]                          ; 1FCA _ 8D. 71, 80
        mov     ebx, esi                                ; 1FCD _ 89. F3
        cmp     bl, 63                                  ; 1FCF _ 80. FB, 3F
        jbe     ?_0255                                  ; 1FD2 _ 0F 86, FFFFFDAC
        jmp     ?_0250                                  ; 1FD8 _ E9, FFFFFD3B

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0269: mov     eax, dword [esp+18H]                    ; 1FE0 _ 8B. 44 24, 18
        mov     dword [eax+8H], 5                       ; 1FE4 _ C7. 40, 08, 00000005
        mov     eax, 5                                  ; 1FEB _ B8, 00000005
        jmp     ?_0252                                  ; 1FF0 _ E9, FFFFFD2F

?_0270: mov     eax, dword [esp+18H]                    ; 1FF5 _ 8B. 44 24, 18
        xor     ecx, ecx                                ; 1FF9 _ 31. C9
        mov     edx, edi                                ; 1FFB _ 89. FA
        call    storePrefix                             ; 1FFD _ E8, FFFFE63E
        test    eax, eax                                ; 2002 _ 85. C0
        je      ?_0279                                  ; 2004 _ 0F 84, 000000B4
        mov     ecx, dword [esp+1CH]                    ; 200A _ 8B. 4C 24, 1C
        mov     dword [esp+4H], ecx                     ; 200E _ 89. 4C 24, 04
        mov     ecx, eax                                ; 2012 _ 89. C1
        mov     eax, dword [esp+18H]                    ; 2014 _ 8B. 44 24, 18
        mov     edx, dword [esi+4H]                     ; 2018 _ 8B. 56, 04
        mov     dword [esp], edx                        ; 201B _ 89. 14 24
        xor     edx, edx                                ; 201E _ 31. D2
        call    declareAttribute                        ; 2020 _ E8, FFFFE1DB
        test    eax, eax                                ; 2025 _ 85. C0
        jz      ?_0276                                  ; 2027 _ 74, 7C
        mov     ecx, dword [esp+1CH]                    ; 2029 _ 8B. 4C 24, 1C
        mov     edx, dword [ecx]                        ; 202D _ 8B. 11
        test    edx, edx                                ; 202F _ 85. D2
        jnz     ?_0277                                  ; 2031 _ 75, 78
        mov     edx, dword [esi+14H]                    ; 2033 _ 8B. 56, 14
        test    edx, edx                                ; 2036 _ 85. D2
        je      ?_0266                                  ; 2038 _ 0F 84, FFFFFF61
        cmp     edx, eax                                ; 203E _ 39. C2
        je      ?_0266                                  ; 2040 _ 0F 84, FFFFFF59
        mov     dword [esi+0CH], 1                      ; 2046 _ C7. 46, 0C, 00000001
        jmp     ?_0266                                  ; 204D _ E9, FFFFFF4D

?_0271: mov     dword [esp], 24                         ; 2052 _ C7. 04 24, 00000018
        call    malloc                                  ; 2059 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 205E _ 89. C6
        jmp     ?_0264                                  ; 2060 _ E9, FFFFFE89

?_0272: mov     dword [esp], edx                        ; 2065 _ 89. 14 24
        call    malloc                                  ; 2068 _ E8, FFFFFFFC(rel)
        mov     ebp, eax                                ; 206D _ 89. C5
        jmp     ?_0265                                  ; 206F _ E9, FFFFFEB9

?_0273: mov     dword [esi+4H], 0                       ; 2074 _ C7. 46, 04, 00000000
?_0274: mov     eax, dword [esp+18H]                    ; 207B _ 8B. 44 24, 18
        mov     dword [eax+8H], 4                       ; 207F _ C7. 40, 08, 00000004
        mov     eax, 4                                  ; 2086 _ B8, 00000004
        jmp     ?_0252                                  ; 208B _ E9, FFFFFC94

?_0275: mov     eax, dword [esp+18H]                    ; 2090 _ 8B. 44 24, 18
        mov     dword [eax+8H], 7                       ; 2094 _ C7. 40, 08, 00000007
        mov     eax, 7                                  ; 209B _ B8, 00000007
        jmp     ?_0252                                  ; 20A0 _ E9, FFFFFC7F

?_0276: mov     eax, dword [esp+1CH]                    ; 20A5 _ 8B. 44 24, 1C
        mov     edx, dword [eax]                        ; 20A9 _ 8B. 10
?_0277: mov     eax, dword [esp+18H]                    ; 20AB _ 8B. 44 24, 18
        mov     dword [eax+8H], edx                     ; 20AF _ 89. 50, 08
        xor     eax, eax                                ; 20B2 _ 31. C0
        jmp     ?_0253                                  ; 20B4 _ E9, FFFFFC73

?_0278: call    __stack_chk_fail                        ; 20B9 _ E8, FFFFFFFC(rel)
?_0279: mov     eax, dword [esp+18H]                    ; 20BE _ 8B. 44 24, 18
        mov     eax, dword [eax+8H]                     ; 20C2 _ 8B. 40, 08
        jmp     ?_0252                                  ; 20C5 _ E9, FFFFFC5A

?_0280: ; Local function
        mov     eax, 2                                  ; 20CA _ B8, 00000002
        jmp     ?_0251                                  ; 20CF _ E9, FFFFFC49

; Filling space: 0CH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BFH
;       db 00H, 00H, 00H, 00H

ALIGN   16

genxSetUserData:; Function begin
        mov     edx, dword [esp+8H]                     ; 20E0 _ 8B. 54 24, 08
        mov     eax, dword [esp+4H]                     ; 20E4 _ 8B. 44 24, 04
        mov     dword [eax+10010H], edx                 ; 20E8 _ 89. 90, 00010010
        ret                                             ; 20EE _ C3
; genxSetUserData End of function

        nop                                             ; 20EF _ 90

ALIGN   16
genxGetUserData:; Function begin
        mov     eax, dword [esp+4H]                     ; 20F0 _ 8B. 44 24, 04
        mov     eax, dword [eax+10010H]                 ; 20F4 _ 8B. 80, 00010010
        ret                                             ; 20FA _ C3
; genxGetUserData End of function

        nop                                             ; 20FB _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8

genxSetAlloc:; Function begin
        mov     edx, dword [esp+8H]                     ; 2100 _ 8B. 54 24, 08
        mov     eax, dword [esp+4H]                     ; 2104 _ 8B. 44 24, 04
        mov     dword [eax+10228H], edx                 ; 2108 _ 89. 90, 00010228
        ret                                             ; 210E _ C3
; genxSetAlloc End of function

        nop                                             ; 210F _ 90

ALIGN   16
genxSetDealloc:; Function begin
        mov     edx, dword [esp+8H]                     ; 2110 _ 8B. 54 24, 08
        mov     eax, dword [esp+4H]                     ; 2114 _ 8B. 44 24, 04
        mov     dword [eax+1022CH], edx                 ; 2118 _ 89. 90, 0001022C
        ret                                             ; 211E _ C3
; genxSetDealloc End of function

        nop                                             ; 211F _ 90

ALIGN   16
genxGetAlloc:; Function begin
        mov     eax, dword [esp+4H]                     ; 2120 _ 8B. 44 24, 04
        mov     eax, dword [eax+10228H]                 ; 2124 _ 8B. 80, 00010228
        ret                                             ; 212A _ C3
; genxGetAlloc End of function

        nop                                             ; 212B _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8

genxGetDealloc:; Function begin
        mov     eax, dword [esp+4H]                     ; 2130 _ 8B. 44 24, 04
        mov     eax, dword [eax+1022CH]                 ; 2134 _ 8B. 80, 0001022C
        ret                                             ; 213A _ C3
; genxGetDealloc End of function

        nop                                             ; 213B _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8

genxDispose:; Function begin
        push    ebp                                     ; 2140 _ 55
        push    edi                                     ; 2141 _ 57
        push    esi                                     ; 2142 _ 56
        push    ebx                                     ; 2143 _ 53
        sub     esp, 28                                 ; 2144 _ 83. EC, 1C
        mov     ebx, dword [esp+30H]                    ; 2147 _ 8B. 5C 24, 30
        mov     eax, dword [ebx+10044H]                 ; 214B _ 8B. 83, 00010044
        mov     ebp, dword [ebx+10034H]                 ; 2151 _ 8B. AB, 00010034
        mov     esi, dword [ebx+10054H]                 ; 2157 _ 8B. B3, 00010054
        mov     dword [esp+8H], eax                     ; 215D _ 89. 44 24, 08
        mov     eax, dword [ebx+10064H]                 ; 2161 _ 8B. 83, 00010064
        mov     dword [esp+0CH], eax                    ; 2167 _ 89. 44 24, 0C
        mov     eax, dword [ebx+1002CH]                 ; 216B _ 8B. 83, 0001002C
        test    eax, eax                                ; 2171 _ 85. C0
        mov     eax, dword [ebx+1022CH]                 ; 2173 _ 8B. 83, 0001022C
        mov     edx, eax                                ; 2179 _ 89. C2
        jle     ?_0286                                  ; 217B _ 0F 8E, 0000009F
        xor     edi, edi                                ; 2181 _ 31. FF
        jmp     ?_0284                                  ; 2183 _ EB, 44

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0281: mov     dword [esp+4H], ecx                     ; 2188 _ 89. 4C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 218C _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 2192 _ 89. 14 24
        call    eax                                     ; 2195 _ FF. D0
        mov     eax, dword [ebx+1022CH]                 ; 2197 _ 8B. 83, 0001022C
        mov     ecx, dword [ebp+edi*4]                  ; 219D _ 8B. 4C BD, 00
        test    eax, eax                                ; 21A1 _ 85. C0
        mov     edx, eax                                ; 21A3 _ 89. C2
        jz      ?_0285                                  ; 21A5 _ 74, 51
?_0282: mov     dword [esp+4H], ecx                     ; 21A7 _ 89. 4C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 21AB _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 21B1 _ 89. 14 24
        call    eax                                     ; 21B4 _ FF. D0
        mov     eax, dword [ebx+1022CH]                 ; 21B6 _ 8B. 83, 0001022C
        mov     edx, eax                                ; 21BC _ 89. C2
?_0283: add     edi, 1                                  ; 21BE _ 83. C7, 01
        cmp     dword [ebx+1002CH], edi                 ; 21C1 _ 39. BB, 0001002C
        jle     ?_0286                                  ; 21C7 _ 7E, 57
?_0284: mov     ecx, dword [ebp+edi*4]                  ; 21C9 _ 8B. 4C BD, 00
        test    eax, eax                                ; 21CD _ 85. C0
        mov     ecx, dword [ecx+4H]                     ; 21CF _ 8B. 49, 04
        jnz     ?_0281                                  ; 21D2 _ 75, B4
        cmp     dword [ebx+10228H], 0                   ; 21D4 _ 83. BB, 00010228, 00
        jnz     ?_0283                                  ; 21DB _ 75, E1
        mov     dword [esp], ecx                        ; 21DD _ 89. 0C 24
        call    free                                    ; 21E0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+1022CH]                 ; 21E5 _ 8B. 83, 0001022C
        mov     ecx, dword [ebp+edi*4]                  ; 21EB _ 8B. 4C BD, 00
        test    eax, eax                                ; 21EF _ 85. C0
        mov     edx, eax                                ; 21F1 _ 89. C2
        jnz     ?_0282                                  ; 21F3 _ 75, B2
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0285: cmp     dword [ebx+10228H], 0                   ; 21F8 _ 83. BB, 00010228, 00
        jnz     ?_0283                                  ; 21FF _ 75, BD
        mov     dword [esp], ecx                        ; 2201 _ 89. 0C 24
        add     edi, 1                                  ; 2204 _ 83. C7, 01
        call    free                                    ; 2207 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+1022CH]                 ; 220C _ 8B. 83, 0001022C
        cmp     dword [ebx+1002CH], edi                 ; 2212 _ 39. BB, 0001002C
        mov     edx, eax                                ; 2218 _ 89. C2
        jg      ?_0284                                  ; 221A _ 7F, AD
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0286: mov     ecx, dword [ebx+1003CH]                 ; 2220 _ 8B. 8B, 0001003C
        test    ecx, ecx                                ; 2226 _ 85. C9
        jle     ?_0292                                  ; 2228 _ 0F 8E, 000000AA
        xor     edi, edi                                ; 222E _ 31. FF
        mov     ebp, dword [esp+8H]                     ; 2230 _ 8B. 6C 24, 08
        jmp     ?_0290                                  ; 2234 _ EB, 4B

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0287: mov     dword [esp+4H], ecx                     ; 2240 _ 89. 4C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 2244 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 224A _ 89. 14 24
        call    eax                                     ; 224D _ FF. D0
        mov     eax, dword [ebx+1022CH]                 ; 224F _ 8B. 83, 0001022C
        mov     ecx, dword [ebp+edi*4]                  ; 2255 _ 8B. 4C BD, 00
        test    eax, eax                                ; 2259 _ 85. C0
        mov     edx, eax                                ; 225B _ 89. C2
        jz      ?_0291                                  ; 225D _ 74, 51
?_0288: mov     dword [esp+4H], ecx                     ; 225F _ 89. 4C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 2263 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 2269 _ 89. 14 24
        call    eax                                     ; 226C _ FF. D0
        mov     eax, dword [ebx+1022CH]                 ; 226E _ 8B. 83, 0001022C
        mov     edx, eax                                ; 2274 _ 89. C2
?_0289: add     edi, 1                                  ; 2276 _ 83. C7, 01
        cmp     dword [ebx+1003CH], edi                 ; 2279 _ 39. BB, 0001003C
        jle     ?_0292                                  ; 227F _ 7E, 57
?_0290: mov     ecx, dword [ebp+edi*4]                  ; 2281 _ 8B. 4C BD, 00
        test    eax, eax                                ; 2285 _ 85. C0
        mov     ecx, dword [ecx+4H]                     ; 2287 _ 8B. 49, 04
        jnz     ?_0287                                  ; 228A _ 75, B4
        cmp     dword [ebx+10228H], 0                   ; 228C _ 83. BB, 00010228, 00
        jnz     ?_0289                                  ; 2293 _ 75, E1
        mov     dword [esp], ecx                        ; 2295 _ 89. 0C 24
        call    free                                    ; 2298 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+1022CH]                 ; 229D _ 8B. 83, 0001022C
        mov     ecx, dword [ebp+edi*4]                  ; 22A3 _ 8B. 4C BD, 00
        test    eax, eax                                ; 22A7 _ 85. C0
        mov     edx, eax                                ; 22A9 _ 89. C2
        jnz     ?_0288                                  ; 22AB _ 75, B2
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0291: cmp     dword [ebx+10228H], 0                   ; 22B0 _ 83. BB, 00010228, 00
        jnz     ?_0289                                  ; 22B7 _ 75, BD
        mov     dword [esp], ecx                        ; 22B9 _ 89. 0C 24
        add     edi, 1                                  ; 22BC _ 83. C7, 01
        call    free                                    ; 22BF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+1022CH]                 ; 22C4 _ 8B. 83, 0001022C
        cmp     dword [ebx+1003CH], edi                 ; 22CA _ 39. BB, 0001003C
        mov     edx, eax                                ; 22D0 _ 89. C2
        jg      ?_0290                                  ; 22D2 _ 7F, AD
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0292: mov     edi, dword [ebx+1004CH]                 ; 22D8 _ 8B. BB, 0001004C
        test    edi, edi                                ; 22DE _ 85. FF
        jle     ?_0301                                  ; 22E0 _ 0F 8E, 000000E4
        xor     edi, edi                                ; 22E6 _ 31. FF
        jmp     ?_0297                                  ; 22E8 _ EB, 61

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0293: mov     dword [esp+4H], edx                     ; 22F0 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 22F4 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 22FA _ 89. 14 24
        call    eax                                     ; 22FD _ FF. D0
        mov     eax, dword [esi+edi*4]                  ; 22FF _ 8B. 04 BE
        mov     edx, dword [eax+0CH]                    ; 2302 _ 8B. 50, 0C
        mov     eax, dword [ebx+1022CH]                 ; 2305 _ 8B. 83, 0001022C
        test    eax, eax                                ; 230B _ 85. C0
        jz      ?_0298                                  ; 230D _ 74, 71
?_0294: mov     dword [esp+4H], edx                     ; 230F _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 2313 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 2319 _ 89. 14 24
        call    eax                                     ; 231C _ FF. D0
        mov     eax, dword [ebx+1022CH]                 ; 231E _ 8B. 83, 0001022C
        mov     edx, dword [esi+edi*4]                  ; 2324 _ 8B. 14 BE
        test    eax, eax                                ; 2327 _ 85. C0
        jz      ?_0299                                  ; 2329 _ 74, 75
?_0295: mov     dword [esp+4H], edx                     ; 232B _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 232F _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 2335 _ 89. 14 24
        call    eax                                     ; 2338 _ FF. D0
        mov     eax, dword [ebx+1022CH]                 ; 233A _ 8B. 83, 0001022C
?_0296: add     edi, 1                                  ; 2340 _ 83. C7, 01
        cmp     dword [ebx+1004CH], edi                 ; 2343 _ 39. BB, 0001004C
        jle     ?_0300                                  ; 2349 _ 7E, 7D
?_0297: mov     edx, dword [esi+edi*4]                  ; 234B _ 8B. 14 BE
        test    eax, eax                                ; 234E _ 85. C0
        mov     edx, dword [edx+4H]                     ; 2350 _ 8B. 52, 04
        jnz     ?_0293                                  ; 2353 _ 75, 9B
        mov     ecx, dword [ebx+10228H]                 ; 2355 _ 8B. 8B, 00010228
        test    ecx, ecx                                ; 235B _ 85. C9
        jnz     ?_0296                                  ; 235D _ 75, E1
        mov     dword [esp], edx                        ; 235F _ 89. 14 24
        call    free                                    ; 2362 _ E8, FFFFFFFC(rel)
        mov     eax, dword [esi+edi*4]                  ; 2367 _ 8B. 04 BE
        mov     edx, dword [eax+0CH]                    ; 236A _ 8B. 50, 0C
        mov     eax, dword [ebx+1022CH]                 ; 236D _ 8B. 83, 0001022C
        test    eax, eax                                ; 2373 _ 85. C0
        jnz     ?_0294                                  ; 2375 _ 75, 98
; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0298: mov     ebp, dword [ebx+10228H]                 ; 2380 _ 8B. AB, 00010228
        test    ebp, ebp                                ; 2386 _ 85. ED
        jnz     ?_0296                                  ; 2388 _ 75, B6
        mov     dword [esp], edx                        ; 238A _ 89. 14 24
        call    free                                    ; 238D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+1022CH]                 ; 2392 _ 8B. 83, 0001022C
        mov     edx, dword [esi+edi*4]                  ; 2398 _ 8B. 14 BE
        test    eax, eax                                ; 239B _ 85. C0
        jnz     ?_0295                                  ; 239D _ 75, 8C
        nop                                             ; 239F _ 90
?_0299: mov     ecx, dword [ebx+10228H]                 ; 23A0 _ 8B. 8B, 00010228
        test    ecx, ecx                                ; 23A6 _ 85. C9
        jnz     ?_0296                                  ; 23A8 _ 75, 96
        mov     dword [esp], edx                        ; 23AA _ 89. 14 24
        add     edi, 1                                  ; 23AD _ 83. C7, 01
        call    free                                    ; 23B0 _ E8, FFFFFFFC(rel)
        cmp     dword [ebx+1004CH], edi                 ; 23B5 _ 39. BB, 0001004C
        mov     eax, dword [ebx+1022CH]                 ; 23BB _ 8B. 83, 0001022C
        jg      ?_0297                                  ; 23C1 _ 7F, 88
        nop                                             ; 23C3 _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0300: mov     edx, eax                                ; 23C8 _ 89. C2
?_0301: mov     eax, dword [ebx+1005CH]                 ; 23CA _ 8B. 83, 0001005C
        test    eax, eax                                ; 23D0 _ 85. C0
        jle     ?_0305                                  ; 23D2 _ 7E, 5C
        xor     esi, esi                                ; 23D4 _ 31. F6
        mov     edi, dword [esp+0CH]                    ; 23D6 _ 8B. 7C 24, 0C
        jmp     ?_0304                                  ; 23DA _ EB, 26

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0302: mov     dword [esp+4H], ecx                     ; 23E0 _ 89. 4C 24, 04
        mov     eax, dword [ebx+10010H]                 ; 23E4 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 23EA _ 89. 04 24
        call    edx                                     ; 23ED _ FF. D2
        mov     edx, dword [ebx+1022CH]                 ; 23EF _ 8B. 93, 0001022C
        mov     eax, dword [ebx+1005CH]                 ; 23F5 _ 8B. 83, 0001005C
?_0303: add     esi, 1                                  ; 23FB _ 83. C6, 01
        cmp     esi, eax                                ; 23FE _ 39. C6
        jge     ?_0305                                  ; 2400 _ 7D, 2E
?_0304: test    edx, edx                                ; 2402 _ 85. D2
        mov     ecx, dword [edi+esi*4]                  ; 2404 _ 8B. 0C B7
        jnz     ?_0302                                  ; 2407 _ 75, D7
        mov     ebp, dword [ebx+10228H]                 ; 2409 _ 8B. AB, 00010228
        test    ebp, ebp                                ; 240F _ 85. ED
        jnz     ?_0303                                  ; 2411 _ 75, E8
        mov     dword [esp], ecx                        ; 2413 _ 89. 0C 24
        add     esi, 1                                  ; 2416 _ 83. C6, 01
        call    free                                    ; 2419 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx+1005CH]                 ; 241E _ 8B. 83, 0001005C
        mov     edx, dword [ebx+1022CH]                 ; 2424 _ 8B. 93, 0001022C
        cmp     esi, eax                                ; 242A _ 39. C6
        jl      ?_0304                                  ; 242C _ 7C, D4
; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0305: test    edx, edx                                ; 2430 _ 85. D2
        mov     eax, dword [ebx+10034H]                 ; 2432 _ 8B. 83, 00010034
        je      ?_0314                                  ; 2438 _ 0F 84, 00000102
        mov     dword [esp+4H], eax                     ; 243E _ 89. 44 24, 04
        mov     eax, dword [ebx+10010H]                 ; 2442 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 2448 _ 89. 04 24
        call    edx                                     ; 244B _ FF. D2
?_0306: mov     eax, dword [ebx+1022CH]                 ; 244D _ 8B. 83, 0001022C
        mov     edx, dword [ebx+10044H]                 ; 2453 _ 8B. 93, 00010044
        test    eax, eax                                ; 2459 _ 85. C0
        je      ?_0315                                  ; 245B _ 0F 84, 000000F6
        mov     dword [esp+4H], edx                     ; 2461 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 2465 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 246B _ 89. 14 24
        call    eax                                     ; 246E _ FF. D0
?_0307: mov     eax, dword [ebx+1022CH]                 ; 2470 _ 8B. 83, 0001022C
        mov     edx, dword [ebx+10054H]                 ; 2476 _ 8B. 93, 00010054
        test    eax, eax                                ; 247C _ 85. C0
        je      ?_0317                                  ; 247E _ 0F 84, 00000101
        mov     dword [esp+4H], edx                     ; 2484 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 2488 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 248E _ 89. 14 24
        call    eax                                     ; 2491 _ FF. D0
?_0308: mov     eax, dword [ebx+1022CH]                 ; 2493 _ 8B. 83, 0001022C
        mov     edx, dword [ebx+10064H]                 ; 2499 _ 8B. 93, 00010064
        test    eax, eax                                ; 249F _ 85. C0
        je      ?_0316                                  ; 24A1 _ 0F 84, 000000C7
        mov     dword [esp+4H], edx                     ; 24A7 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 24AB _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 24B1 _ 89. 14 24
        call    eax                                     ; 24B4 _ FF. D0
?_0309: mov     eax, dword [ebx+1022CH]                 ; 24B6 _ 8B. 83, 0001022C
        mov     edx, dword [ebx+10074H]                 ; 24BC _ 8B. 93, 00010074
        test    eax, eax                                ; 24C2 _ 85. C0
        je      ?_0321                                  ; 24C4 _ 0F 84, 00000122
        mov     dword [esp+4H], edx                     ; 24CA _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 24CE _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 24D4 _ 89. 14 24
        call    eax                                     ; 24D7 _ FF. D0
?_0310: mov     eax, dword [ebx+1022CH]                 ; 24D9 _ 8B. 83, 0001022C
        mov     edx, dword [ebx+10084H]                 ; 24DF _ 8B. 93, 00010084
        test    eax, eax                                ; 24E5 _ 85. C0
        je      ?_0320                                  ; 24E7 _ 0F 84, 000000E4
        mov     dword [esp+4H], edx                     ; 24ED _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 24F1 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 24F7 _ 89. 14 24
        call    eax                                     ; 24FA _ FF. D0
?_0311: mov     eax, dword [ebx+1022CH]                 ; 24FC _ 8B. 83, 0001022C
        mov     edx, dword [ebx+10018H]                 ; 2502 _ 8B. 93, 00010018
        test    eax, eax                                ; 2508 _ 85. C0
        je      ?_0319                                  ; 250A _ 0F 84, 000000A6
        mov     dword [esp+4H], edx                     ; 2510 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 2514 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 251A _ 89. 14 24
        call    eax                                     ; 251D _ FF. D0
?_0312: mov     eax, dword [ebx+1022CH]                 ; 251F _ 8B. 83, 0001022C
        test    eax, eax                                ; 2525 _ 85. C0
        jz      ?_0318                                  ; 2527 _ 74, 73
        mov     dword [esp+4H], ebx                     ; 2529 _ 89. 5C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 252D _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 2533 _ 89. 14 24
        call    eax                                     ; 2536 _ FF. D0
?_0313: add     esp, 28                                 ; 2538 _ 83. C4, 1C
        pop     ebx                                     ; 253B _ 5B
        pop     esi                                     ; 253C _ 5E
        pop     edi                                     ; 253D _ 5F
        pop     ebp                                     ; 253E _ 5D
        ret                                             ; 253F _ C3

?_0314: mov     edx, dword [ebx+10228H]                 ; 2540 _ 8B. 93, 00010228
        test    edx, edx                                ; 2546 _ 85. D2
        jnz     ?_0313                                  ; 2548 _ 75, EE
        mov     dword [esp], eax                        ; 254A _ 89. 04 24
        call    free                                    ; 254D _ E8, FFFFFFFC(rel)
        jmp     ?_0306                                  ; 2552 _ E9, FFFFFEF6

?_0315: mov     eax, dword [ebx+10228H]                 ; 2557 _ 8B. 83, 00010228
        test    eax, eax                                ; 255D _ 85. C0
        jnz     ?_0313                                  ; 255F _ 75, D7
        mov     dword [esp], edx                        ; 2561 _ 89. 14 24
        call    free                                    ; 2564 _ E8, FFFFFFFC(rel)
        jmp     ?_0307                                  ; 2569 _ E9, FFFFFF02

?_0316: mov     ebp, dword [ebx+10228H]                 ; 256E _ 8B. AB, 00010228
        test    ebp, ebp                                ; 2574 _ 85. ED
        jnz     ?_0313                                  ; 2576 _ 75, C0
        mov     dword [esp], edx                        ; 2578 _ 89. 14 24
        call    free                                    ; 257B _ E8, FFFFFFFC(rel)
        jmp     ?_0309                                  ; 2580 _ E9, FFFFFF31

?_0317: mov     eax, dword [ebx+10228H]                 ; 2585 _ 8B. 83, 00010228
        test    eax, eax                                ; 258B _ 85. C0
        jnz     ?_0313                                  ; 258D _ 75, A9
        mov     dword [esp], edx                        ; 258F _ 89. 14 24
        call    free                                    ; 2592 _ E8, FFFFFFFC(rel)
        jmp     ?_0308                                  ; 2597 _ E9, FFFFFEF7

?_0318: mov     eax, dword [ebx+10228H]                 ; 259C _ 8B. 83, 00010228
        test    eax, eax                                ; 25A2 _ 85. C0
        jnz     ?_0313                                  ; 25A4 _ 75, 92
        mov     dword [esp+30H], ebx                    ; 25A6 _ 89. 5C 24, 30
        add     esp, 28                                 ; 25AA _ 83. C4, 1C
        pop     ebx                                     ; 25AD _ 5B
        pop     esi                                     ; 25AE _ 5E
        pop     edi                                     ; 25AF _ 5F
        pop     ebp                                     ; 25B0 _ 5D
        jmp     free                                    ; 25B1 _ E9, FFFFFFFC(rel)

?_0319: mov     ecx, dword [ebx+10228H]                 ; 25B6 _ 8B. 8B, 00010228
        test    ecx, ecx                                ; 25BC _ 85. C9
        jne     ?_0313                                  ; 25BE _ 0F 85, FFFFFF74
        mov     dword [esp], edx                        ; 25C4 _ 89. 14 24
        call    free                                    ; 25C7 _ E8, FFFFFFFC(rel)
        jmp     ?_0312                                  ; 25CC _ E9, FFFFFF4E

?_0320: mov     esi, dword [ebx+10228H]                 ; 25D1 _ 8B. B3, 00010228
        test    esi, esi                                ; 25D7 _ 85. F6
        jne     ?_0313                                  ; 25D9 _ 0F 85, FFFFFF59
        mov     dword [esp], edx                        ; 25DF _ 89. 14 24
        call    free                                    ; 25E2 _ E8, FFFFFFFC(rel)
        jmp     ?_0311                                  ; 25E7 _ E9, FFFFFF10
; genxDispose End of function

?_0321: ; Local function
        mov     edi, dword [ebx+10228H]                 ; 25EC _ 8B. BB, 00010228
        test    edi, edi                                ; 25F2 _ 85. FF
        jne     ?_0313                                  ; 25F4 _ 0F 85, FFFFFF3E
        mov     dword [esp], edx                        ; 25FA _ 89. 14 24
        call    free                                    ; 25FD _ E8, FFFFFFFC(rel)
        jmp     ?_0310                                  ; 2602 _ E9, FFFFFED2

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16

genxCheckText:; Function begin
        push    ebp                                     ; 2610 _ 55
        push    edi                                     ; 2611 _ 57
        push    esi                                     ; 2612 _ 56
        push    ebx                                     ; 2613 _ 53
        mov     edx, dword [esp+18H]                    ; 2614 _ 8B. 54 24, 18
        jmp     ?_0325                                  ; 2618 _ EB, 1A

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0322: add     edx, 1                                  ; 2620 _ 83. C2, 01
?_0323: mov     edi, dword [esp+14H]                    ; 2623 _ 8B. 7C 24, 14
        movsx   eax, byte [edi+eax+10H]                 ; 2627 _ 0F BE. 44 07, 10
?_0324: test    eax, eax                                ; 262C _ 85. C0
        je      ?_0338                                  ; 262E _ 0F 84, 000001A1
?_0325: movzx   eax, byte [edx]                         ; 2634 _ 0F B6. 02
        test    al, al                                  ; 2637 _ 84. C0
        je      ?_0335                                  ; 2639 _ 0F 84, 00000161
        jns     ?_0322                                  ; 263F _ 79, DF
        cmp     al, -63                                 ; 2641 _ 3C, C1
        jbe     ?_0327                                  ; 2643 _ 76, 6B
        cmp     al, -33                                 ; 2645 _ 3C, DF
        ja      ?_0326                                  ; 2647 _ 77, 27
        mov     ebx, eax                                ; 2649 _ 89. C3
        movzx   eax, byte [edx+1H]                      ; 264B _ 0F B6. 42, 01
        and     ebx, 1FH                                ; 264F _ 83. E3, 1F
        shl     ebx, 6                                  ; 2652 _ C1. E3, 06
        lea     esi, [eax-80H]                          ; 2655 _ 8D. 70, 80
        mov     ecx, esi                                ; 2658 _ 89. F1
        cmp     cl, 63                                  ; 265A _ 80. F9, 3F
        ja      ?_0327                                  ; 265D _ 77, 51
        and     eax, 3FH                                ; 265F _ 83. E0, 3F
        add     edx, 2                                  ; 2662 _ 83. C2, 02
        or      eax, ebx                                ; 2665 _ 09. D8
        jmp     ?_0323                                  ; 2667 _ EB, BA

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0326: cmp     al, -17                                 ; 2670 _ 3C, EF
        ja      ?_0329                                  ; 2672 _ 77, 4C
        mov     esi, eax                                ; 2674 _ 89. C6
        movzx   ebx, byte [edx+1H]                      ; 2676 _ 0F B6. 5A, 01
        shl     esi, 12                                 ; 267A _ C1. E6, 0C
        cmp     eax, 224                                ; 267D _ 3D, 000000E0
        movzx   esi, si                                 ; 2682 _ 0F B7. F6
        je      ?_0331                                  ; 2685 _ 0F 84, 000000BD
        cmp     eax, 236                                ; 268B _ 3D, 000000EC
        jle     ?_0332                                  ; 2690 _ 0F 8E, 000000C0
        cmp     eax, 237                                ; 2696 _ 3D, 000000ED
        jne     ?_0333                                  ; 269B _ 0F 85, 000000C3
        lea     eax, [ebx-80H]                          ; 26A1 _ 8D. 43, 80
        cmp     al, 31                                  ; 26A4 _ 3C, 1F
        jbe     ?_0334                                  ; 26A6 _ 0F 86, 000000CA
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0327: mov     eax, 1                                  ; 26B0 _ B8, 00000001
?_0328: pop     ebx                                     ; 26B5 _ 5B
        pop     esi                                     ; 26B6 _ 5E
        pop     edi                                     ; 26B7 _ 5F
        pop     ebp                                     ; 26B8 _ 5D
        ret                                             ; 26B9 _ C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0329: cmp     al, -12                                 ; 26C0 _ 3C, F4
        ja      ?_0327                                  ; 26C2 _ 77, EC
        movzx   ebx, al                                 ; 26C4 _ 0F B6. D8
        and     eax, 07H                                ; 26C7 _ 83. E0, 07
        shl     eax, 18                                 ; 26CA _ C1. E0, 12
        cmp     ebx, 240                                ; 26CD _ 81. FB, 000000F0
        je      ?_0336                                  ; 26D3 _ 0F 84, 000000D7
        cmp     ebx, 244                                ; 26D9 _ 81. FB, 000000F4
        movzx   ebx, byte [edx+1H]                      ; 26DF _ 0F B6. 5A, 01
        jne     ?_0337                                  ; 26E3 _ 0F 85, 000000D9
        lea     esi, [ebx-80H]                          ; 26E9 _ 8D. 73, 80
        mov     ecx, esi                                ; 26EC _ 89. F1
        cmp     cl, 15                                  ; 26EE _ 80. F9, 0F
        ja      ?_0327                                  ; 26F1 _ 77, BD
?_0330: movzx   esi, byte [edx+2H]                      ; 26F3 _ 0F B6. 72, 02
        and     ebx, 3FH                                ; 26F7 _ 83. E3, 3F
        shl     ebx, 12                                 ; 26FA _ C1. E3, 0C
        lea     edi, [esi-80H]                          ; 26FD _ 8D. 7E, 80
        mov     ecx, edi                                ; 2700 _ 89. F9
        cmp     cl, 63                                  ; 2702 _ 80. F9, 3F
        ja      ?_0327                                  ; 2705 _ 77, A9
        movzx   edi, byte [edx+3H]                      ; 2707 _ 0F B6. 7A, 03
        and     esi, 3FH                                ; 270B _ 83. E6, 3F
        shl     esi, 6                                  ; 270E _ C1. E6, 06
        lea     ebp, [edi-80H]                          ; 2711 _ 8D. 6F, 80
        mov     ecx, ebp                                ; 2714 _ 89. E9
        cmp     cl, 63                                  ; 2716 _ 80. F9, 3F
        ja      ?_0327                                  ; 2719 _ 77, 95
        or      eax, esi                                ; 271B _ 09. F0
        and     edi, 3FH                                ; 271D _ 83. E7, 3F
        add     edx, 4                                  ; 2720 _ 83. C2, 04
        or      eax, edi                                ; 2723 _ 09. F8
        or      eax, ebx                                ; 2725 _ 09. D8
        cmp     eax, 65535                              ; 2727 _ 3D, 0000FFFF
        jle     ?_0323                                  ; 272C _ 0F 8E, FFFFFEF1
        cmp     eax, 1114111                            ; 2732 _ 3D, 0010FFFF
        setle   al                                      ; 2737 _ 0F 9E. C0
        movzx   eax, al                                 ; 273A _ 0F B6. C0
        jmp     ?_0324                                  ; 273D _ E9, FFFFFEEA

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0331: lea     edi, [ebx+60H]                          ; 2748 _ 8D. 7B, 60
        mov     ecx, edi                                ; 274B _ 89. F9
        cmp     cl, 31                                  ; 274D _ 80. F9, 1F
        ja      ?_0327                                  ; 2750 _ 0F 87, FFFFFF5A
?_0332: lea     edi, [ebx-80H]                          ; 2756 _ 8D. 7B, 80
        mov     ecx, edi                                ; 2759 _ 89. F9
        cmp     cl, 63                                  ; 275B _ 80. F9, 3F
        ja      ?_0327                                  ; 275E _ 0F 87, FFFFFF4C
?_0333: cmp     eax, 237                                ; 2764 _ 3D, 000000ED
        jle     ?_0334                                  ; 2769 _ 7E, 0B
        lea     eax, [ebx-80H]                          ; 276B _ 8D. 43, 80
        cmp     al, 63                                  ; 276E _ 3C, 3F
        ja      ?_0327                                  ; 2770 _ 0F 87, FFFFFF3A
?_0334: movzx   eax, byte [edx+2H]                      ; 2776 _ 0F B6. 42, 02
        and     ebx, 3FH                                ; 277A _ 83. E3, 3F
        shl     ebx, 6                                  ; 277D _ C1. E3, 06
        lea     edi, [eax-80H]                          ; 2780 _ 8D. 78, 80
        mov     ecx, edi                                ; 2783 _ 89. F9
        cmp     cl, 63                                  ; 2785 _ 80. F9, 3F
        ja      ?_0327                                  ; 2788 _ 0F 87, FFFFFF22
        and     eax, 3FH                                ; 278E _ 83. E0, 3F
        add     edx, 3                                  ; 2791 _ 83. C2, 03
        or      eax, esi                                ; 2794 _ 09. F0
        or      eax, ebx                                ; 2796 _ 09. D8
        jmp     ?_0323                                  ; 2798 _ E9, FFFFFE86

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0335: pop     ebx                                     ; 27A0 _ 5B
        xor     eax, eax                                ; 27A1 _ 31. C0
        pop     esi                                     ; 27A3 _ 5E
        pop     edi                                     ; 27A4 _ 5F
        pop     ebp                                     ; 27A5 _ 5D
        ret                                             ; 27A6 _ C3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0336: movzx   ebx, byte [edx+1H]                      ; 27B0 _ 0F B6. 5A, 01
        lea     esi, [ebx+70H]                          ; 27B4 _ 8D. 73, 70
        mov     ecx, esi                                ; 27B7 _ 89. F1
        cmp     cl, 47                                  ; 27B9 _ 80. F9, 2F
        ja      ?_0327                                  ; 27BC _ 0F 87, FFFFFEEE
?_0337: lea     esi, [ebx-80H]                          ; 27C2 _ 8D. 73, 80
        mov     ecx, esi                                ; 27C5 _ 89. F1
        cmp     cl, 63                                  ; 27C7 _ 80. F9, 3F
        jbe     ?_0330                                  ; 27CA _ 0F 86, FFFFFF23
        jmp     ?_0327                                  ; 27D0 _ E9, FFFFFEDB
; genxCheckText End of function

?_0338: ; Local function
        mov     eax, 2                                  ; 27D5 _ B8, 00000002
        jmp     ?_0328                                  ; 27DA _ E9, FFFFFED6

        nop                                             ; 27DF _ 90

ALIGN   16
genxScrubText:; Function begin
        push    ebp                                     ; 27E0 _ 55
        push    edi                                     ; 27E1 _ 57
        push    esi                                     ; 27E2 _ 56
        push    ebx                                     ; 27E3 _ 53
        sub     esp, 12                                 ; 27E4 _ 83. EC, 0C
        mov     edx, dword [esp+24H]                    ; 27E7 _ 8B. 54 24, 24
        mov     dword [esp+8H], 0                       ; 27EB _ C7. 44 24, 08, 00000000
        mov     esi, dword [esp+28H]                    ; 27F3 _ 8B. 74 24, 28
        movzx   ecx, byte [edx]                         ; 27F7 _ 0F B6. 0A
        mov     eax, edx                                ; 27FA _ 89. D0
?_0339: test    cl, cl                                  ; 27FC _ 84. C9
        je      ?_0346                                  ; 27FE _ 0F 84, 000000CB
?_0340: js      ?_0348                                  ; 2804 _ 0F 88, 000000E6
        add     eax, 1                                  ; 280A _ 83. C0, 01
        movzx   ebx, cl                                 ; 280D _ 0F B6. D9
?_0341: mov     edi, dword [esp+20H]                    ; 2810 _ 8B. 7C 24, 20
        movsx   ecx, byte [edi+ebx+10H]                 ; 2814 _ 0F BE. 4C 1F, 10
?_0342: test    ecx, ecx                                ; 2819 _ 85. C9
        je      ?_0347                                  ; 281B _ 0F 84, 000000BF
        cmp     edx, eax                                ; 2821 _ 39. C2
        jnc     ?_0345                                  ; 2823 _ 0F 83, 0000009B
        lea     edi, [edx+1H]                           ; 2829 _ 8D. 7A, 01
        mov     ecx, edx                                ; 282C _ 89. D1
        mov     ebx, eax                                ; 282E _ 89. C3
        or      ecx, esi                                ; 2830 _ 09. F1
        sub     ebx, edx                                ; 2832 _ 29. D3
        mov     dword [esp+4H], edi                     ; 2834 _ 89. 7C 24, 04
        lea     ebp, [esi+4H]                           ; 2838 _ 8D. 6E, 04
        and     ecx, 03H                                ; 283B _ 83. E1, 03
        sete    cl                                      ; 283E _ 0F 94. C1
        mov     edi, ecx                                ; 2841 _ 89. CF
        lea     ecx, [edx+4H]                           ; 2843 _ 8D. 4A, 04
        cmp     esi, ecx                                ; 2846 _ 39. CE
        setae   byte [esp]                              ; 2848 _ 0F 93. 04 24
        cmp     edx, ebp                                ; 284C _ 39. EA
        setae   cl                                      ; 284E _ 0F 93. C1
        or      byte [esp], cl                          ; 2851 _ 08. 0C 24
        mov     ecx, edi                                ; 2854 _ 89. F9
        test    byte [esp], cl                          ; 2856 _ 84. 0C 24
        je      ?_0351                                  ; 2859 _ 0F 84, 00000121
        cmp     ebx, 9                                  ; 285F _ 83. FB, 09
        jbe     ?_0351                                  ; 2862 _ 0F 86, 00000118
        mov     ebp, ebx                                ; 2868 _ 89. DD
        xor     ecx, ecx                                ; 286A _ 31. C9
        mov     dword [esp], eax                        ; 286C _ 89. 04 24
        shr     ebp, 2                                  ; 286F _ C1. ED, 02
        lea     edi, [ebp*4]                            ; 2872 _ 8D. 3C AD, 00000000
?_0343: mov     eax, dword [edx+ecx*4]                  ; 2879 _ 8B. 04 8A
        mov     dword [esi+ecx*4], eax                  ; 287C _ 89. 04 8E
        add     ecx, 1                                  ; 287F _ 83. C1, 01
        cmp     ebp, ecx                                ; 2882 _ 39. CD
        ja      ?_0343                                  ; 2884 _ 77, F3
        mov     eax, dword [esp]                        ; 2886 _ 8B. 04 24
        lea     ebp, [esi+edi]                          ; 2889 _ 8D. 2C 3E
        cmp     ebx, edi                                ; 288C _ 39. FB
        lea     ecx, [edx+edi]                          ; 288E _ 8D. 0C 3A
        jz      ?_0344                                  ; 2891 _ 74, 22
        movzx   ebx, byte [ecx]                         ; 2893 _ 0F B6. 19
        mov     byte [ebp], bl                          ; 2896 _ 88. 5D, 00
        lea     ebx, [ecx+1H]                           ; 2899 _ 8D. 59, 01
        cmp     eax, ebx                                ; 289C _ 39. D8
        jbe     ?_0344                                  ; 289E _ 76, 15
        movzx   ebx, byte [ecx+1H]                      ; 28A0 _ 0F B6. 59, 01
        mov     byte [ebp+1H], bl                       ; 28A4 _ 88. 5D, 01
        lea     ebx, [ecx+2H]                           ; 28A7 _ 8D. 59, 02
        cmp     eax, ebx                                ; 28AA _ 39. D8
        jbe     ?_0344                                  ; 28AC _ 76, 07
        movzx   ecx, byte [ecx+2H]                      ; 28AE _ 0F B6. 49, 02
        mov     byte [ebp+2H], cl                       ; 28B2 _ 88. 4D, 02
?_0344: mov     ecx, 1                                  ; 28B5 _ B9, 00000001
        sub     ecx, dword [esp+4H]                     ; 28BA _ 2B. 4C 24, 04
        add     ecx, eax                                ; 28BE _ 01. C1
        add     esi, ecx                                ; 28C0 _ 01. CE
        add     edx, ecx                                ; 28C2 _ 01. CA
?_0345: movzx   ecx, byte [eax]                         ; 28C4 _ 0F B6. 08
        test    cl, cl                                  ; 28C7 _ 84. C9
        jne     ?_0340                                  ; 28C9 _ 0F 85, FFFFFF35
?_0346: mov     byte [esi], 0                           ; 28CF _ C6. 06, 00
        mov     eax, dword [esp+8H]                     ; 28D2 _ 8B. 44 24, 08
        add     esp, 12                                 ; 28D6 _ 83. C4, 0C
        pop     ebx                                     ; 28D9 _ 5B
        pop     esi                                     ; 28DA _ 5E
        pop     edi                                     ; 28DB _ 5F
        pop     ebp                                     ; 28DC _ 5D
        ret                                             ; 28DD _ C3

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0347: add     dword [esp+8H], 1                       ; 28E0 _ 83. 44 24, 08, 01
        mov     edx, eax                                ; 28E5 _ 89. C2
        movzx   ecx, byte [eax]                         ; 28E7 _ 0F B6. 08
        jmp     ?_0339                                  ; 28EA _ E9, FFFFFF0D

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0348: cmp     cl, -63                                 ; 28F0 _ 80. F9, C1
        jbe     ?_0364                                  ; 28F3 _ 0F 86, 000001CC
        cmp     cl, -33                                 ; 28F9 _ 80. F9, DF
        ja      ?_0349                                  ; 28FC _ 77, 2A
        movzx   ebx, byte [eax+1H]                      ; 28FE _ 0F B6. 58, 01
        mov     ebp, ecx                                ; 2902 _ 89. CD
        and     ebp, 1FH                                ; 2904 _ 83. E5, 1F
        shl     ebp, 6                                  ; 2907 _ C1. E5, 06
        lea     edi, [ebx-80H]                          ; 290A _ 8D. 7B, 80
        mov     ecx, edi                                ; 290D _ 89. F9
        cmp     cl, 63                                  ; 290F _ 80. F9, 3F
        ja      ?_0362                                  ; 2912 _ 0F 87, 000001A4
        and     ebx, 3FH                                ; 2918 _ 83. E3, 3F
        add     eax, 2                                  ; 291B _ 83. C0, 02
        or      ebx, ebp                                ; 291E _ 09. EB
        jmp     ?_0341                                  ; 2920 _ E9, FFFFFEEB

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0349: cmp     cl, -17                                 ; 2928 _ 80. F9, EF
        ja      ?_0353                                  ; 292B _ 77, 73
        lea     ebp, [eax+1H]                           ; 292D _ 8D. 68, 01
        movzx   edi, cl                                 ; 2930 _ 0F B6. F9
        mov     ebx, edi                                ; 2933 _ 89. FB
        mov     dword [esp], edi                        ; 2935 _ 89. 3C 24
        shl     edi, 12                                 ; 2938 _ C1. E7, 0C
        cmp     ebx, 224                                ; 293B _ 81. FB, 000000E0
        movzx   edi, di                                 ; 2941 _ 0F B7. FF
        movzx   ebx, byte [eax+1H]                      ; 2944 _ 0F B6. 58, 01
        je      ?_0355                                  ; 2948 _ 0F 84, 000000F2
        cmp     dword [esp], 236                        ; 294E _ 81. 3C 24, 000000EC
        jle     ?_0356                                  ; 2955 _ 0F 8E, 000000F1
        cmp     dword [esp], 237                        ; 295B _ 81. 3C 24, 000000ED
        jne     ?_0357                                  ; 2962 _ 0F 85, 000000F0
        lea     ecx, [ebx-80H]                          ; 2968 _ 8D. 4B, 80
        cmp     cl, 31                                  ; 296B _ 80. F9, 1F
        jbe     ?_0358                                  ; 296E _ 0F 86, 000000F9
?_0350: mov     eax, ebp                                ; 2974 _ 89. E8
        jmp     ?_0363                                  ; 2976 _ E9, 00000144

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0351: mov     ebx, edx                                ; 2980 _ 89. D3
        mov     edi, esi                                ; 2982 _ 89. F7
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0352: add     ebx, 1                                  ; 2988 _ 83. C3, 01
        movzx   ecx, byte [ebx-1H]                      ; 298B _ 0F B6. 4B, FF
        add     edi, 1                                  ; 298F _ 83. C7, 01
        cmp     ebx, eax                                ; 2992 _ 39. C3
        mov     byte [edi-1H], cl                       ; 2994 _ 88. 4F, FF
        jnz     ?_0352                                  ; 2997 _ 75, EF
        jmp     ?_0344                                  ; 2999 _ E9, FFFFFF17

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0353: cmp     cl, -12                                 ; 29A0 _ 80. F9, F4
        ja      ?_0364                                  ; 29A3 _ 0F 87, 0000011C
        lea     edi, [eax+1H]                           ; 29A9 _ 8D. 78, 01
        mov     ebp, ecx                                ; 29AC _ 89. CD
        movzx   ebx, cl                                 ; 29AE _ 0F B6. D9
        and     ebp, 07H                                ; 29B1 _ 83. E5, 07
        shl     ebp, 18                                 ; 29B4 _ C1. E5, 12
        cmp     ebx, 240                                ; 29B7 _ 81. FB, 000000F0
        je      ?_0359                                  ; 29BD _ 0F 84, 000000DD
        cmp     ebx, 244                                ; 29C3 _ 81. FB, 000000F4
        movzx   ebx, byte [eax+1H]                      ; 29C9 _ 0F B6. 58, 01
        jne     ?_0360                                  ; 29CD _ 0F 85, 000000D9
        lea     ecx, [ebx-80H]                          ; 29D3 _ 8D. 4B, 80
        cmp     cl, 15                                  ; 29D6 _ 80. F9, 0F
        ja      ?_0361                                  ; 29D9 _ 0F 87, 000000D9
?_0354: mov     edi, ebx                                ; 29DF _ 89. DF
        movzx   ebx, byte [eax+2H]                      ; 29E1 _ 0F B6. 58, 02
        and     edi, 3FH                                ; 29E5 _ 83. E7, 3F
        shl     edi, 12                                 ; 29E8 _ C1. E7, 0C
        lea     ecx, [ebx-80H]                          ; 29EB _ 8D. 4B, 80
        cmp     cl, 63                                  ; 29EE _ 80. F9, 3F
        ja      ?_0366                                  ; 29F1 _ 0F 87, 000000E1
        and     ebx, 3FH                                ; 29F7 _ 83. E3, 3F
        mov     dword [esp], ebx                        ; 29FA _ 89. 1C 24
        movzx   ebx, byte [eax+3H]                      ; 29FD _ 0F B6. 58, 03
        shl     dword [esp], 6                          ; 2A01 _ C1. 24 24, 06
        lea     ecx, [ebx-80H]                          ; 2A05 _ 8D. 4B, 80
        cmp     cl, 63                                  ; 2A08 _ 80. F9, 3F
        ja      ?_0367                                  ; 2A0B _ 0F 87, 000000CC
        and     ebx, 3FH                                ; 2A11 _ 83. E3, 3F
        add     eax, 4                                  ; 2A14 _ 83. C0, 04
        or      ebx, ebp                                ; 2A17 _ 09. EB
        or      ebx, dword [esp]                        ; 2A19 _ 0B. 1C 24
        or      ebx, edi                                ; 2A1C _ 09. FB
        cmp     ebx, 65535                              ; 2A1E _ 81. FB, 0000FFFF
        jle     ?_0341                                  ; 2A24 _ 0F 8E, FFFFFDE6
        xor     ecx, ecx                                ; 2A2A _ 31. C9
        cmp     ebx, 1114111                            ; 2A2C _ 81. FB, 0010FFFF
        setle   cl                                      ; 2A32 _ 0F 9E. C1
        jmp     ?_0342                                  ; 2A35 _ E9, FFFFFDDF

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0355: lea     ecx, [ebx+60H]                          ; 2A40 _ 8D. 4B, 60
        cmp     cl, 31                                  ; 2A43 _ 80. F9, 1F
        ja      ?_0350                                  ; 2A46 _ 0F 87, FFFFFF28
?_0356: lea     ecx, [ebx-80H]                          ; 2A4C _ 8D. 4B, 80
        cmp     cl, 63                                  ; 2A4F _ 80. F9, 3F
        ja      ?_0350                                  ; 2A52 _ 0F 87, FFFFFF1C
?_0357: cmp     dword [esp], 237                        ; 2A58 _ 81. 3C 24, 000000ED
        jle     ?_0358                                  ; 2A5F _ 7E, 0C
        lea     ecx, [ebx-80H]                          ; 2A61 _ 8D. 4B, 80
        cmp     cl, 63                                  ; 2A64 _ 80. F9, 3F
        ja      ?_0350                                  ; 2A67 _ 0F 87, FFFFFF07
?_0358: mov     ecx, ebx                                ; 2A6D _ 89. D9
        movzx   ebx, byte [eax+2H]                      ; 2A6F _ 0F B6. 58, 02
        and     ecx, 3FH                                ; 2A73 _ 83. E1, 3F
        mov     dword [esp], ecx                        ; 2A76 _ 89. 0C 24
        shl     dword [esp], 6                          ; 2A79 _ C1. 24 24, 06
        lea     ebp, [ebx-80H]                          ; 2A7D _ 8D. 6B, 80
        mov     ecx, ebp                                ; 2A80 _ 89. E9
        cmp     cl, 63                                  ; 2A82 _ 80. F9, 3F
        ja      ?_0366                                  ; 2A85 _ 77, 51
        and     ebx, 3FH                                ; 2A87 _ 83. E3, 3F
        add     eax, 3                                  ; 2A8A _ 83. C0, 03
        or      ebx, edi                                ; 2A8D _ 09. FB
        or      ebx, dword [esp]                        ; 2A8F _ 0B. 1C 24
        jmp     ?_0341                                  ; 2A92 _ E9, FFFFFD79

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0359: movzx   ebx, byte [eax+1H]                      ; 2AA0 _ 0F B6. 58, 01
        lea     ecx, [ebx+70H]                          ; 2AA4 _ 8D. 4B, 70
        cmp     cl, 47                                  ; 2AA7 _ 80. F9, 2F
        ja      ?_0361                                  ; 2AAA _ 77, 0C
?_0360: lea     ecx, [ebx-80H]                          ; 2AAC _ 8D. 4B, 80
        cmp     cl, 63                                  ; 2AAF _ 80. F9, 3F
        jbe     ?_0354                                  ; 2AB2 _ 0F 86, FFFFFF27
?_0361: mov     eax, edi                                ; 2AB8 _ 89. F8
        jmp     ?_0363                                  ; 2ABA _ EB, 03

?_0362: add     eax, 1                                  ; 2ABC _ 83. C0, 01
?_0363: xor     ecx, ecx                                ; 2ABF _ 31. C9
        test    bl, bl                                  ; 2AC1 _ 84. DB
        jz      ?_0365                                  ; 2AC3 _ 74, 07
?_0364: movzx   ecx, byte [eax+1H]                      ; 2AC5 _ 0F B6. 48, 01
        add     eax, 1                                  ; 2AC9 _ 83. C0, 01
?_0365: add     dword [esp+8H], 1                       ; 2ACC _ 83. 44 24, 08, 01
        mov     edx, eax                                ; 2AD1 _ 89. C2
        jmp     ?_0339                                  ; 2AD3 _ E9, FFFFFD24

?_0366: add     eax, 2                                  ; 2AD8 _ 83. C0, 02
        jmp     ?_0363                                  ; 2ADB _ EB, E2
; genxScrubText End of function

?_0367: ; Local function
        add     eax, 3                                  ; 2ADD _ 83. C0, 03
        jmp     ?_0363                                  ; 2AE0 _ EB, DD

; Filling space: 0EH
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H, 8DH
;       db 0BCH, 27H, 00H, 00H, 00H, 00H

ALIGN   16

genxCharClass:; Function begin
        mov     edx, dword [esp+8H]                     ; 2AF0 _ 8B. 54 24, 08
        xor     eax, eax                                ; 2AF4 _ 31. C0
        test    edx, edx                                ; 2AF6 _ 85. D2
        js      ?_0369                                  ; 2AF8 _ 78, 1B
        cmp     edx, 65535                              ; 2AFA _ 81. FA, 0000FFFF
        jle     ?_0372                                  ; 2B00 _ 7E, 46
        xor     eax, eax                                ; 2B02 _ 31. C0
        cmp     edx, 1114111                            ; 2B04 _ 81. FA, 0010FFFF
        setle   al                                      ; 2B0A _ 0F 9E. C0
?_0368: test    eax, eax                                ; 2B0D _ 85. C0
        setne   al                                      ; 2B0F _ 0F 95. C0
        movzx   eax, al                                 ; 2B12 _ 0F B6. C0
?_0369: cmp     edx, 65535                              ; 2B15 _ 81. FA, 0000FFFF
        ja      ?_0371                                  ; 2B1B _ 77, 23
        mov     ecx, dword [esp+4H]                     ; 2B1D _ 8B. 4C 24, 04
        movzx   edx, byte [ecx+edx+10H]                 ; 2B21 _ 0F B6. 54 11, 10
        test    dl, 04H                                 ; 2B26 _ F6. C2, 04
        jz      ?_0370                                  ; 2B29 _ 74, 03
        or      eax, 04H                                ; 2B2B _ 83. C8, 04
?_0370: and     edx, 02H                                ; 2B2E _ 83. E2, 02
        jz      ?_0371                                  ; 2B31 _ 74, 0D
        or      eax, 02H                                ; 2B33 _ 83. C8, 02
        ret                                             ; 2B36 _ C3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0371: DB      0F3H                                    ; Prefix coded explicitly
        ret                                             ; 2B40 _ F3: C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0372: mov     eax, dword [esp+4H]                     ; 2B48 _ 8B. 44 24, 04
        movsx   eax, byte [eax+edx+10H]                 ; 2B4C _ 0F BE. 44 10, 10
        jmp     ?_0368                                  ; 2B51 _ EB, BA
; genxCharClass End of function

; Filling space: 0DH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BCH
;       db 27H, 00H, 00H, 00H, 00H

ALIGN   16

genxGetErrorMessage:; Function begin
        mov     edx, dword [esp+8H]                     ; 2B60 _ 8B. 54 24, 08
        mov     eax, dword [esp+4H]                     ; 2B64 _ 8B. 44 24, 04
        mov     eax, dword [eax+edx*4+10098H]           ; 2B68 _ 8B. 84 90, 00010098
        ret                                             ; 2B6F _ C3
; genxGetErrorMessage End of function

genxLastErrorMessage:; Function begin
        mov     eax, dword [esp+4H]                     ; 2B70 _ 8B. 44 24, 04
        mov     edx, dword [eax+8H]                     ; 2B74 _ 8B. 50, 08
        mov     eax, dword [eax+edx*4+10098H]           ; 2B77 _ 8B. 84 90, 00010098
        ret                                             ; 2B7E _ C3
; genxLastErrorMessage End of function

        nop                                             ; 2B7F _ 90

ALIGN   16
genxDeclareNamespace:; Function begin
        push    ebp                                     ; 2B80 _ 55
        push    edi                                     ; 2B81 _ 57
        push    esi                                     ; 2B82 _ 56
        push    ebx                                     ; 2B83 _ 53
        sub     esp, 172                                ; 2B84 _ 81. EC, 000000AC
        mov     eax, dword [esp+0C8H]                   ; 2B8A _ 8B. 84 24, 000000C8
        mov     esi, dword [esp+0C4H]                   ; 2B91 _ 8B. B4 24, 000000C4
        mov     ebp, dword [esp+0C0H]                   ; 2B98 _ 8B. AC 24, 000000C0
        mov     dword [esp+24H], eax                    ; 2B9F _ 89. 44 24, 24
        mov     eax, dword [esp+0CCH]                   ; 2BA3 _ 8B. 84 24, 000000CC
        mov     dword [esp+28H], eax                    ; 2BAA _ 89. 44 24, 28
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 2BAE _ 65: A1, 00000014
        mov     dword [esp+9CH], eax                    ; 2BB4 _ 89. 84 24, 0000009C
        xor     eax, eax                                ; 2BBB _ 31. C0
        test    esi, esi                                ; 2BBD _ 85. F6
        je      ?_0405                                  ; 2BBF _ 0F 84, 000003F3
        movzx   edx, byte [esi]                         ; 2BC5 _ 0F B6. 16
        mov     eax, esi                                ; 2BC8 _ 89. F0
        mov     edi, esi                                ; 2BCA _ 89. F7
        test    dl, dl                                  ; 2BCC _ 84. D2
        jnz     ?_0375                                  ; 2BCE _ 75, 20
        jmp     ?_0405                                  ; 2BD0 _ E9, 000003E3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0373: movsx   edx, byte [ebp+esi+10H]                 ; 2BD8 _ 0F BE. 54 35, 10
?_0374: test    edx, edx                                ; 2BDD _ 85. D2
        je      ?_0434                                  ; 2BDF _ 0F 84, 000006DF
        movzx   edx, byte [eax]                         ; 2BE5 _ 0F B6. 10
        test    dl, dl                                  ; 2BE8 _ 84. D2
        je      ?_0389                                  ; 2BEA _ 0F 84, 000001B0
?_0375: test    dl, dl                                  ; 2BF0 _ 84. D2
        js      ?_0377                                  ; 2BF2 _ 78, 1C
        add     eax, 1                                  ; 2BF4 _ 83. C0, 01
        movzx   esi, dl                                 ; 2BF7 _ 0F B6. F2
?_0376: cmp     esi, 65535                              ; 2BFA _ 81. FE, 0000FFFF
        jle     ?_0373                                  ; 2C00 _ 7E, D6
        xor     edx, edx                                ; 2C02 _ 31. D2
        cmp     esi, 1114111                            ; 2C04 _ 81. FE, 0010FFFF
        setle   dl                                      ; 2C0A _ 0F 9E. C2
        jmp     ?_0374                                  ; 2C0D _ EB, CE

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0377: cmp     dl, -63                                 ; 2C10 _ 80. FA, C1
        jbe     ?_0379                                  ; 2C13 _ 76, 73
        cmp     dl, -33                                 ; 2C15 _ 80. FA, DF
        ja      ?_0378                                  ; 2C18 _ 77, 26
        movzx   ecx, byte [eax+1H]                      ; 2C1A _ 0F B6. 48, 01
        and     edx, 1FH                                ; 2C1E _ 83. E2, 1F
        shl     edx, 6                                  ; 2C21 _ C1. E2, 06
        lea     ebx, [ecx-80H]                          ; 2C24 _ 8D. 59, 80
        cmp     bl, 63                                  ; 2C27 _ 80. FB, 3F
        ja      ?_0379                                  ; 2C2A _ 77, 5C
        mov     esi, ecx                                ; 2C2C _ 89. CE
        add     eax, 2                                  ; 2C2E _ 83. C0, 02
        and     esi, 3FH                                ; 2C31 _ 83. E6, 3F
        or      esi, edx                                ; 2C34 _ 09. D6
        jmp     ?_0376                                  ; 2C36 _ EB, C2

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0378: cmp     dl, -17                                 ; 2C40 _ 80. FA, EF
        ja      ?_0383                                  ; 2C43 _ 77, 7B
        mov     ebx, edx                                ; 2C45 _ 89. D3
        shl     ebx, 12                                 ; 2C47 _ C1. E3, 0C
        cmp     edx, 224                                ; 2C4A _ 81. FA, 000000E0
        movzx   ecx, bx                                 ; 2C50 _ 0F B7. CB
        mov     dword [esp+20H], ecx                    ; 2C53 _ 89. 4C 24, 20
        movzx   ecx, byte [eax+1H]                      ; 2C57 _ 0F B6. 48, 01
        je      ?_0385                                  ; 2C5B _ 0F 84, 000000DF
        cmp     edx, 236                                ; 2C61 _ 81. FA, 000000EC
        jle     ?_0386                                  ; 2C67 _ 0F 8E, 000000E1
        cmp     edx, 237                                ; 2C6D _ 81. FA, 000000ED
        jne     ?_0387                                  ; 2C73 _ 0F 85, 000000E3
        lea     edx, [ecx-80H]                          ; 2C79 _ 8D. 51, 80
        cmp     dl, 31                                  ; 2C7C _ 80. FA, 1F
        jbe     ?_0388                                  ; 2C7F _ 0F 86, 000000EB
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0379: mov     eax, 1                                  ; 2C88 _ B8, 00000001
?_0380: mov     dword [ebp+8H], eax                     ; 2C8D _ 89. 45, 08
?_0381: mov     edi, dword [esp+28H]                    ; 2C90 _ 8B. 7C 24, 28
        mov     dword [edi], eax                        ; 2C94 _ 89. 07
        xor     eax, eax                                ; 2C96 _ 31. C0
?_0382: mov     ecx, dword [esp+9CH]                    ; 2C98 _ 8B. 8C 24, 0000009C
; Note: Absolute memory address without relocation
        xor     ecx, dword [gs:14H]                     ; 2C9F _ 65: 33. 0D, 00000014
        jne     ?_0433                                  ; 2CA6 _ 0F 85, 00000613
        add     esp, 172                                ; 2CAC _ 81. C4, 000000AC
        pop     ebx                                     ; 2CB2 _ 5B
        pop     esi                                     ; 2CB3 _ 5E
        pop     edi                                     ; 2CB4 _ 5F
        pop     ebp                                     ; 2CB5 _ 5D
        ret                                             ; 2CB6 _ C3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0383: cmp     dl, -12                                 ; 2CC0 _ 80. FA, F4
        ja      ?_0379                                  ; 2CC3 _ 77, C3
        movzx   ecx, dl                                 ; 2CC5 _ 0F B6. CA
        and     edx, 07H                                ; 2CC8 _ 83. E2, 07
        shl     edx, 18                                 ; 2CCB _ C1. E2, 12
        cmp     ecx, 240                                ; 2CCE _ 81. F9, 000000F0
        je      ?_0403                                  ; 2CD4 _ 0F 84, 000002B6
        cmp     ecx, 244                                ; 2CDA _ 81. F9, 000000F4
        movzx   ecx, byte [eax+1H]                      ; 2CE0 _ 0F B6. 48, 01
        jne     ?_0404                                  ; 2CE4 _ 0F 85, 000002B6
        lea     ebx, [ecx-80H]                          ; 2CEA _ 8D. 59, 80
        cmp     bl, 15                                  ; 2CED _ 80. FB, 0F
        ja      ?_0379                                  ; 2CF0 _ 77, 96
?_0384: movzx   ebx, byte [eax+2H]                      ; 2CF2 _ 0F B6. 58, 02
        and     ecx, 3FH                                ; 2CF6 _ 83. E1, 3F
        mov     dword [esp+20H], ecx                    ; 2CF9 _ 89. 4C 24, 20
        shl     dword [esp+20H], 12                     ; 2CFD _ C1. 64 24, 20, 0C
        lea     esi, [ebx-80H]                          ; 2D02 _ 8D. 73, 80
        mov     ecx, esi                                ; 2D05 _ 89. F1
        cmp     cl, 63                                  ; 2D07 _ 80. F9, 3F
        ja      ?_0379                                  ; 2D0A _ 0F 87, FFFFFF78
        movzx   esi, byte [eax+3H]                      ; 2D10 _ 0F B6. 70, 03
        and     ebx, 3FH                                ; 2D14 _ 83. E3, 3F
        shl     ebx, 6                                  ; 2D17 _ C1. E3, 06
        lea     ecx, [esi-80H]                          ; 2D1A _ 8D. 4E, 80
        cmp     cl, 63                                  ; 2D1D _ 80. F9, 3F
        ja      ?_0379                                  ; 2D20 _ 0F 87, FFFFFF62
        and     esi, 3FH                                ; 2D26 _ 83. E6, 3F
        add     eax, 4                                  ; 2D29 _ 83. C0, 04
        or      esi, edx                                ; 2D2C _ 09. D6
        or      esi, ebx                                ; 2D2E _ 09. DE
        or      esi, dword [esp+20H]                    ; 2D30 _ 0B. 74 24, 20
        jmp     ?_0376                                  ; 2D34 _ E9, FFFFFEC1

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0385: lea     esi, [ecx+60H]                          ; 2D40 _ 8D. 71, 60
        mov     ebx, esi                                ; 2D43 _ 89. F3
        cmp     bl, 31                                  ; 2D45 _ 80. FB, 1F
        ja      ?_0379                                  ; 2D48 _ 0F 87, FFFFFF3A
?_0386: lea     esi, [ecx-80H]                          ; 2D4E _ 8D. 71, 80
        mov     ebx, esi                                ; 2D51 _ 89. F3
        cmp     bl, 63                                  ; 2D53 _ 80. FB, 3F
        ja      ?_0379                                  ; 2D56 _ 0F 87, FFFFFF2C
?_0387: cmp     edx, 237                                ; 2D5C _ 81. FA, 000000ED
        jle     ?_0388                                  ; 2D62 _ 7E, 0C
        lea     edx, [ecx-80H]                          ; 2D64 _ 8D. 51, 80
        cmp     dl, 63                                  ; 2D67 _ 80. FA, 3F
        ja      ?_0379                                  ; 2D6A _ 0F 87, FFFFFF18
?_0388: movzx   edx, byte [eax+2H]                      ; 2D70 _ 0F B6. 50, 02
        and     ecx, 3FH                                ; 2D74 _ 83. E1, 3F
        shl     ecx, 6                                  ; 2D77 _ C1. E1, 06
        lea     esi, [edx-80H]                          ; 2D7A _ 8D. 72, 80
        mov     ebx, esi                                ; 2D7D _ 89. F3
        cmp     bl, 63                                  ; 2D7F _ 80. FB, 3F
        ja      ?_0379                                  ; 2D82 _ 0F 87, FFFFFF00
        mov     esi, edx                                ; 2D88 _ 89. D6
        add     eax, 3                                  ; 2D8A _ 83. C0, 03
        and     esi, 3FH                                ; 2D8D _ 83. E6, 3F
        or      esi, dword [esp+20H]                    ; 2D90 _ 0B. 74 24, 20
        or      esi, ecx                                ; 2D94 _ 09. CE
        jmp     ?_0376                                  ; 2D96 _ E9, FFFFFE5F

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0389: mov     ecx, dword [esp+24H]                    ; 2DA0 _ 8B. 4C 24, 24
        mov     esi, edi                                ; 2DA4 _ 89. FE
        mov     dword [ebp+8H], 0                       ; 2DA6 _ C7. 45, 08, 00000000
        test    ecx, ecx                                ; 2DAD _ 85. C9
        jz      ?_0390                                  ; 2DAF _ 74, 0D
        mov     eax, dword [esp+24H]                    ; 2DB1 _ 8B. 44 24, 24
        cmp     byte [eax], 0                           ; 2DB5 _ 80. 38, 00
        jne     ?_0406                                  ; 2DB8 _ 0F 85, 00000212
?_0390: mov     eax, dword [ebp+1002CH]                 ; 2DBE _ 8B. 85, 0001002C
        mov     ecx, dword [ebp+10034H]                 ; 2DC4 _ 8B. 8D, 00010034
        test    eax, eax                                ; 2DCA _ 85. C0
        mov     dword [esp+20H], eax                    ; 2DCC _ 89. 44 24, 20
        jle     ?_0398                                  ; 2DD0 _ 0F 8E, 000000D6
        xor     edi, edi                                ; 2DD6 _ 31. FF
        mov     dword [esp+2CH], ebp                    ; 2DD8 _ 89. 6C 24, 2C
        mov     ebx, ecx                                ; 2DDC _ 89. CB
        mov     ebp, edi                                ; 2DDE _ 89. FD
        jmp     ?_0392                                  ; 2DE0 _ EB, 13

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0391: add     ebp, 1                                  ; 2DE8 _ 83. C5, 01
        cmp     ebp, dword [esp+20H]                    ; 2DEB _ 3B. 6C 24, 20
        je      ?_0397                                  ; 2DEF _ 0F 84, 000000B3
?_0392: mov     edi, dword [ebx+ebp*4]                  ; 2DF5 _ 8B. 3C AB
        mov     eax, dword [edi+4H]                     ; 2DF8 _ 8B. 47, 04
        mov     dword [esp], esi                        ; 2DFB _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 2DFE _ 89. 44 24, 04
        call    strcmp                                  ; 2E02 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 2E07 _ 85. C0
        jnz     ?_0391                                  ; 2E09 _ 75, DD
        mov     edx, dword [esp+24H]                    ; 2E0B _ 8B. 54 24, 24
        mov     ebx, edi                                ; 2E0F _ 89. FB
        mov     ebp, dword [esp+2CH]                    ; 2E11 _ 8B. 6C 24, 2C
        test    edx, edx                                ; 2E15 _ 85. D2
        je      ?_0402                                  ; 2E17 _ 0F 84, 00000153
        mov     eax, dword [esp+24H]                    ; 2E1D _ 8B. 44 24, 24
        movzx   esi, byte [eax]                         ; 2E21 _ 0F B6. 30
        mov     eax, esi                                ; 2E24 _ 89. F0
        test    al, al                                  ; 2E26 _ 84. C0
        mov     eax, dword [ebx+14H]                    ; 2E28 _ 8B. 43, 14
        jnz     ?_0393                                  ; 2E2B _ 75, 0C
        cmp     eax, dword [ebp+10020H]                 ; 2E2D _ 3B. 85, 00010020
        je      ?_0402                                  ; 2E33 _ 0F 84, 00000137
?_0393: mov     ecx, dword [esp+24H]                    ; 2E39 _ 8B. 4C 24, 24
        mov     dword [esp+4H], ecx                     ; 2E3D _ 89. 4C 24, 04
        mov     eax, dword [eax+4H]                     ; 2E41 _ 8B. 40, 04
        add     eax, 6                                  ; 2E44 _ 83. C0, 06
        mov     dword [esp], eax                        ; 2E47 _ 89. 04 24
        call    strcmp                                  ; 2E4A _ E8, FFFFFFFC(rel)
        mov     edx, esi                                ; 2E4F _ 89. F2
        test    eax, eax                                ; 2E51 _ 85. C0
        je      ?_0402                                  ; 2E53 _ 0F 84, 00000117
?_0394: test    dl, dl                                  ; 2E59 _ 84. D2
        jne     ?_0411                                  ; 2E5B _ 0F 85, 000001FF
        mov     esi, dword [ebp+1001CH]                 ; 2E61 _ 8B. B5, 0001001C
        test    esi, esi                                ; 2E67 _ 85. F6
        jne     ?_0414                                  ; 2E69 _ 0F 85, 00000252
        mov     dword [ebp+1001CH], 1                   ; 2E6F _ C7. 85, 0001001C, 00000001
        mov     eax, dword [ebp+10020H]                 ; 2E79 _ 8B. 85, 00010020
?_0395: mov     edx, dword [ebx+14H]                    ; 2E7F _ 8B. 53, 14
        test    edx, edx                                ; 2E82 _ 85. D2
        jz      ?_0396                                  ; 2E84 _ 74, 0B
        cmp     eax, edx                                ; 2E86 _ 39. D0
        jz      ?_0396                                  ; 2E88 _ 74, 07
        mov     dword [ebx+0CH], 1                      ; 2E8A _ C7. 43, 0C, 00000001
?_0396: mov     dword [ebx+14H], eax                    ; 2E91 _ 89. 43, 14
        mov     eax, dword [esp+28H]                    ; 2E94 _ 8B. 44 24, 28
        mov     dword [eax], 0                          ; 2E98 _ C7. 00, 00000000
        mov     eax, ebx                                ; 2E9E _ 89. D8
        jmp     ?_0382                                  ; 2EA0 _ E9, FFFFFDF3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0397: mov     ebp, dword [esp+2CH]                    ; 2EA8 _ 8B. 6C 24, 2C
?_0398: mov     eax, dword [esp+24H]                    ; 2EAC _ 8B. 44 24, 24
        test    eax, eax                                ; 2EB0 _ 85. C0
        je      ?_0427                                  ; 2EB2 _ 0F 84, 00000380
?_0399: mov     eax, dword [ebp+10228H]                 ; 2EB8 _ 8B. 85, 00010228
        mov     edx, dword [ebp+10010H]                 ; 2EBE _ 8B. 95, 00010010
        test    eax, eax                                ; 2EC4 _ 85. C0
        je      ?_0413                                  ; 2EC6 _ 0F 84, 000001E2
        mov     dword [esp+4H], 24                      ; 2ECC _ C7. 44 24, 04, 00000018
        mov     dword [esp], edx                        ; 2ED4 _ 89. 14 24
        call    eax                                     ; 2ED7 _ FF. D0
        mov     ebx, eax                                ; 2ED9 _ 89. C3
?_0400: test    ebx, ebx                                ; 2EDB _ 85. DB
        je      ?_0423                                  ; 2EDD _ 0F 84, 00000308
        mov     dword [ebx], ebp                        ; 2EE3 _ 89. 2B
        mov     dword [ebx+0CH], 0                      ; 2EE5 _ C7. 43, 0C, 00000000
        mov     dword [esp], esi                        ; 2EEC _ 89. 34 24
        call    strlen                                  ; 2EEF _ E8, FFFFFFFC(rel)
        mov     ecx, dword [ebp+10010H]                 ; 2EF4 _ 8B. 8D, 00010010
        lea     edx, [eax+1H]                           ; 2EFA _ 8D. 50, 01
        mov     eax, dword [ebp+10228H]                 ; 2EFD _ 8B. 85, 00010228
        test    eax, eax                                ; 2F03 _ 85. C0
        je      ?_0415                                  ; 2F05 _ 0F 84, 000001C7
        mov     dword [esp+4H], edx                     ; 2F0B _ 89. 54 24, 04
        mov     dword [esp], ecx                        ; 2F0F _ 89. 0C 24
        call    eax                                     ; 2F12 _ FF. D0
        mov     edi, eax                                ; 2F14 _ 89. C7
?_0401: test    edi, edi                                ; 2F16 _ 85. FF
        je      ?_0422                                  ; 2F18 _ 0F 84, 000002C6
        mov     dword [esp+4H], esi                     ; 2F1E _ 89. 74 24, 04
        mov     dword [esp], edi                        ; 2F22 _ 89. 3C 24
        call    strcpy                                  ; 2F25 _ E8, FFFFFFFC(rel)
        mov     dword [ebx+4H], edi                     ; 2F2A _ 89. 7B, 04
        lea     eax, [ebp+10028H]                       ; 2F2D _ 8D. 85, 00010028
        mov     edx, ebx                                ; 2F33 _ 89. DA
        call    listAppend                              ; 2F35 _ E8, FFFFD106
        test    eax, eax                                ; 2F3A _ 85. C0
        mov     dword [ebp+8H], eax                     ; 2F3C _ 89. 45, 08
        jne     ?_0381                                  ; 2F3F _ 0F 85, FFFFFD4B
        mov     eax, dword [esp+24H]                    ; 2F45 _ 8B. 44 24, 24
        mov     dword [ebx+10H], 0                      ; 2F49 _ C7. 43, 10, 00000000
        mov     dword [ebx+14H], 0                      ; 2F50 _ C7. 43, 14, 00000000
        mov     dword [ebx+8H], 0                       ; 2F57 _ C7. 43, 08, 00000000
        movzx   edx, byte [eax]                         ; 2F5E _ 0F B6. 10
        jmp     ?_0394                                  ; 2F61 _ E9, FFFFFEF3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0402: mov     eax, dword [esp+28H]                    ; 2F70 _ 8B. 44 24, 28
        mov     dword [eax], 0                          ; 2F74 _ C7. 00, 00000000
        mov     eax, ebx                                ; 2F7A _ 89. D8
        mov     dword [ebp+8H], 0                       ; 2F7C _ C7. 45, 08, 00000000
        jmp     ?_0382                                  ; 2F83 _ E9, FFFFFD10

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0403: movzx   ecx, byte [eax+1H]                      ; 2F90 _ 0F B6. 48, 01
        lea     ebx, [ecx+70H]                          ; 2F94 _ 8D. 59, 70
        cmp     bl, 47                                  ; 2F97 _ 80. FB, 2F
        ja      ?_0379                                  ; 2F9A _ 0F 87, FFFFFCE8
?_0404: lea     ebx, [ecx-80H]                          ; 2FA0 _ 8D. 59, 80
        cmp     bl, 63                                  ; 2FA3 _ 80. FB, 3F
        jbe     ?_0384                                  ; 2FA6 _ 0F 86, FFFFFD46
        jmp     ?_0379                                  ; 2FAC _ E9, FFFFFCD7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0405: mov     dword [ebp+8H], 5                       ; 2FB8 _ C7. 45, 08, 00000005
        mov     eax, 5                                  ; 2FBF _ B8, 00000005
        jmp     ?_0381                                  ; 2FC4 _ E9, FFFFFCC7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0406: mov     dword [esp+34H], eax                    ; 2FD0 _ 89. 44 24, 34
        lea     eax, [esp+34H]                          ; 2FD4 _ 8D. 44 24, 34
        mov     dword [esp], eax                        ; 2FD8 _ 89. 04 24
        call    genxNextUnicodeChar                     ; 2FDB _ E8, FFFFFFFC(rel)
        cmp     eax, 65535                              ; 2FE0 _ 3D, 0000FFFF
        ja      ?_0416                                  ; 2FE5 _ 0F 87, 000000F6
        test    byte [ebp+eax+10H], 02H                 ; 2FEB _ F6. 44 05, 10, 02
        je      ?_0416                                  ; 2FF0 _ 0F 84, 000000EB
?_0407: mov     edi, dword [esp+34H]                    ; 2FF6 _ 8B. 7C 24, 34
        jmp     ?_0410                                  ; 2FFA _ EB, 25

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0408: add     edi, 1                                  ; 3000 _ 83. C7, 01
        movzx   edx, cl                                 ; 3003 _ 0F B6. D1
?_0409: cmp     edx, 65535                              ; 3006 _ 81. FA, 0000FFFF
        mov     dword [esp+34H], edi                    ; 300C _ 89. 7C 24, 34
        ja      ?_0417                                  ; 3010 _ 0F 87, 000000E0
        test    byte [ebp+edx+10H], 04H                 ; 3016 _ F6. 44 15, 10, 04
        je      ?_0417                                  ; 301B _ 0F 84, 000000D5
?_0410: movzx   ecx, byte [edi]                         ; 3021 _ 0F B6. 0F
        test    cl, cl                                  ; 3024 _ 84. C9
        je      ?_0431                                  ; 3026 _ 0F 84, 0000027C
        jns     ?_0408                                  ; 302C _ 79, D2
        cmp     cl, -63                                 ; 302E _ 80. F9, C1
        jbe     ?_0379                                  ; 3031 _ 0F 86, FFFFFC51
        cmp     cl, -33                                 ; 3037 _ 80. F9, DF
        ja      ?_0418                                  ; 303A _ 0F 87, 000000C0
        movzx   edx, byte [edi+1H]                      ; 3040 _ 0F B6. 57, 01
        and     ecx, 1FH                                ; 3044 _ 83. E1, 1F
        shl     ecx, 6                                  ; 3047 _ C1. E1, 06
        lea     eax, [edx-80H]                          ; 304A _ 8D. 42, 80
        cmp     al, 63                                  ; 304D _ 3C, 3F
        ja      ?_0379                                  ; 304F _ 0F 87, FFFFFC33
        and     edx, 3FH                                ; 3055 _ 83. E2, 3F
        add     edi, 2                                  ; 3058 _ 83. C7, 02
        or      edx, ecx                                ; 305B _ 09. CA
        jmp     ?_0409                                  ; 305D _ EB, A7

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0411: mov     edx, dword [esp+24H]                    ; 3060 _ 8B. 54 24, 24
        xor     ecx, ecx                                ; 3064 _ 31. C9
        mov     eax, ebp                                ; 3066 _ 89. E8
        call    storePrefix                             ; 3068 _ E8, FFFFD5D3
        test    eax, eax                                ; 306D _ 85. C0
        je      ?_0428                                  ; 306F _ 0F 84, 00000203
        mov     ecx, dword [esp+28H]                    ; 3075 _ 8B. 4C 24, 28
        mov     dword [esp+4H], ecx                     ; 3079 _ 89. 4C 24, 04
        mov     ecx, eax                                ; 307D _ 89. C1
        mov     eax, ebp                                ; 307F _ 89. E8
        mov     edx, dword [ebx+4H]                     ; 3081 _ 8B. 53, 04
        mov     dword [esp], edx                        ; 3084 _ 89. 14 24
        xor     edx, edx                                ; 3087 _ 31. D2
        call    declareAttribute                        ; 3089 _ E8, FFFFD172
        test    eax, eax                                ; 308E _ 85. C0
        je      ?_0432                                  ; 3090 _ 0F 84, 0000021E
        mov     ecx, dword [esp+28H]                    ; 3096 _ 8B. 4C 24, 28
        mov     edx, dword [ecx]                        ; 309A _ 8B. 11
        test    edx, edx                                ; 309C _ 85. D2
        je      ?_0395                                  ; 309E _ 0F 84, FFFFFDDB
?_0412: mov     dword [ebp+8H], edx                     ; 30A4 _ 89. 55, 08
        xor     eax, eax                                ; 30A7 _ 31. C0
        jmp     ?_0382                                  ; 30A9 _ E9, FFFFFBEA

?_0413: mov     dword [esp], 24                         ; 30AE _ C7. 04 24, 00000018
        call    malloc                                  ; 30B5 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 30BA _ 89. C3
        jmp     ?_0400                                  ; 30BC _ E9, FFFFFE1A

?_0414: mov     dword [ebp+8H], 7                       ; 30C1 _ C7. 45, 08, 00000007
        mov     eax, 7                                  ; 30C8 _ B8, 00000007
        jmp     ?_0381                                  ; 30CD _ E9, FFFFFBBE

?_0415: mov     dword [esp], edx                        ; 30D2 _ 89. 14 24
        call    malloc                                  ; 30D5 _ E8, FFFFFFFC(rel)
        mov     edi, eax                                ; 30DA _ 89. C7
        jmp     ?_0401                                  ; 30DC _ E9, FFFFFE35

?_0416: cmp     eax, 95                                 ; 30E1 _ 83. F8, 5F
        je      ?_0407                                  ; 30E4 _ 0F 84, FFFFFF0C
        cmp     eax, 58                                 ; 30EA _ 83. F8, 3A
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
        je      ?_0407                                  ; 30F0 _ 0F 84, FFFFFF00
?_0417: mov     eax, 3                                  ; 30F6 _ B8, 00000003
        jmp     ?_0380                                  ; 30FB _ E9, FFFFFB8D

?_0418: cmp     cl, -17                                 ; 3100 _ 80. F9, EF
        ja      ?_0420                                  ; 3103 _ 77, 61
        mov     ebx, ecx                                ; 3105 _ 89. CB
        movzx   eax, byte [edi+1H]                      ; 3107 _ 0F B6. 47, 01
        shl     ebx, 12                                 ; 310B _ C1. E3, 0C
        cmp     ecx, 224                                ; 310E _ 81. F9, 000000E0
        movzx   ebx, bx                                 ; 3114 _ 0F B7. DB
        je      ?_0424                                  ; 3117 _ 0F 84, 000000DF
        cmp     ecx, 236                                ; 311D _ 81. F9, 000000EC
        jle     ?_0425                                  ; 3123 _ 0F 8E, 000000DF
        cmp     ecx, 237                                ; 3129 _ 81. F9, 000000ED
        jne     ?_0426                                  ; 312F _ 0F 85, 000000DF
        lea     edx, [eax-80H]                          ; 3135 _ 8D. 50, 80
        cmp     dl, 31                                  ; 3138 _ 80. FA, 1F
        ja      ?_0379                                  ; 313B _ 0F 87, FFFFFB47
?_0419: movzx   edx, byte [edi+2H]                      ; 3141 _ 0F B6. 57, 02
        and     eax, 3FH                                ; 3145 _ 83. E0, 3F
        shl     eax, 6                                  ; 3148 _ C1. E0, 06
        lea     ecx, [edx-80H]                          ; 314B _ 8D. 4A, 80
        cmp     cl, 63                                  ; 314E _ 80. F9, 3F
        ja      ?_0379                                  ; 3151 _ 0F 87, FFFFFB31
        and     edx, 3FH                                ; 3157 _ 83. E2, 3F
        add     edi, 3                                  ; 315A _ 83. C7, 03
        or      edx, ebx                                ; 315D _ 09. DA
        or      edx, eax                                ; 315F _ 09. C2
        jmp     ?_0409                                  ; 3161 _ E9, FFFFFEA0

?_0420: cmp     cl, -12                                 ; 3166 _ 80. F9, F4
        ja      ?_0379                                  ; 3169 _ 0F 87, FFFFFB19
        movzx   eax, cl                                 ; 316F _ 0F B6. C1
        and     ecx, 07H                                ; 3172 _ 83. E1, 07
        shl     ecx, 18                                 ; 3175 _ C1. E1, 12
        cmp     eax, 240                                ; 3178 _ 3D, 000000F0
        je      ?_0429                                  ; 317D _ 0F 84, 000000FD
        cmp     eax, 244                                ; 3183 _ 3D, 000000F4
        movzx   eax, byte [edi+1H]                      ; 3188 _ 0F B6. 47, 01
        jne     ?_0430                                  ; 318C _ 0F 85, 000000FE
        lea     edx, [eax-80H]                          ; 3192 _ 8D. 50, 80
        cmp     dl, 15                                  ; 3195 _ 80. FA, 0F
        ja      ?_0379                                  ; 3198 _ 0F 87, FFFFFAEA
?_0421: movzx   edx, byte [edi+2H]                      ; 319E _ 0F B6. 57, 02
        and     eax, 3FH                                ; 31A2 _ 83. E0, 3F
        mov     dword [esp+20H], eax                    ; 31A5 _ 89. 44 24, 20
        shl     dword [esp+20H], 12                     ; 31A9 _ C1. 64 24, 20, 0C
        lea     ebx, [edx-80H]                          ; 31AE _ 8D. 5A, 80
        cmp     bl, 63                                  ; 31B1 _ 80. FB, 3F
        ja      ?_0379                                  ; 31B4 _ 0F 87, FFFFFACE
        movzx   ebx, byte [edi+3H]                      ; 31BA _ 0F B6. 5F, 03
        and     edx, 3FH                                ; 31BE _ 83. E2, 3F
        shl     edx, 6                                  ; 31C1 _ C1. E2, 06
        lea     eax, [ebx-80H]                          ; 31C4 _ 8D. 43, 80
        cmp     al, 63                                  ; 31C7 _ 3C, 3F
        ja      ?_0379                                  ; 31C9 _ 0F 87, FFFFFAB9
        or      edx, ecx                                ; 31CF _ 09. CA
        mov     ecx, ebx                                ; 31D1 _ 89. D9
        add     edi, 4                                  ; 31D3 _ 83. C7, 04
        and     ecx, 3FH                                ; 31D6 _ 83. E1, 3F
        or      edx, ecx                                ; 31D9 _ 09. CA
        or      edx, dword [esp+20H]                    ; 31DB _ 0B. 54 24, 20
        jmp     ?_0409                                  ; 31DF _ E9, FFFFFE22

?_0422: mov     dword [ebx+4H], 0                       ; 31E4 _ C7. 43, 04, 00000000
?_0423: mov     dword [ebp+8H], 4                       ; 31EB _ C7. 45, 08, 00000004
        mov     eax, 4                                  ; 31F2 _ B8, 00000004
        jmp     ?_0381                                  ; 31F7 _ E9, FFFFFA94

?_0424: lea     edx, [eax+60H]                          ; 31FC _ 8D. 50, 60
        cmp     dl, 31                                  ; 31FF _ 80. FA, 1F
        ja      ?_0379                                  ; 3202 _ 0F 87, FFFFFA80
?_0425: lea     edx, [eax-80H]                          ; 3208 _ 8D. 50, 80
        cmp     dl, 63                                  ; 320B _ 80. FA, 3F
        ja      ?_0379                                  ; 320E _ 0F 87, FFFFFA74
?_0426: cmp     ecx, 237                                ; 3214 _ 81. F9, 000000ED
        jle     ?_0419                                  ; 321A _ 0F 8E, FFFFFF21
        lea     edx, [eax-80H]                          ; 3220 _ 8D. 50, 80
        cmp     dl, 63                                  ; 3223 _ 80. FA, 3F
        jbe     ?_0419                                  ; 3226 _ 0F 86, FFFFFF15
        jmp     ?_0379                                  ; 322C _ E9, FFFFFA57

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0427: mov     eax, dword [ebp+10014H]                 ; 3238 _ 8B. 85, 00010014
        lea     ebx, [esp+38H]                          ; 323E _ 8D. 5C 24, 38
        lea     edx, [eax+1H]                           ; 3242 _ 8D. 50, 01
        mov     dword [ebp+10014H], edx                 ; 3245 _ 89. 95, 00010014
        mov     dword [esp+10H], eax                    ; 324B _ 89. 44 24, 10
        mov     dword [esp+0CH], ?_0857                 ; 324F _ C7. 44 24, 0C, 0000001C(d)
        mov     dword [esp+8H], 100                     ; 3257 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], 1                       ; 325F _ C7. 44 24, 04, 00000001
        mov     dword [esp], ebx                        ; 3267 _ 89. 1C 24
        call    __sprintf_chk                           ; 326A _ E8, FFFFFFFC(rel)
        mov     dword [esp+24H], ebx                    ; 326F _ 89. 5C 24, 24
        jmp     ?_0399                                  ; 3273 _ E9, FFFFFC40

?_0428: mov     eax, dword [ebp+8H]                     ; 3278 _ 8B. 45, 08
        jmp     ?_0381                                  ; 327B _ E9, FFFFFA10

?_0429: movzx   eax, byte [edi+1H]                      ; 3280 _ 0F B6. 47, 01
        lea     edx, [eax+70H]                          ; 3284 _ 8D. 50, 70
        cmp     dl, 47                                  ; 3287 _ 80. FA, 2F
        ja      ?_0379                                  ; 328A _ 0F 87, FFFFF9F8
?_0430: lea     edx, [eax-80H]                          ; 3290 _ 8D. 50, 80
        cmp     dl, 63                                  ; 3293 _ 80. FA, 3F
        jbe     ?_0421                                  ; 3296 _ 0F 86, FFFFFF02
        jmp     ?_0379                                  ; 329C _ E9, FFFFF9E7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0431: mov     dword [ebp+8H], 0                       ; 32A8 _ C7. 45, 08, 00000000
        jmp     ?_0390                                  ; 32AF _ E9, FFFFFB0A

?_0432: mov     eax, dword [esp+28H]                    ; 32B4 _ 8B. 44 24, 28
        mov     edx, dword [eax]                        ; 32B8 _ 8B. 10
        jmp     ?_0412                                  ; 32BA _ E9, FFFFFDE5

?_0433: call    __stack_chk_fail                        ; 32BF _ E8, FFFFFFFC(rel)
?_0434: mov     eax, 2                                  ; 32C4 _ B8, 00000002
        jmp     ?_0380                                  ; 32C9 _ E9, FFFFF9BF
; genxDeclareNamespace End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

genxNew:; Function begin
        push    edi                                     ; 32D0 _ 57
        push    esi                                     ; 32D1 _ 56
        push    ebx                                     ; 32D2 _ 53
        sub     esp, 16                                 ; 32D3 _ 83. EC, 10
        mov     esi, dword [esp+20H]                    ; 32D6 _ 8B. 74 24, 20
        mov     edi, dword [esp+28H]                    ; 32DA _ 8B. 7C 24, 28
        test    esi, esi                                ; 32DE _ 85. F6
        je      ?_0449                                  ; 32E0 _ 0F 84, 000003E2
        mov     dword [esp+4H], 66096                   ; 32E6 _ C7. 44 24, 04, 00010230
        mov     dword [esp], edi                        ; 32EE _ 89. 3C 24
        call    esi                                     ; 32F1 _ FF. D6
        mov     ebx, eax                                ; 32F3 _ 89. C3
?_0435: test    ebx, ebx                                ; 32F5 _ 85. DB
        je      ?_0445                                  ; 32F7 _ 0F 84, 00000373
        mov     eax, dword [esp+24H]                    ; 32FD _ 8B. 44 24, 24
        test    esi, esi                                ; 3301 _ 85. F6
        mov     dword [ebx+8H], 0                       ; 3303 _ C7. 43, 08, 00000000
        mov     dword [ebx+10228H], esi                 ; 330A _ 89. B3, 00010228
        mov     dword [ebx+10010H], edi                 ; 3310 _ 89. BB, 00010010
        mov     dword [ebx+0CH], 0                      ; 3316 _ C7. 43, 0C, 00000000
        mov     dword [ebx+1022CH], eax                 ; 331D _ 89. 83, 0001022C
        mov     dword [ebx+10028H], ebx                 ; 3323 _ 89. 9B, 00010028
        mov     dword [ebx+1002CH], 0                   ; 3329 _ C7. 83, 0001002C, 00000000
        mov     dword [ebx+10030H], 10                  ; 3333 _ C7. 83, 00010030, 0000000A
        je      ?_0446                                  ; 333D _ 0F 84, 0000033D
        mov     dword [esp+4H], 40                      ; 3343 _ C7. 44 24, 04, 00000028
        mov     dword [esp], edi                        ; 334B _ 89. 3C 24
        call    esi                                     ; 334E _ FF. D6
?_0436: test    eax, eax                                ; 3350 _ 85. C0
        mov     dword [ebx+10034H], eax                 ; 3352 _ 89. 83, 00010034
        je      ?_0445                                  ; 3358 _ 0F 84, 00000312
        mov     eax, dword [ebx+10228H]                 ; 335E _ 8B. 83, 00010228
        mov     dword [ebx+10038H], ebx                 ; 3364 _ 89. 9B, 00010038
        mov     dword [ebx+1003CH], 0                   ; 336A _ C7. 83, 0001003C, 00000000
        mov     edx, dword [ebx+10010H]                 ; 3374 _ 8B. 93, 00010010
        mov     dword [ebx+10040H], 10                  ; 337A _ C7. 83, 00010040, 0000000A
        test    eax, eax                                ; 3384 _ 85. C0
        je      ?_0448                                  ; 3386 _ 0F 84, 00000324
        mov     dword [esp+4H], 40                      ; 338C _ C7. 44 24, 04, 00000028
        mov     dword [esp], edx                        ; 3394 _ 89. 14 24
        call    eax                                     ; 3397 _ FF. D0
?_0437: test    eax, eax                                ; 3399 _ 85. C0
        mov     dword [ebx+10044H], eax                 ; 339B _ 89. 83, 00010044
        je      ?_0445                                  ; 33A1 _ 0F 84, 000002C9
        mov     eax, dword [ebx+10228H]                 ; 33A7 _ 8B. 83, 00010228
        mov     dword [ebx+10048H], ebx                 ; 33AD _ 89. 9B, 00010048
        mov     dword [ebx+1004CH], 0                   ; 33B3 _ C7. 83, 0001004C, 00000000
        mov     edx, dword [ebx+10010H]                 ; 33BD _ 8B. 93, 00010010
        mov     dword [ebx+10050H], 10                  ; 33C3 _ C7. 83, 00010050, 0000000A
        test    eax, eax                                ; 33CD _ 85. C0
        je      ?_0447                                  ; 33CF _ 0F 84, 000002C3
        mov     dword [esp+4H], 40                      ; 33D5 _ C7. 44 24, 04, 00000028
        mov     dword [esp], edx                        ; 33DD _ 89. 14 24
        call    eax                                     ; 33E0 _ FF. D0
?_0438: test    eax, eax                                ; 33E2 _ 85. C0
        mov     dword [ebx+10054H], eax                 ; 33E4 _ 89. 83, 00010054
        je      ?_0445                                  ; 33EA _ 0F 84, 00000280
        mov     eax, dword [ebx+10228H]                 ; 33F0 _ 8B. 83, 00010228
        mov     dword [ebx+10058H], ebx                 ; 33F6 _ 89. 9B, 00010058
        mov     dword [ebx+1005CH], 0                   ; 33FC _ C7. 83, 0001005C, 00000000
        mov     edx, dword [ebx+10010H]                 ; 3406 _ 8B. 93, 00010010
        mov     dword [ebx+10060H], 10                  ; 340C _ C7. 83, 00010060, 0000000A
        test    eax, eax                                ; 3416 _ 85. C0
        je      ?_0450                                  ; 3418 _ 0F 84, 000002C2
        mov     dword [esp+4H], 40                      ; 341E _ C7. 44 24, 04, 00000028
        mov     dword [esp], edx                        ; 3426 _ 89. 14 24
        call    eax                                     ; 3429 _ FF. D0
?_0439: test    eax, eax                                ; 342B _ 85. C0
        mov     dword [ebx+10064H], eax                 ; 342D _ 89. 83, 00010064
        je      ?_0445                                  ; 3433 _ 0F 84, 00000237
        mov     eax, dword [ebx+10228H]                 ; 3439 _ 8B. 83, 00010228
        mov     dword [ebx+10068H], ebx                 ; 343F _ 89. 9B, 00010068
        mov     dword [ebx+1006CH], 0                   ; 3445 _ C7. 83, 0001006C, 00000000
        mov     edx, dword [ebx+10010H]                 ; 344F _ 8B. 93, 00010010
        mov     dword [ebx+10070H], 10                  ; 3455 _ C7. 83, 00010070, 0000000A
        test    eax, eax                                ; 345F _ 85. C0
        je      ?_0451                                  ; 3461 _ 0F 84, 00000291
        mov     dword [esp+4H], 40                      ; 3467 _ C7. 44 24, 04, 00000028
        mov     dword [esp], edx                        ; 346F _ 89. 14 24
        call    eax                                     ; 3472 _ FF. D0
?_0440: test    eax, eax                                ; 3474 _ 85. C0
        mov     dword [ebx+10074H], eax                 ; 3476 _ 89. 83, 00010074
        je      ?_0445                                  ; 347C _ 0F 84, 000001EE
        mov     dword [ebx+1008CH], 100                 ; 3482 _ C7. 83, 0001008C, 00000064
        mov     eax, dword [ebx+10228H]                 ; 348C _ 8B. 83, 00010228
        mov     edx, dword [ebx+10010H]                 ; 3492 _ 8B. 93, 00010010
        test    eax, eax                                ; 3498 _ 85. C0
        je      ?_0452                                  ; 349A _ 0F 84, 00000270
        mov     dword [esp+4H], 100                     ; 34A0 _ C7. 44 24, 04, 00000064
        mov     dword [esp], edx                        ; 34A8 _ 89. 14 24
        call    eax                                     ; 34AB _ FF. D0
?_0441: test    eax, eax                                ; 34AD _ 85. C0
        mov     dword [ebx+10084H], eax                 ; 34AF _ 89. 83, 00010084
        je      ?_0444                                  ; 34B5 _ 0F 84, 000001A5
        mov     eax, dword [ebx+10228H]                 ; 34BB _ 8B. 83, 00010228
        mov     dword [ebx+8H], 0                       ; 34C1 _ C7. 43, 08, 00000000
        mov     dword [ebx+10088H], 0                   ; 34C8 _ C7. 83, 00010088, 00000000
        mov     edx, dword [ebx+10010H]                 ; 34D2 _ 8B. 93, 00010010
        test    eax, eax                                ; 34D8 _ 85. C0
        je      ?_0453                                  ; 34DA _ 0F 84, 00000248
        mov     dword [esp+4H], 1                       ; 34E0 _ C7. 44 24, 04, 00000001
        mov     dword [esp], edx                        ; 34E8 _ 89. 14 24
        call    eax                                     ; 34EB _ FF. D0
?_0442: test    eax, eax                                ; 34ED _ 85. C0
        je      ?_0443                                  ; 34EF _ 0F 84, 0000015B
        lea     esi, [ebx+8H]                           ; 34F5 _ 8D. 73, 08
        mov     byte [eax], 0                           ; 34F8 _ C6. 00, 00
        xor     edx, edx                                ; 34FB _ 31. D2
        mov     dword [ebx+10018H], eax                 ; 34FD _ 89. 83, 00010018
        mov     ecx, ?_0849                             ; 3503 _ B9, 00000000(d)
        mov     eax, ebx                                ; 3508 _ 89. D8
        mov     dword [esp+4H], esi                     ; 350A _ 89. 74 24, 04
        mov     dword [esp], 0                          ; 350E _ C7. 04 24, 00000000
        call    declareAttribute                        ; 3515 _ E8, FFFFCCE6
        test    eax, eax                                ; 351A _ 85. C0
        mov     dword [ebx+10020H], eax                 ; 351C _ 89. 83, 00010020
        je      ?_0445                                  ; 3522 _ 0F 84, 00000148
        mov     eax, dword [ebx+8H]                     ; 3528 _ 8B. 43, 08
        test    eax, eax                                ; 352B _ 85. C0
        jne     ?_0445                                  ; 352D _ 0F 85, 0000013D
        mov     dword [ebx+1001CH], 0                   ; 3533 _ C7. 83, 0001001C, 00000000
        lea     eax, [ebx+10H]                          ; 353D _ 8D. 43, 10
        mov     dword [ebx+10014H], 1                   ; 3540 _ C7. 83, 00010014, 00000001
        mov     dword [esp], eax                        ; 354A _ 89. 04 24
        call    genxSetCharProps                        ; 354D _ E8, FFFFFFFC(rel)
        mov     dword [ebx+10098H], ?_0858              ; 3552 _ C7. 83, 00010098, 00000020(d)
        mov     dword [ebx+1009CH], ?_0859              ; 355C _ C7. 83, 0001009C, 00000028(d)
        mov     dword [ebx+100A0H], ?_0860              ; 3566 _ C7. 83, 000100A0, 00000031(d)
        mov     dword [ebx+100A4H], ?_0861              ; 3570 _ C7. 83, 000100A4, 00000043(d)
        mov     dword [ebx+100A8H], ?_0862              ; 357A _ C7. 83, 000100A8, 0000004C(d)
        mov     dword [ebx+100ACH], ?_0863              ; 3584 _ C7. 83, 000100AC, 00000065(d)
        mov     dword [ebx+100B0H], ?_0864              ; 358E _ C7. 83, 000100B0, 00000078(d)
        mov     dword [ebx+100B4H], ?_0865              ; 3598 _ C7. 83, 000100B4, 00000087(d)
        mov     dword [ebx+100B8H], ?_0866              ; 35A2 _ C7. 83, 000100B8, 00000098(d)
        mov     dword [ebx+100BCH], ?_0884              ; 35AC _ C7. 83, 000100BC, 00000000(d)
        mov     dword [ebx+100C0H], ?_0867              ; 35B6 _ C7. 83, 000100C0, 000000AD(d)
        mov     dword [ebx+100C4H], ?_0868              ; 35C0 _ C7. 83, 000100C4, 000000B7(d)
        mov     dword [ebx+100C8H], ?_0869              ; 35CA _ C7. 83, 000100C8, 000000CF(d)
        mov     dword [ebx+100D0H], ?_0870              ; 35D4 _ C7. 83, 000100D0, 000000E6(d)
        mov     dword [ebx+100CCH], ?_0885              ; 35DE _ C7. 83, 000100CC, 00000024(d)
        mov     dword [ebx+100D4H], ?_0886              ; 35E8 _ C7. 83, 000100D4, 00000048(d)
        mov     dword [ebx+100D8H], ?_0887              ; 35F2 _ C7. 83, 000100D8, 00000070(d)
        mov     dword [ebx+100DCH], ?_0888              ; 35FC _ C7. 83, 000100DC, 0000009C(d)
        mov     dword [ebx+100E0H], ?_0889              ; 3606 _ C7. 83, 000100E0, 000000E0(d)
        mov     dword [esp+0CH], esi                    ; 3610 _ 89. 74 24, 0C
        mov     dword [esp+8H], ?_0871                  ; 3614 _ C7. 44 24, 08, 000000EF(d)
        mov     dword [esp+4H], ?_0890                  ; 361C _ C7. 44 24, 04, 00000124(d)
        mov     dword [esp], ebx                        ; 3624 _ 89. 1C 24
        call    genxDeclareNamespace                    ; 3627 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 362C _ 85. C0
        jz      ?_0445                                  ; 362E _ 74, 40
        mov     edx, dword [eax+14H]                    ; 3630 _ 8B. 50, 14
        mov     dword [eax+8H], 1                       ; 3633 _ C7. 40, 08, 00000001
        mov     dword [eax+10H], edx                    ; 363A _ 89. 50, 10
        add     esp, 16                                 ; 363D _ 83. C4, 10
        mov     eax, ebx                                ; 3640 _ 89. D8
        pop     ebx                                     ; 3642 _ 5B
        pop     esi                                     ; 3643 _ 5E
        pop     edi                                     ; 3644 _ 5F
        ret                                             ; 3645 _ C3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0443: mov     dword [ebx+10018H], 0                   ; 3650 _ C7. 83, 00010018, 00000000
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0444: mov     dword [ebx+8H], 4                       ; 3660 _ C7. 43, 08, 00000004
; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0445: add     esp, 16                                 ; 3670 _ 83. C4, 10
        xor     eax, eax                                ; 3673 _ 31. C0
        pop     ebx                                     ; 3675 _ 5B
        pop     esi                                     ; 3676 _ 5E
        pop     edi                                     ; 3677 _ 5F
        ret                                             ; 3678 _ C3

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0446: mov     dword [esp], 40                         ; 3680 _ C7. 04 24, 00000028
        call    malloc                                  ; 3687 _ E8, FFFFFFFC(rel)
        jmp     ?_0436                                  ; 368C _ E9, FFFFFCBF

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0447: mov     dword [esp], 40                         ; 3698 _ C7. 04 24, 00000028
        call    malloc                                  ; 369F _ E8, FFFFFFFC(rel)
        jmp     ?_0438                                  ; 36A4 _ E9, FFFFFD39

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0448: mov     dword [esp], 40                         ; 36B0 _ C7. 04 24, 00000028
        call    malloc                                  ; 36B7 _ E8, FFFFFFFC(rel)
        jmp     ?_0437                                  ; 36BC _ E9, FFFFFCD8

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0449: mov     dword [esp], 66096                      ; 36C8 _ C7. 04 24, 00010230
        call    malloc                                  ; 36CF _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 36D4 _ 89. C3
        jmp     ?_0435                                  ; 36D6 _ E9, FFFFFC1A

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0450: mov     dword [esp], 40                         ; 36E0 _ C7. 04 24, 00000028
        call    malloc                                  ; 36E7 _ E8, FFFFFFFC(rel)
        jmp     ?_0439                                  ; 36EC _ E9, FFFFFD3A

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0451: mov     dword [esp], 40                         ; 36F8 _ C7. 04 24, 00000028
        call    malloc                                  ; 36FF _ E8, FFFFFFFC(rel)
        jmp     ?_0440                                  ; 3704 _ E9, FFFFFD6B

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0452: mov     dword [esp], 100                        ; 3710 _ C7. 04 24, 00000064
        call    malloc                                  ; 3717 _ E8, FFFFFFFC(rel)
        jmp     ?_0441                                  ; 371C _ E9, FFFFFD8C

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0453: mov     dword [esp], 1                          ; 3728 _ C7. 04 24, 00000001
        call    malloc                                  ; 372F _ E8, FFFFFFFC(rel)
        jmp     ?_0442                                  ; 3734 _ E9, FFFFFDB4
; genxNew End of function

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8

genxGetNamespacePrefix:; Function begin
        mov     edx, dword [esp+4H]                     ; 3740 _ 8B. 54 24, 04
        mov     eax, dword [edx+10H]                    ; 3744 _ 8B. 42, 10
        test    eax, eax                                ; 3747 _ 85. C0
        jz      ?_0455                                  ; 3749 _ 74, 25
        mov     edx, dword [edx]                        ; 374B _ 8B. 12
        cmp     eax, dword [edx+10020H]                 ; 374D _ 3B. 82, 00010020
        jz      ?_0454                                  ; 3753 _ 74, 0B
        mov     eax, dword [eax+4H]                     ; 3755 _ 8B. 40, 04
        add     eax, 6                                  ; 3758 _ 83. C0, 06
        ret                                             ; 375B _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0454: mov     eax, dword [edx+10018H]                 ; 3760 _ 8B. 82, 00010018
        ret                                             ; 3766 _ C3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0455: xor     eax, eax                                ; 3770 _ 31. C0
        ret                                             ; 3772 _ C3
; genxGetNamespacePrefix End of function

; Filling space: 0DH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BCH
;       db 27H, 00H, 00H, 00H, 00H

ALIGN   16

genxDeclareElement:; Function begin
        push    ebp                                     ; 3780 _ 55
        push    edi                                     ; 3781 _ 57
        push    esi                                     ; 3782 _ 56
        push    ebx                                     ; 3783 _ 53
        sub     esp, 44                                 ; 3784 _ 83. EC, 2C
        mov     eax, dword [esp+48H]                    ; 3787 _ 8B. 44 24, 48
        test    eax, eax                                ; 378B _ 85. C0
        mov     dword [esp+1CH], eax                    ; 378D _ 89. 44 24, 1C
        jz      ?_0456                                  ; 3791 _ 74, 05
        cmp     byte [eax], 0                           ; 3793 _ 80. 38, 00
        jnz     ?_0459                                  ; 3796 _ 75, 1C
?_0456: mov     eax, 3                                  ; 3798 _ B8, 00000003
?_0457: mov     ecx, dword [esp+40H]                    ; 379D _ 8B. 4C 24, 40
        mov     edx, dword [esp+4CH]                    ; 37A1 _ 8B. 54 24, 4C
        mov     dword [ecx+8H], eax                     ; 37A5 _ 89. 41, 08
        mov     dword [edx], eax                        ; 37A8 _ 89. 02
        xor     eax, eax                                ; 37AA _ 31. C0
?_0458: add     esp, 44                                 ; 37AC _ 83. C4, 2C
        pop     ebx                                     ; 37AF _ 5B
        pop     esi                                     ; 37B0 _ 5E
        pop     edi                                     ; 37B1 _ 5F
        pop     ebp                                     ; 37B2 _ 5D
        ret                                             ; 37B3 _ C3
; genxDeclareElement End of function

?_0459: ; Local function
        lea     ebx, [esp+1CH]                          ; 37B4 _ 8D. 5C 24, 1C
        mov     dword [esp], ebx                        ; 37B8 _ 89. 1C 24
        call    genxNextUnicodeChar                     ; 37BB _ E8, FFFFFFFC(rel)
        cmp     eax, 65535                              ; 37C0 _ 3D, 0000FFFF
        ja      ?_0467                                  ; 37C5 _ 0F 87, 00000181
        mov     ecx, dword [esp+40H]                    ; 37CB _ 8B. 4C 24, 40
        test    byte [ecx+eax+10H], 02H                 ; 37CF _ F6. 44 01, 10, 02
        je      ?_0467                                  ; 37D4 _ 0F 84, 00000172
        mov     esi, ecx                                ; 37DA _ 89. CE
        jmp     ?_0461                                  ; 37DC _ EB, 21

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0460: mov     dword [esp], ebx                        ; 37E0 _ 89. 1C 24
        call    genxNextUnicodeChar                     ; 37E3 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 37E8 _ 83. F8, FF
        je      ?_0474                                  ; 37EB _ 0F 84, 000001D7
        cmp     eax, 65535                              ; 37F1 _ 3D, 0000FFFF
        ja      ?_0456                                  ; 37F6 _ 77, A0
        test    byte [esi+eax+10H], 04H                 ; 37F8 _ F6. 44 06, 10, 04
        jz      ?_0456                                  ; 37FD _ 74, 99
?_0461: mov     eax, dword [esp+1CH]                    ; 37FF _ 8B. 44 24, 1C
        cmp     byte [eax], 0                           ; 3803 _ 80. 38, 00
        jnz     ?_0460                                  ; 3806 _ 75, D8
        mov     edx, dword [esp+44H]                    ; 3808 _ 8B. 54 24, 44
        mov     eax, dword [esp+40H]                    ; 380C _ 8B. 44 24, 40
        test    edx, edx                                ; 3810 _ 85. D2
        mov     dword [eax+8H], 0                       ; 3812 _ C7. 40, 08, 00000000
        je      ?_0470                                  ; 3819 _ 0F 84, 00000153
        mov     ecx, eax                                ; 381F _ 89. C1
        mov     eax, dword [esp+44H]                    ; 3821 _ 8B. 44 24, 44
        mov     ebx, dword [ecx+1003CH]                 ; 3825 _ 8B. 99, 0001003C
        mov     esi, dword [ecx+10044H]                 ; 382B _ 8B. B1, 00010044
        mov     eax, dword [eax+4H]                     ; 3831 _ 8B. 40, 04
        test    ebx, ebx                                ; 3834 _ 85. DB
        mov     dword [esp+0CH], eax                    ; 3836 _ 89. 44 24, 0C
        jle     ?_0464                                  ; 383A _ 7E, 57
        test    eax, eax                                ; 383C _ 85. C0
        je      ?_0471                                  ; 383E _ 0F 84, 00000146
        xor     edi, edi                                ; 3844 _ 31. FF
; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0462: mov     ebp, dword [esi+edi*4]                  ; 3850 _ 8B. 2C BE
        mov     eax, dword [ebp+8H]                     ; 3853 _ 8B. 45, 08
        test    eax, eax                                ; 3856 _ 85. C0
        jz      ?_0463                                  ; 3858 _ 74, 32
        mov     eax, dword [eax+4H]                     ; 385A _ 8B. 40, 04
        mov     dword [esp+4H], eax                     ; 385D _ 89. 44 24, 04
        mov     eax, dword [esp+0CH]                    ; 3861 _ 8B. 44 24, 0C
        mov     dword [esp], eax                        ; 3865 _ 89. 04 24
        call    strcmp                                  ; 3868 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 386D _ 85. C0
        jnz     ?_0463                                  ; 386F _ 75, 1B
        mov     eax, dword [ebp+4H]                     ; 3871 _ 8B. 45, 04
        mov     dword [esp+4H], eax                     ; 3874 _ 89. 44 24, 04
        mov     eax, dword [esp+48H]                    ; 3878 _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 387C _ 89. 04 24
        call    strcmp                                  ; 387F _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 3884 _ 85. C0
        je      ?_0469                                  ; 3886 _ 0F 84, 000000DC
?_0463: add     edi, 1                                  ; 388C _ 83. C7, 01
        cmp     edi, ebx                                ; 388F _ 39. DF
        jnz     ?_0462                                  ; 3891 _ 75, BD
?_0464: mov     eax, dword [esp+40H]                    ; 3893 _ 8B. 44 24, 40
        mov     edx, dword [eax+10010H]                 ; 3897 _ 8B. 90, 00010010
        mov     eax, dword [eax+10228H]                 ; 389D _ 8B. 80, 00010228
        test    eax, eax                                ; 38A3 _ 85. C0
        je      ?_0476                                  ; 38A5 _ 0F 84, 00000136
        mov     dword [esp+4H], 12                      ; 38AB _ C7. 44 24, 04, 0000000C
        mov     dword [esp], edx                        ; 38B3 _ 89. 14 24
        call    eax                                     ; 38B6 _ FF. D0
        mov     ebx, eax                                ; 38B8 _ 89. C3
?_0465: test    ebx, ebx                                ; 38BA _ 85. DB
        je      ?_0478                                  ; 38BC _ 0F 84, 00000139
        mov     eax, dword [esp+40H]                    ; 38C2 _ 8B. 44 24, 40
        mov     dword [ebx], eax                        ; 38C6 _ 89. 03
        mov     eax, dword [esp+44H]                    ; 38C8 _ 8B. 44 24, 44
        mov     dword [ebx+8H], eax                     ; 38CC _ 89. 43, 08
        mov     eax, dword [esp+48H]                    ; 38CF _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 38D3 _ 89. 04 24
        call    strlen                                  ; 38D6 _ E8, FFFFFFFC(rel)
        lea     edx, [eax+1H]                           ; 38DB _ 8D. 50, 01
        mov     eax, dword [esp+40H]                    ; 38DE _ 8B. 44 24, 40
        mov     ecx, dword [eax+10010H]                 ; 38E2 _ 8B. 88, 00010010
        mov     eax, dword [eax+10228H]                 ; 38E8 _ 8B. 80, 00010228
        test    eax, eax                                ; 38EE _ 85. C0
        je      ?_0475                                  ; 38F0 _ 0F 84, 000000DC
        mov     dword [esp+4H], edx                     ; 38F6 _ 89. 54 24, 04
        mov     dword [esp], ecx                        ; 38FA _ 89. 0C 24
        call    eax                                     ; 38FD _ FF. D0
        mov     esi, eax                                ; 38FF _ 89. C6
?_0466: test    esi, esi                                ; 3901 _ 85. F6
        je      ?_0477                                  ; 3903 _ 0F 84, 000000EB
        mov     eax, dword [esp+48H]                    ; 3909 _ 8B. 44 24, 48
        mov     dword [esp], esi                        ; 390D _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 3910 _ 89. 44 24, 04
        call    strcpy                                  ; 3914 _ E8, FFFFFFFC(rel)
        mov     eax, dword [esp+40H]                    ; 3919 _ 8B. 44 24, 40
        mov     dword [ebx+4H], esi                     ; 391D _ 89. 73, 04
        mov     edx, ebx                                ; 3920 _ 89. DA
        add     eax, 65592                              ; 3922 _ 05, 00010038
        call    listAppend                              ; 3927 _ E8, FFFFC714
        mov     ecx, dword [esp+40H]                    ; 392C _ 8B. 4C 24, 40
        test    eax, eax                                ; 3930 _ 85. C0
        mov     dword [ecx+8H], eax                     ; 3932 _ 89. 41, 08
        jne     ?_0479                                  ; 3935 _ 0F 85, 000000DC
        mov     eax, dword [esp+4CH]                    ; 393B _ 8B. 44 24, 4C
        mov     dword [eax], 0                          ; 393F _ C7. 00, 00000000
        mov     eax, ebx                                ; 3945 _ 89. D8
        jmp     ?_0458                                  ; 3947 _ E9, FFFFFE60

?_0467: cmp     eax, 95                                 ; 394C _ 83. F8, 5F
        jz      ?_0468                                  ; 394F _ 74, 09
        cmp     eax, 58                                 ; 3951 _ 83. F8, 3A
        jne     ?_0456                                  ; 3954 _ 0F 85, FFFFFE3E
?_0468: mov     esi, dword [esp+40H]                    ; 395A _ 8B. 74 24, 40
        jmp     ?_0461                                  ; 395E _ E9, FFFFFE9C

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0469: add     esp, 44                                 ; 3968 _ 83. C4, 2C
        mov     eax, ebp                                ; 396B _ 89. E8
        pop     ebx                                     ; 396D _ 5B
        pop     esi                                     ; 396E _ 5E
        pop     edi                                     ; 396F _ 5F
        pop     ebp                                     ; 3970 _ 5D
        ret                                             ; 3971 _ C3

?_0470: mov     eax, dword [esp+40H]                    ; 3972 _ 8B. 44 24, 40
        mov     ebx, dword [eax+1003CH]                 ; 3976 _ 8B. 98, 0001003C
        mov     esi, dword [eax+10044H]                 ; 397C _ 8B. B0, 00010044
        test    ebx, ebx                                ; 3982 _ 85. DB
        jle     ?_0464                                  ; 3984 _ 0F 8E, FFFFFF09
?_0471: xor     edi, edi                                ; 398A _ 31. FF
        jmp     ?_0473                                  ; 398C _ EB, 0D

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0472: add     edi, 1                                  ; 3990 _ 83. C7, 01
        cmp     edi, ebx                                ; 3993 _ 39. DF
        je      ?_0464                                  ; 3995 _ 0F 84, FFFFFEF8
?_0473: mov     ebp, dword [esi+edi*4]                  ; 399B _ 8B. 2C BE
        mov     ecx, dword [ebp+8H]                     ; 399E _ 8B. 4D, 08
        test    ecx, ecx                                ; 39A1 _ 85. C9
        jnz     ?_0472                                  ; 39A3 _ 75, EB
        mov     eax, dword [ebp+4H]                     ; 39A5 _ 8B. 45, 04
        mov     dword [esp+4H], eax                     ; 39A8 _ 89. 44 24, 04
        mov     eax, dword [esp+48H]                    ; 39AC _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 39B0 _ 89. 04 24
        call    strcmp                                  ; 39B3 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 39B8 _ 85. C0
        jnz     ?_0472                                  ; 39BA _ 75, D4
        mov     eax, ebp                                ; 39BC _ 89. E8
        jmp     ?_0458                                  ; 39BE _ E9, FFFFFDE9

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0474: mov     eax, 1                                  ; 39C8 _ B8, 00000001
        jmp     ?_0457                                  ; 39CD _ E9, FFFFFDCB

?_0475: mov     dword [esp], edx                        ; 39D2 _ 89. 14 24
        call    malloc                                  ; 39D5 _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 39DA _ 89. C6
        jmp     ?_0466                                  ; 39DC _ E9, FFFFFF20

?_0476: mov     dword [esp], 12                         ; 39E1 _ C7. 04 24, 0000000C
        call    malloc                                  ; 39E8 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 39ED _ 89. C3
        jmp     ?_0465                                  ; 39EF _ E9, FFFFFEC6

?_0477: mov     dword [ebx+4H], 0                       ; 39F4 _ C7. 43, 04, 00000000
?_0478: mov     eax, dword [esp+4CH]                    ; 39FB _ 8B. 44 24, 4C
        mov     dword [eax], 4                          ; 39FF _ C7. 00, 00000004
        mov     eax, dword [esp+40H]                    ; 3A05 _ 8B. 44 24, 40
        mov     dword [eax+8H], 4                       ; 3A09 _ C7. 40, 08, 00000004
        xor     eax, eax                                ; 3A10 _ 31. C0
        jmp     ?_0458                                  ; 3A12 _ E9, FFFFFD95

?_0479: ; Local function
        mov     ecx, dword [esp+4CH]                    ; 3A17 _ 8B. 4C 24, 4C
        mov     dword [ecx], eax                        ; 3A1B _ 89. 01
        xor     eax, eax                                ; 3A1D _ 31. C0
        jmp     ?_0458                                  ; 3A1F _ E9, FFFFFD88

; Filling space: 0CH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BFH
;       db 00H, 00H, 00H, 00H

ALIGN   16

genxDeclareAttribute:; Function begin
        push    ebp                                     ; 3A30 _ 55
        push    edi                                     ; 3A31 _ 57
        push    esi                                     ; 3A32 _ 56
        push    ebx                                     ; 3A33 _ 53
        sub     esp, 44                                 ; 3A34 _ 83. EC, 2C
        mov     eax, dword [esp+48H]                    ; 3A37 _ 8B. 44 24, 48
        mov     ebp, dword [esp+40H]                    ; 3A3B _ 8B. 6C 24, 40
        test    eax, eax                                ; 3A3F _ 85. C0
        mov     dword [esp+1CH], eax                    ; 3A41 _ 89. 44 24, 1C
        jz      ?_0480                                  ; 3A45 _ 74, 05
        cmp     byte [eax], 0                           ; 3A47 _ 80. 38, 00
        jnz     ?_0482                                  ; 3A4A _ 75, 1C
?_0480: mov     eax, 3                                  ; 3A4C _ B8, 00000003
?_0481: mov     ecx, dword [esp+4CH]                    ; 3A51 _ 8B. 4C 24, 4C
        mov     dword [ebp+8H], eax                     ; 3A55 _ 89. 45, 08
        mov     dword [ecx], eax                        ; 3A58 _ 89. 01
        add     esp, 44                                 ; 3A5A _ 83. C4, 2C
        xor     eax, eax                                ; 3A5D _ 31. C0
        pop     ebx                                     ; 3A5F _ 5B
        pop     esi                                     ; 3A60 _ 5E
        pop     edi                                     ; 3A61 _ 5F
        pop     ebp                                     ; 3A62 _ 5D
        ret                                             ; 3A63 _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0482: lea     eax, [esp+1CH]                          ; 3A68 _ 8D. 44 24, 1C
        mov     dword [esp], eax                        ; 3A6C _ 89. 04 24
        call    genxNextUnicodeChar                     ; 3A6F _ E8, FFFFFFFC(rel)
        cmp     eax, 65535                              ; 3A74 _ 3D, 0000FFFF
        ja      ?_0489                                  ; 3A79 _ 0F 87, 000000D1
        test    byte [ebp+eax+10H], 02H                 ; 3A7F _ F6. 44 05, 10, 02
        je      ?_0489                                  ; 3A84 _ 0F 84, 000000C6
?_0483: mov     eax, dword [esp+1CH]                    ; 3A8A _ 8B. 44 24, 1C
        jmp     ?_0486                                  ; 3A8E _ EB, 16

?_0484: add     eax, 1                                  ; 3A90 _ 83. C0, 01
?_0485: cmp     edx, 65535                              ; 3A93 _ 81. FA, 0000FFFF
        mov     dword [esp+1CH], eax                    ; 3A99 _ 89. 44 24, 1C
        ja      ?_0480                                  ; 3A9D _ 77, AD
        test    byte [ebp+edx+10H], 04H                 ; 3A9F _ F6. 44 15, 10, 04
        jz      ?_0480                                  ; 3AA4 _ 74, A6
?_0486: movzx   edx, byte [eax]                         ; 3AA6 _ 0F B6. 10
        test    dl, dl                                  ; 3AA9 _ 84. D2
        je      ?_0498                                  ; 3AAB _ 0F 84, 00000187
        jns     ?_0484                                  ; 3AB1 _ 79, DD
        cmp     dl, -63                                 ; 3AB3 _ 80. FA, C1
        jbe     ?_0495                                  ; 3AB6 _ 0F 86, 00000154
        cmp     dl, -33                                 ; 3ABC _ 80. FA, DF
        nop                                             ; 3ABF _ 90
        ja      ?_0487                                  ; 3AC0 _ 77, 26
        mov     ecx, edx                                ; 3AC2 _ 89. D1
        movzx   edx, byte [eax+1H]                      ; 3AC4 _ 0F B6. 50, 01
        and     ecx, 1FH                                ; 3AC8 _ 83. E1, 1F
        shl     ecx, 6                                  ; 3ACB _ C1. E1, 06
        lea     ebx, [edx-80H]                          ; 3ACE _ 8D. 5A, 80
        cmp     bl, 63                                  ; 3AD1 _ 80. FB, 3F
        ja      ?_0495                                  ; 3AD4 _ 0F 87, 00000136
        and     edx, 3FH                                ; 3ADA _ 83. E2, 3F
        add     eax, 2                                  ; 3ADD _ 83. C0, 02
        or      edx, ecx                                ; 3AE0 _ 09. CA
        jmp     ?_0485                                  ; 3AE2 _ EB, AF

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0487: cmp     dl, -17                                 ; 3AE8 _ 80. FA, EF
        ja      ?_0490                                  ; 3AEB _ 77, 7A
        mov     ebx, edx                                ; 3AED _ 89. D3
        movzx   ecx, byte [eax+1H]                      ; 3AEF _ 0F B6. 48, 01
        shl     ebx, 12                                 ; 3AF3 _ C1. E3, 0C
        cmp     edx, 224                                ; 3AF6 _ 81. FA, 000000E0
        movzx   edi, bx                                 ; 3AFC _ 0F B7. FB
        je      ?_0492                                  ; 3AFF _ 0F 84, 000000DF
        cmp     edx, 236                                ; 3B05 _ 81. FA, 000000EC
        jle     ?_0493                                  ; 3B0B _ 0F 8E, 000000DD
        cmp     edx, 237                                ; 3B11 _ 81. FA, 000000ED
        jne     ?_0494                                  ; 3B17 _ 0F 85, 000000DB
        lea     edx, [ecx-80H]                          ; 3B1D _ 8D. 51, 80
        cmp     dl, 31                                  ; 3B20 _ 80. FA, 1F
        ja      ?_0495                                  ; 3B23 _ 0F 87, 000000E7
?_0488: movzx   edx, byte [eax+2H]                      ; 3B29 _ 0F B6. 50, 02
        and     ecx, 3FH                                ; 3B2D _ 83. E1, 3F
        shl     ecx, 6                                  ; 3B30 _ C1. E1, 06
        lea     esi, [edx-80H]                          ; 3B33 _ 8D. 72, 80
        mov     ebx, esi                                ; 3B36 _ 89. F3
        cmp     bl, 63                                  ; 3B38 _ 80. FB, 3F
        ja      ?_0495                                  ; 3B3B _ 0F 87, 000000CF
        and     edx, 3FH                                ; 3B41 _ 83. E2, 3F
        add     eax, 3                                  ; 3B44 _ 83. C0, 03
        or      edx, edi                                ; 3B47 _ 09. FA
        or      edx, ecx                                ; 3B49 _ 09. CA
        jmp     ?_0485                                  ; 3B4B _ E9, FFFFFF43

?_0489: cmp     eax, 95                                 ; 3B50 _ 83. F8, 5F
        je      ?_0483                                  ; 3B53 _ 0F 84, FFFFFF31
        cmp     eax, 58                                 ; 3B59 _ 83. F8, 3A
        jne     ?_0480                                  ; 3B5C _ 0F 85, FFFFFEEA
        jmp     ?_0483                                  ; 3B62 _ E9, FFFFFF23

?_0490: cmp     dl, -12                                 ; 3B67 _ 80. FA, F4
        ja      ?_0495                                  ; 3B6A _ 0F 87, 000000A0
        mov     edi, edx                                ; 3B70 _ 89. D7
        movzx   ecx, dl                                 ; 3B72 _ 0F B6. CA
        and     edi, 07H                                ; 3B75 _ 83. E7, 07
        mov     dword [esp+0CH], edi                    ; 3B78 _ 89. 7C 24, 0C
        shl     dword [esp+0CH], 18                     ; 3B7C _ C1. 64 24, 0C, 12
        cmp     ecx, 240                                ; 3B81 _ 81. F9, 000000F0
        je      ?_0496                                  ; 3B87 _ 0F 84, 0000008D
        cmp     ecx, 244                                ; 3B8D _ 81. F9, 000000F4
        movzx   ecx, byte [eax+1H]                      ; 3B93 _ 0F B6. 48, 01
        jne     ?_0497                                  ; 3B97 _ 0F 85, 00000089
        lea     ebx, [ecx-80H]                          ; 3B9D _ 8D. 59, 80
        cmp     bl, 15                                  ; 3BA0 _ 80. FB, 0F
        ja      ?_0495                                  ; 3BA3 _ 77, 6B
?_0491: movzx   ebx, byte [eax+2H]                      ; 3BA5 _ 0F B6. 58, 02
        and     ecx, 3FH                                ; 3BA9 _ 83. E1, 3F
        shl     ecx, 12                                 ; 3BAC _ C1. E1, 0C
        lea     esi, [ebx-80H]                          ; 3BAF _ 8D. 73, 80
        mov     edx, esi                                ; 3BB2 _ 89. F2
        cmp     dl, 63                                  ; 3BB4 _ 80. FA, 3F
        ja      ?_0495                                  ; 3BB7 _ 77, 57
        mov     esi, ebx                                ; 3BB9 _ 89. DE
        movzx   ebx, byte [eax+3H]                      ; 3BBB _ 0F B6. 58, 03
        and     esi, 3FH                                ; 3BBF _ 83. E6, 3F
        shl     esi, 6                                  ; 3BC2 _ C1. E6, 06
        lea     edi, [ebx-80H]                          ; 3BC5 _ 8D. 7B, 80
        mov     edx, edi                                ; 3BC8 _ 89. FA
        cmp     dl, 63                                  ; 3BCA _ 80. FA, 3F
        ja      ?_0495                                  ; 3BCD _ 77, 41
        mov     edx, dword [esp+0CH]                    ; 3BCF _ 8B. 54 24, 0C
        and     ebx, 3FH                                ; 3BD3 _ 83. E3, 3F
        add     eax, 4                                  ; 3BD6 _ 83. C0, 04
        or      edx, esi                                ; 3BD9 _ 09. F2
        or      edx, ebx                                ; 3BDB _ 09. DA
        or      edx, ecx                                ; 3BDD _ 09. CA
        jmp     ?_0485                                  ; 3BDF _ E9, FFFFFEAF

?_0492: lea     esi, [ecx+60H]                          ; 3BE4 _ 8D. 71, 60
        mov     ebx, esi                                ; 3BE7 _ 89. F3
        cmp     bl, 31                                  ; 3BE9 _ 80. FB, 1F
        ja      ?_0495                                  ; 3BEC _ 77, 22
?_0493: lea     esi, [ecx-80H]                          ; 3BEE _ 8D. 71, 80
        mov     ebx, esi                                ; 3BF1 _ 89. F3
        cmp     bl, 63                                  ; 3BF3 _ 80. FB, 3F
        ja      ?_0495                                  ; 3BF6 _ 77, 18
?_0494: cmp     edx, 237                                ; 3BF8 _ 81. FA, 000000ED
        jle     ?_0488                                  ; 3BFE _ 0F 8E, FFFFFF25
        lea     edx, [ecx-80H]                          ; 3C04 _ 8D. 51, 80
        cmp     dl, 63                                  ; 3C07 _ 80. FA, 3F
        jbe     ?_0488                                  ; 3C0A _ 0F 86, FFFFFF19
?_0495: mov     eax, 1                                  ; 3C10 _ B8, 00000001
        jmp     ?_0481                                  ; 3C15 _ E9, FFFFFE37

?_0496: movzx   ecx, byte [eax+1H]                      ; 3C1A _ 0F B6. 48, 01
        lea     ebx, [ecx+70H]                          ; 3C1E _ 8D. 59, 70
        cmp     bl, 47                                  ; 3C21 _ 80. FB, 2F
        ja      ?_0495                                  ; 3C24 _ 77, EA
?_0497: lea     ebx, [ecx-80H]                          ; 3C26 _ 8D. 59, 80
        cmp     bl, 63                                  ; 3C29 _ 80. FB, 3F
        jbe     ?_0491                                  ; 3C2C _ 0F 86, FFFFFF73
        jmp     ?_0495                                  ; 3C32 _ EB, DC

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0498: mov     eax, dword [ebp+10054H]                 ; 3C38 _ 8B. 85, 00010054
        mov     dword [ebp+8H], 0                       ; 3C3E _ C7. 45, 08, 00000000
        mov     dword [esp+0CH], eax                    ; 3C45 _ 89. 44 24, 0C
        mov     eax, dword [esp+44H]                    ; 3C49 _ 8B. 44 24, 44
        mov     dword [ebp+10080H], eax                 ; 3C4D _ 89. 85, 00010080
        mov     eax, dword [esp+48H]                    ; 3C53 _ 8B. 44 24, 48
        mov     dword [ebp+1007CH], eax                 ; 3C57 _ 89. 85, 0001007C
        mov     eax, dword [esp+44H]                    ; 3C5D _ 8B. 44 24, 44
        test    eax, eax                                ; 3C61 _ 85. C0
        je      ?_0522                                  ; 3C63 _ 0F 84, 0000028F
        mov     dword [ebp+10094H], 2                   ; 3C69 _ C7. 85, 00010094, 00000002
        mov     eax, dword [esp+44H]                    ; 3C73 _ 8B. 44 24, 44
        mov     edi, dword [ebp+10020H]                 ; 3C77 _ 8B. BD, 00010020
        cmp     dword [eax+14H], edi                    ; 3C7D _ 39. 78, 14
        je      ?_0528                                  ; 3C80 _ 0F 84, 0000030F
?_0499: mov     edi, dword [ebp+1004CH]                 ; 3C86 _ 8B. BD, 0001004C
        mov     esi, 4294967295                         ; 3C8C _ BE, FFFFFFFF
?_0500: mov     eax, edi                                ; 3C91 _ 89. F8
        sub     eax, esi                                ; 3C93 _ 29. F0
        cmp     eax, 1                                  ; 3C95 _ 83. F8, 01
        jle     ?_0503                                  ; 3C98 _ 7E, 40
?_0501: lea     eax, [edi+esi]                          ; 3C9A _ 8D. 04 37
        mov     ebx, eax                                ; 3C9D _ 89. C3
        shr     ebx, 31                                 ; 3C9F _ C1. EB, 1F
        add     ebx, eax                                ; 3CA2 _ 01. C3
        mov     eax, dword [esp+0CH]                    ; 3CA4 _ 8B. 44 24, 0C
        sar     ebx, 1                                  ; 3CA8 _ D1. FB
        mov     edx, dword [eax+ebx*4]                  ; 3CAA _ 8B. 14 98
        mov     eax, dword [ebp+10094H]                 ; 3CAD _ 8B. 85, 00010094
        mov     ecx, dword [edx+1CH]                    ; 3CB3 _ 8B. 4A, 1C
        cmp     eax, ecx                                ; 3CB6 _ 39. C8
        je      ?_0512                                  ; 3CB8 _ 0F 84, 00000142
        test    eax, eax                                ; 3CBE _ 85. C0
        je      ?_0511                                  ; 3CC0 _ 0F 84, 00000132
        cmp     eax, 1                                  ; 3CC6 _ 83. F8, 01
        je      ?_0510                                  ; 3CC9 _ 0F 84, 00000121
?_0502: mov     esi, ebx                                ; 3CCF _ 89. DE
        mov     eax, edi                                ; 3CD1 _ 89. F8
        sub     eax, esi                                ; 3CD3 _ 29. F0
        cmp     eax, 1                                  ; 3CD5 _ 83. F8, 01
        jg      ?_0501                                  ; 3CD8 _ 7F, C0
?_0503: cmp     esi, -1                                 ; 3CDA _ 83. FE, FF
        jz      ?_0504                                  ; 3CDD _ 74, 16
        mov     eax, dword [esp+0CH]                    ; 3CDF _ 8B. 44 24, 0C
        mov     ebx, dword [eax+esi*4]                  ; 3CE3 _ 8B. 1C B0
        mov     eax, dword [ebp+10094H]                 ; 3CE6 _ 8B. 85, 00010094
        cmp     eax, dword [ebx+1CH]                    ; 3CEC _ 3B. 43, 1C
        je      ?_0516                                  ; 3CEF _ 0F 84, 00000163
?_0504: mov     eax, dword [ebp+10228H]                 ; 3CF5 _ 8B. 85, 00010228
        mov     edx, dword [ebp+10010H]                 ; 3CFB _ 8B. 95, 00010010
        test    eax, eax                                ; 3D01 _ 85. C0
        je      ?_0523                                  ; 3D03 _ 0F 84, 00000217
        mov     dword [esp+4H], 32                      ; 3D09 _ C7. 44 24, 04, 00000020
        mov     dword [esp], edx                        ; 3D11 _ 89. 14 24
        call    eax                                     ; 3D14 _ FF. D0
        mov     ebx, eax                                ; 3D16 _ 89. C3
?_0505: test    ebx, ebx                                ; 3D18 _ 85. DB
        je      ?_0508                                  ; 3D1A _ 0F 84, 000000B2
        mov     eax, dword [esp+44H]                    ; 3D20 _ 8B. 44 24, 44
        mov     dword [ebx], ebp                        ; 3D24 _ 89. 2B
        mov     dword [ebx+18H], 0                      ; 3D26 _ C7. 43, 18, 00000000
        mov     dword [ebx+8H], eax                     ; 3D2D _ 89. 43, 08
        mov     eax, dword [ebp+10094H]                 ; 3D30 _ 8B. 85, 00010094
        mov     dword [ebx+1CH], eax                    ; 3D36 _ 89. 43, 1C
        mov     eax, dword [esp+48H]                    ; 3D39 _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 3D3D _ 89. 04 24
        call    strlen                                  ; 3D40 _ E8, FFFFFFFC(rel)
        mov     edx, dword [ebp+10228H]                 ; 3D45 _ 8B. 95, 00010228
        add     eax, 1                                  ; 3D4B _ 83. C0, 01
        mov     ecx, dword [ebp+10010H]                 ; 3D4E _ 8B. 8D, 00010010
        test    edx, edx                                ; 3D54 _ 85. D2
        je      ?_0524                                  ; 3D56 _ 0F 84, 000001DC
        mov     dword [esp+4H], eax                     ; 3D5C _ 89. 44 24, 04
        mov     dword [esp], ecx                        ; 3D60 _ 89. 0C 24
        call    edx                                     ; 3D63 _ FF. D2
        mov     esi, eax                                ; 3D65 _ 89. C6
?_0506: test    esi, esi                                ; 3D67 _ 85. F6
        je      ?_0527                                  ; 3D69 _ 0F 84, 0000021A
        mov     eax, dword [esp+48H]                    ; 3D6F _ 8B. 44 24, 48
        mov     dword [esp], esi                        ; 3D73 _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 3D76 _ 89. 44 24, 04
        call    strcpy                                  ; 3D7A _ E8, FFFFFFFC(rel)
        mov     dword [ebx+4H], esi                     ; 3D7F _ 89. 73, 04
        mov     dword [ebx+14H], 100                    ; 3D82 _ C7. 43, 14, 00000064
        mov     eax, dword [ebp+10228H]                 ; 3D89 _ 8B. 85, 00010228
        mov     edx, dword [ebp+10010H]                 ; 3D8F _ 8B. 95, 00010010
        test    eax, eax                                ; 3D95 _ 85. C0
        je      ?_0525                                  ; 3D97 _ 0F 84, 000001B3
        mov     dword [esp+4H], 100                     ; 3D9D _ C7. 44 24, 04, 00000064
        mov     dword [esp], edx                        ; 3DA5 _ 89. 14 24
        call    eax                                     ; 3DA8 _ FF. D0
?_0507: test    eax, eax                                ; 3DAA _ 85. C0
        mov     dword [ebx+0CH], eax                    ; 3DAC _ 89. 43, 0C
        jz      ?_0508                                  ; 3DAF _ 74, 21
        mov     dword [ebx+10H], 0                      ; 3DB1 _ C7. 43, 10, 00000000
        lea     eax, [ebp+10048H]                       ; 3DB8 _ 8D. 85, 00010048
        mov     dword [ebp+8H], 0                       ; 3DBE _ C7. 45, 08, 00000000
        call    checkExpand                             ; 3DC5 _ E8, FFFFC366
        test    eax, eax                                ; 3DCA _ 85. C0
        jne     ?_0519                                  ; 3DCC _ 0F 85, 000000BE
?_0508: mov     dword [ebp+8H], 4                       ; 3DD2 _ C7. 45, 08, 00000004
        mov     eax, 4                                  ; 3DD9 _ B8, 00000004
?_0509: mov     edi, dword [esp+4CH]                    ; 3DDE _ 8B. 7C 24, 4C
        mov     dword [edi], eax                        ; 3DE2 _ 89. 07
        add     esp, 44                                 ; 3DE4 _ 83. C4, 2C
        xor     eax, eax                                ; 3DE7 _ 31. C0
        pop     ebx                                     ; 3DE9 _ 5B
        pop     esi                                     ; 3DEA _ 5E
        pop     edi                                     ; 3DEB _ 5F
        pop     ebp                                     ; 3DEC _ 5D
        ret                                             ; 3DED _ C3

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0510: test    ecx, ecx                                ; 3DF0 _ 85. C9
        je      ?_0502                                  ; 3DF2 _ 0F 84, FFFFFED7
?_0511: mov     edi, ebx                                ; 3DF8 _ 89. DF
        jmp     ?_0500                                  ; 3DFA _ E9, FFFFFE92

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0512: cmp     eax, 2                                  ; 3E00 _ 83. F8, 02
        jz      ?_0515                                  ; 3E03 _ 74, 2B
?_0513: mov     eax, dword [edx+4H]                     ; 3E05 _ 8B. 42, 04
        mov     dword [esp+4H], eax                     ; 3E08 _ 89. 44 24, 04
        mov     eax, dword [esp+48H]                    ; 3E0C _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 3E10 _ 89. 04 24
        call    strcmp                                  ; 3E13 _ E8, FFFFFFFC(rel)
?_0514: test    eax, eax                                ; 3E18 _ 85. C0
        jns     ?_0502                                  ; 3E1A _ 0F 89, FFFFFEAF
        mov     edi, ebx                                ; 3E20 _ 89. DF
        jmp     ?_0500                                  ; 3E22 _ E9, FFFFFE6A

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0515: mov     eax, dword [edx+8H]                     ; 3E30 _ 8B. 42, 08
        cmp     dword [esp+44H], eax                    ; 3E33 _ 39. 44 24, 44
        jz      ?_0513                                  ; 3E37 _ 74, CC
        mov     eax, dword [eax+4H]                     ; 3E39 _ 8B. 40, 04
        mov     dword [esp+4H], eax                     ; 3E3C _ 89. 44 24, 04
        mov     eax, dword [esp+44H]                    ; 3E40 _ 8B. 44 24, 44
        mov     eax, dword [eax+4H]                     ; 3E44 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3E47 _ 89. 04 24
        call    strcmp                                  ; 3E4A _ E8, FFFFFFFC(rel)
        jmp     ?_0514                                  ; 3E4F _ EB, C7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0516: cmp     eax, 2                                  ; 3E58 _ 83. F8, 02
        je      ?_0526                                  ; 3E5B _ 0F 84, 00000100
?_0517: mov     eax, dword [ebx+4H]                     ; 3E61 _ 8B. 43, 04
        mov     dword [esp+4H], eax                     ; 3E64 _ 89. 44 24, 04
        mov     eax, dword [esp+48H]                    ; 3E68 _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 3E6C _ 89. 04 24
        call    strcmp                                  ; 3E6F _ E8, FFFFFFFC(rel)
?_0518: test    eax, eax                                ; 3E74 _ 85. C0
        jne     ?_0504                                  ; 3E76 _ 0F 85, FFFFFE79
        add     esp, 44                                 ; 3E7C _ 83. C4, 2C
        mov     eax, ebx                                ; 3E7F _ 89. D8
        pop     ebx                                     ; 3E81 _ 5B
        pop     esi                                     ; 3E82 _ 5E
        pop     edi                                     ; 3E83 _ 5F
        pop     ebp                                     ; 3E84 _ 5D
        ret                                             ; 3E85 _ C3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0519: mov     esi, dword [ebp+1004CH]                 ; 3E90 _ 8B. B5, 0001004C
        lea     edx, [esi*4]                            ; 3E96 _ 8D. 14 B5, 00000000
        cmp     esi, edi                                ; 3E9D _ 39. FE
        mov     eax, esi                                ; 3E9F _ 89. F0
        jle     ?_0521                                  ; 3EA1 _ 7E, 28
        mov     dword [esp+0CH], ebx                    ; 3EA3 _ 89. 5C 24, 0C
; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0520: mov     ecx, dword [ebp+10054H]                 ; 3EB0 _ 8B. 8D, 00010054
        sub     eax, 1                                  ; 3EB6 _ 83. E8, 01
        mov     ebx, dword [ecx+edx-4H]                 ; 3EB9 _ 8B. 5C 11, FC
        mov     dword [ecx+edx], ebx                    ; 3EBD _ 89. 1C 11
        sub     edx, 4                                  ; 3EC0 _ 83. EA, 04
        cmp     eax, edi                                ; 3EC3 _ 39. F8
        jnz     ?_0520                                  ; 3EC5 _ 75, E9
        mov     ebx, dword [esp+0CH]                    ; 3EC7 _ 8B. 5C 24, 0C
?_0521: mov     eax, dword [ebp+10054H]                 ; 3ECB _ 8B. 85, 00010054
        add     esi, 1                                  ; 3ED1 _ 83. C6, 01
        mov     dword [ebp+1004CH], esi                 ; 3ED4 _ 89. B5, 0001004C
        mov     dword [eax+edi*4], ebx                  ; 3EDA _ 89. 1C B8
        mov     eax, dword [esp+4CH]                    ; 3EDD _ 8B. 44 24, 4C
        mov     dword [ebp+8H], 0                       ; 3EE1 _ C7. 45, 08, 00000000
        mov     dword [eax], 0                          ; 3EE8 _ C7. 00, 00000000
        add     esp, 44                                 ; 3EEE _ 83. C4, 2C
        mov     eax, ebx                                ; 3EF1 _ 89. D8
        pop     ebx                                     ; 3EF3 _ 5B
        pop     esi                                     ; 3EF4 _ 5E
        pop     edi                                     ; 3EF5 _ 5F
        pop     ebp                                     ; 3EF6 _ 5D
        ret                                             ; 3EF7 _ C3

?_0522: mov     esi, dword [esp+48H]                    ; 3EF8 _ 8B. 74 24, 48
        mov     edi, ?_0849                             ; 3EFC _ BF, 00000000(d)
        mov     ecx, 5                                  ; 3F01 _ B9, 00000005
        repe cmpsb                                      ; 3F06 _ F3: A6
        setne   al                                      ; 3F08 _ 0F 95. C0
        movzx   eax, al                                 ; 3F0B _ 0F B6. C0
        mov     dword [ebp+10094H], eax                 ; 3F0E _ 89. 85, 00010094
        jmp     ?_0499                                  ; 3F14 _ E9, FFFFFD6D

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0523: mov     dword [esp], 32                         ; 3F20 _ C7. 04 24, 00000020
        call    malloc                                  ; 3F27 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 3F2C _ 89. C3
        jmp     ?_0505                                  ; 3F2E _ E9, FFFFFDE5

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0524: mov     dword [esp], eax                        ; 3F38 _ 89. 04 24
        call    malloc                                  ; 3F3B _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 3F40 _ 89. C6
        jmp     ?_0506                                  ; 3F42 _ E9, FFFFFE20

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0525: mov     dword [esp], 100                        ; 3F50 _ C7. 04 24, 00000064
        call    malloc                                  ; 3F57 _ E8, FFFFFFFC(rel)
        jmp     ?_0507                                  ; 3F5C _ E9, FFFFFE49

?_0526: mov     eax, dword [ebx+8H]                     ; 3F61 _ 8B. 43, 08
        cmp     dword [esp+44H], eax                    ; 3F64 _ 39. 44 24, 44
        je      ?_0517                                  ; 3F68 _ 0F 84, FFFFFEF3
        mov     eax, dword [eax+4H]                     ; 3F6E _ 8B. 40, 04
        mov     dword [esp+4H], eax                     ; 3F71 _ 89. 44 24, 04
        mov     eax, dword [esp+44H]                    ; 3F75 _ 8B. 44 24, 44
        mov     eax, dword [eax+4H]                     ; 3F79 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3F7C _ 89. 04 24
        call    strcmp                                  ; 3F7F _ E8, FFFFFFFC(rel)
        jmp     ?_0518                                  ; 3F84 _ E9, FFFFFEEB

?_0527: mov     dword [ebx+4H], 0                       ; 3F89 _ C7. 43, 04, 00000000
        jmp     ?_0508                                  ; 3F90 _ E9, FFFFFE3D
; genxDeclareAttribute End of function

?_0528: ; Local function
        mov     dword [ebp+8H], 16                      ; 3F95 _ C7. 45, 08, 00000010
        mov     eax, 16                                 ; 3F9C _ B8, 00000010
        jmp     ?_0509                                  ; 3FA1 _ E9, FFFFFE38

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16

genxStartDocFile:; Function begin
        mov     eax, dword [esp+4H]                     ; 3FB0 _ 8B. 44 24, 04
        mov     edx, dword [eax+0CH]                    ; 3FB4 _ 8B. 50, 0C
        test    edx, edx                                ; 3FB7 _ 85. D2
        jz      ?_0529                                  ; 3FB9 _ 74, 15
        mov     dword [eax+8H], 8                       ; 3FBB _ C7. 40, 08, 00000008
        mov     eax, 8                                  ; 3FC2 _ B8, 00000008
        ret                                             ; 3FC7 _ C3

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0529: mov     edx, dword [esp+8H]                     ; 3FD0 _ 8B. 54 24, 08
        mov     dword [eax+0CH], 1                      ; 3FD4 _ C7. 40, 0C, 00000001
        mov     dword [eax+4H], 0                       ; 3FDB _ C7. 40, 04, 00000000
        mov     dword [eax], edx                        ; 3FE2 _ 89. 10
        xor     eax, eax                                ; 3FE4 _ 31. C0
        ret                                             ; 3FE6 _ C3
; genxStartDocFile End of function

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16

genxStartDocSender:; Function begin
        mov     eax, dword [esp+4H]                     ; 3FF0 _ 8B. 44 24, 04
        mov     edx, dword [eax+0CH]                    ; 3FF4 _ 8B. 50, 0C
        test    edx, edx                                ; 3FF7 _ 85. D2
        jz      ?_0530                                  ; 3FF9 _ 74, 15
        mov     dword [eax+8H], 8                       ; 3FFB _ C7. 40, 08, 00000008
        mov     eax, 8                                  ; 4002 _ B8, 00000008
        ret                                             ; 4007 _ C3

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0530: mov     edx, dword [esp+8H]                     ; 4010 _ 8B. 54 24, 08
        mov     dword [eax+0CH], 1                      ; 4014 _ C7. 40, 0C, 00000001
        mov     dword [eax], 0                          ; 401B _ C7. 00, 00000000
        mov     dword [eax+4H], edx                     ; 4021 _ 89. 50, 04
        xor     eax, eax                                ; 4024 _ 31. C0
        ret                                             ; 4026 _ C3
; genxStartDocSender End of function

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16

genxUnsetDefaultNamespace:; Function begin
        mov     eax, dword [esp+4H]                     ; 4030 _ 8B. 44 24, 04
        cmp     dword [eax+0CH], 3                      ; 4034 _ 83. 78, 0C, 03
        jz      ?_0531                                  ; 4038 _ 74, 16
        mov     dword [eax+8H], 8                       ; 403A _ C7. 40, 08, 00000008
        mov     eax, 8                                  ; 4041 _ B8, 00000008
        ret                                             ; 4046 _ C3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0531: jmp     unsetDefaultNamespace                   ; 4050 _ E9, FFFFD27B
; genxUnsetDefaultNamespace End of function

; Filling space: 0BH
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H, 8DH, 0BCH, 27H, 00H
;       db 00H, 00H, 00H

ALIGN   16

genxStartElement:; Function begin
        push    edi                                     ; 4060 _ 57
        push    esi                                     ; 4061 _ 56
        push    ebx                                     ; 4062 _ 53
        mov     esi, dword [esp+10H]                    ; 4063 _ 8B. 74 24, 10
        mov     ebx, dword [esi]                        ; 4067 _ 8B. 1E
        mov     eax, dword [ebx+0CH]                    ; 4069 _ 8B. 43, 0C
        cmp     eax, 2                                  ; 406C _ 83. F8, 02
        je      ?_0538                                  ; 406F _ 0F 84, 0000008F
        jbe     ?_0537                                  ; 4075 _ 0F 86, 00000085
        cmp     eax, 4                                  ; 407B _ 83. F8, 04
        ja      ?_0532                                  ; 407E _ 77, 0E
        mov     eax, ebx                                ; 4080 _ 89. D8
        call    writeStartTag                           ; 4082 _ E8, FFFFD4C9
        test    eax, eax                                ; 4087 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4089 _ 89. 43, 08
        jnz     ?_0535                                  ; 408C _ 75, 48
?_0532: mov     eax, dword [ebx+1004CH]                 ; 408E _ 8B. 83, 0001004C
        mov     dword [ebx+0CH], 3                      ; 4094 _ C7. 43, 0C, 00000003
        test    eax, eax                                ; 409B _ 85. C0
        jle     ?_0534                                  ; 409D _ 7E, 21
        mov     ecx, dword [ebx+10054H]                 ; 409F _ 8B. 8B, 00010054
        lea     eax, [ecx+eax*4]                        ; 40A5 _ 8D. 04 81
        nop                                             ; 40A8 _ 90
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0533: mov     edx, dword [ecx]                        ; 40B0 _ 8B. 11
        add     ecx, 4                                  ; 40B2 _ 83. C1, 04
        cmp     ecx, eax                                ; 40B5 _ 39. C1
        mov     dword [edx+18H], 0                      ; 40B7 _ C7. 42, 18, 00000000
        jnz     ?_0533                                  ; 40BE _ 75, F0
?_0534: lea     edi, [ebx+10068H]                       ; 40C0 _ 8D. BB, 00010068
        mov     edx, esi                                ; 40C6 _ 89. F2
        mov     eax, edi                                ; 40C8 _ 89. F8
        call    listAppend                              ; 40CA _ E8, FFFFBF71
        test    eax, eax                                ; 40CF _ 85. C0
        mov     dword [ebx+8H], eax                     ; 40D1 _ 89. 43, 08
        jz      ?_0536                                  ; 40D4 _ 74, 0A
?_0535: pop     ebx                                     ; 40D6 _ 5B
        pop     esi                                     ; 40D7 _ 5E
        pop     edi                                     ; 40D8 _ 5F
        ret                                             ; 40D9 _ C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0536: xor     edx, edx                                ; 40E0 _ 31. D2
        mov     eax, edi                                ; 40E2 _ 89. F8
        call    listAppend                              ; 40E4 _ E8, FFFFBF57
        test    eax, eax                                ; 40E9 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 40EB _ 89. 43, 08
        jnz     ?_0535                                  ; 40EE _ 75, E6
        mov     dword [ebx+10024H], esi                 ; 40F0 _ 89. B3, 00010024
        pop     ebx                                     ; 40F6 _ 5B
        pop     esi                                     ; 40F7 _ 5E
        pop     edi                                     ; 40F8 _ 5F
        ret                                             ; 40F9 _ C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0537: test    eax, eax                                ; 4100 _ 85. C0
        jnz     ?_0532                                  ; 4102 _ 75, 8A
?_0538: mov     dword [ebx+8H], 8                       ; 4104 _ C7. 43, 08, 00000008
        mov     eax, 8                                  ; 410B _ B8, 00000008
        pop     ebx                                     ; 4110 _ 5B
        pop     esi                                     ; 4111 _ 5E
        pop     edi                                     ; 4112 _ 5F
        ret                                             ; 4113 _ C3
; genxStartElement End of function

; Filling space: 0CH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BFH
;       db 00H, 00H, 00H, 00H

ALIGN   16

genxAddNamespace:; Function begin
        mov     eax, dword [esp+4H]                     ; 4120 _ 8B. 44 24, 04
        mov     edx, dword [esp+8H]                     ; 4124 _ 8B. 54 24, 08
        mov     ecx, dword [eax]                        ; 4128 _ 8B. 08
        cmp     dword [ecx+0CH], 3                      ; 412A _ 83. 79, 0C, 03
        jz      ?_0539                                  ; 412E _ 74, 10
        mov     dword [ecx+8H], 8                       ; 4130 _ C7. 41, 08, 00000008
        mov     eax, 8                                  ; 4137 _ B8, 00000008
        ret                                             ; 413C _ C3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0539: jmp     addNamespace                            ; 4140 _ E9, FFFFCFDB
; genxAddNamespace End of function

; Filling space: 0BH
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H, 8DH, 0BCH, 27H, 00H
;       db 00H, 00H, 00H

ALIGN   16

genxAddAttribute:; Function begin
        push    ebx                                     ; 4150 _ 53
        mov     eax, dword [esp+8H]                     ; 4151 _ 8B. 44 24, 08
        mov     edx, dword [esp+0CH]                    ; 4155 _ 8B. 54 24, 0C
        mov     ecx, dword [eax]                        ; 4159 _ 8B. 08
        mov     ebx, dword [ecx+0CH]                    ; 415B _ 8B. 59, 0C
        sub     ebx, 3                                  ; 415E _ 83. EB, 03
        cmp     ebx, 1                                  ; 4161 _ 83. FB, 01
        jbe     ?_0540                                  ; 4164 _ 76, 12
        mov     dword [ecx+8H], 8                       ; 4166 _ C7. 41, 08, 00000008
        mov     eax, 8                                  ; 416D _ B8, 00000008
        pop     ebx                                     ; 4172 _ 5B
        ret                                             ; 4173 _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0540: test    edx, edx                                ; 4178 _ 85. D2
        mov     dword [ecx+0CH], 4                      ; 417A _ C7. 41, 0C, 00000004
        jz      ?_0541                                  ; 4181 _ 74, 0D
        pop     ebx                                     ; 4183 _ 5B
        jmp     addAttribute                            ; 4184 _ E9, FFFFC6B7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0541: mov     dword [ecx+8H], 11                      ; 4190 _ C7. 41, 08, 0000000B
        mov     eax, 11                                 ; 4197 _ B8, 0000000B
        pop     ebx                                     ; 419C _ 5B
        ret                                             ; 419D _ C3
; genxAddAttribute End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

genxEndElement:; Function begin
        push    ebp                                     ; 41A0 _ 55
        push    edi                                     ; 41A1 _ 57
        push    esi                                     ; 41A2 _ 56
        push    ebx                                     ; 41A3 _ 53
        sub     esp, 28                                 ; 41A4 _ 83. EC, 1C
        mov     ebx, dword [esp+30H]                    ; 41A7 _ 8B. 5C 24, 30
        mov     eax, dword [ebx+0CH]                    ; 41AB _ 8B. 43, 0C
        cmp     eax, 2                                  ; 41AE _ 83. F8, 02
        jbe     ?_0550                                  ; 41B1 _ 0F 86, 000000C9
        cmp     eax, 4                                  ; 41B7 _ 83. F8, 04
        jbe     ?_0549                                  ; 41BA _ 0F 86, 000000A8
?_0542: mov     eax, dword [ebx+1006CH]                 ; 41C0 _ 8B. 83, 0001006C
        lea     edx, [eax-1H]                           ; 41C6 _ 8D. 50, FF
        mov     eax, dword [ebx+10074H]                 ; 41C9 _ 8B. 83, 00010074
        mov     esi, dword [eax+edx*4]                  ; 41CF _ 8B. 34 90
        test    esi, esi                                ; 41D2 _ 85. F6
        jz      ?_0544                                  ; 41D4 _ 74, 14
; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0543: sub     edx, 2                                  ; 41E0 _ 83. EA, 02
        mov     ecx, dword [eax+edx*4]                  ; 41E3 _ 8B. 0C 90
        test    ecx, ecx                                ; 41E6 _ 85. C9
        jnz     ?_0543                                  ; 41E8 _ 75, F6
?_0544: mov     edi, dword [ebx+4H]                     ; 41EA _ 8B. 7B, 04
        mov     ebp, dword [eax+edx*4-4H]               ; 41ED _ 8B. 6C 90, FC
        test    edi, edi                                ; 41F1 _ 85. FF
        je      ?_0551                                  ; 41F3 _ 0F 84, 000000A7
        mov     dword [esp+4H], ?_0872                  ; 41F9 _ C7. 44 24, 04, 000000F3(d)
        mov     eax, dword [ebx+10010H]                 ; 4201 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 4207 _ 89. 04 24
        call    near [edi]                              ; 420A _ FF. 17
        mov     esi, eax                                ; 420C _ 89. C6
?_0545: test    esi, esi                                ; 420E _ 85. F6
        mov     dword [ebx+8H], esi                     ; 4210 _ 89. 73, 08
        jnz     ?_0548                                  ; 4213 _ 75, 45
        mov     eax, dword [ebp+8H]                     ; 4215 _ 8B. 45, 08
        test    eax, eax                                ; 4218 _ 85. C0
        je      ?_0554                                  ; 421A _ 0F 84, 000000D3
        mov     eax, dword [eax+10H]                    ; 4220 _ 8B. 40, 10
        cmp     eax, dword [ebx+10020H]                 ; 4223 _ 3B. 83, 00010020
        je      ?_0554                                  ; 4229 _ 0F 84, 000000C4
        mov     edx, dword [eax+4H]                     ; 422F _ 8B. 50, 04
        mov     eax, dword [ebx+4H]                     ; 4232 _ 8B. 43, 04
        add     edx, 6                                  ; 4235 _ 83. C2, 06
        test    eax, eax                                ; 4238 _ 85. C0
        je      ?_0560                                  ; 423A _ 0F 84, 00000165
        mov     dword [esp+4H], edx                     ; 4240 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4244 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 424A _ 89. 14 24
        call    near [eax]                              ; 424D _ FF. 10
        mov     edi, eax                                ; 424F _ 89. C7
?_0546: test    edi, edi                                ; 4251 _ 85. FF
        mov     dword [ebx+8H], edi                     ; 4253 _ 89. 7B, 08
        jz      ?_0552                                  ; 4256 _ 74, 70
?_0547: mov     esi, edi                                ; 4258 _ 89. FE
?_0548: add     esp, 28                                 ; 425A _ 83. C4, 1C
        mov     eax, esi                                ; 425D _ 89. F0
        pop     ebx                                     ; 425F _ 5B
        pop     esi                                     ; 4260 _ 5E
        pop     edi                                     ; 4261 _ 5F
        pop     ebp                                     ; 4262 _ 5D
        ret                                             ; 4263 _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0549: mov     eax, ebx                                ; 4268 _ 89. D8
        call    writeStartTag                           ; 426A _ E8, FFFFD2E1
        test    eax, eax                                ; 426F _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4271 _ 89. 43, 08
        mov     esi, eax                                ; 4274 _ 89. C6
        je      ?_0542                                  ; 4276 _ 0F 84, FFFFFF44
        jmp     ?_0548                                  ; 427C _ EB, DC

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0550: mov     dword [ebx+8H], 8                       ; 4280 _ C7. 43, 08, 00000008
        add     esp, 28                                 ; 4287 _ 83. C4, 1C
        mov     esi, 8                                  ; 428A _ BE, 00000008
        pop     ebx                                     ; 428F _ 5B
        mov     eax, esi                                ; 4290 _ 89. F0
        pop     esi                                     ; 4292 _ 5E
        pop     edi                                     ; 4293 _ 5F
        pop     ebp                                     ; 4294 _ 5D
        ret                                             ; 4295 _ C3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0551: mov     eax, dword [ebx]                        ; 42A0 _ 8B. 03
        mov     dword [esp], ?_0872                     ; 42A2 _ C7. 04 24, 000000F3(d)
        mov     esi, 10                                 ; 42A9 _ BE, 0000000A
        mov     dword [esp+4H], eax                     ; 42AE _ 89. 44 24, 04
        call    fputs                                   ; 42B2 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 42B7 _ 83. F8, FF
        cmovne  esi, edi                                ; 42BA _ 0F 45. F7
        jmp     ?_0545                                  ; 42BD _ E9, FFFFFF4C

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0552: mov     eax, dword [ebx+4H]                     ; 42C8 _ 8B. 43, 04
        test    eax, eax                                ; 42CB _ 85. C0
        je      ?_0567                                  ; 42CD _ 0F 84, 00000150
        mov     dword [esp+4H], ?_0852                  ; 42D3 _ C7. 44 24, 04, 00000011(d)
        mov     edx, dword [ebx+10010H]                 ; 42DB _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 42E1 _ 89. 14 24
        call    near [eax]                              ; 42E4 _ FF. 10
        mov     edi, eax                                ; 42E6 _ 89. C7
?_0553: test    edi, edi                                ; 42E8 _ 85. FF
        mov     dword [ebx+8H], edi                     ; 42EA _ 89. 7B, 08
        jne     ?_0547                                  ; 42ED _ 0F 85, FFFFFF65
?_0554: mov     eax, dword [ebx+4H]                     ; 42F3 _ 8B. 43, 04
        mov     edx, dword [ebp+4H]                     ; 42F6 _ 8B. 55, 04
        test    eax, eax                                ; 42F9 _ 85. C0
        je      ?_0566                                  ; 42FB _ 0F 84, 00000104
        mov     dword [esp+4H], edx                     ; 4301 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4305 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 430B _ 89. 14 24
        call    near [eax]                              ; 430E _ FF. 10
        mov     esi, eax                                ; 4310 _ 89. C6
?_0555: test    esi, esi                                ; 4312 _ 85. F6
        mov     dword [ebx+8H], esi                     ; 4314 _ 89. 73, 08
        jne     ?_0548                                  ; 4317 _ 0F 85, FFFFFF3D
        mov     eax, dword [ebx+4H]                     ; 431D _ 8B. 43, 04
        test    eax, eax                                ; 4320 _ 85. C0
        je      ?_0569                                  ; 4322 _ 0F 84, 0000012E
        mov     dword [esp+4H], ?_0856                  ; 4328 _ C7. 44 24, 04, 0000001A(d)
        mov     edx, dword [ebx+10010H]                 ; 4330 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4336 _ 89. 14 24
        call    near [eax]                              ; 4339 _ FF. 10
        mov     esi, eax                                ; 433B _ 89. C6
?_0556: test    esi, esi                                ; 433D _ 85. F6
        mov     dword [ebx+8H], esi                     ; 433F _ 89. 73, 08
        jne     ?_0548                                  ; 4342 _ 0F 85, FFFFFF12
        mov     eax, dword [ebx+1006CH]                 ; 4348 _ 8B. 83, 0001006C
        mov     ecx, dword [ebx+10074H]                 ; 434E _ 8B. 8B, 00010074
        lea     edx, [eax-1H]                           ; 4354 _ 8D. 50, FF
        mov     dword [ebx+1006CH], edx                 ; 4357 _ 89. 93, 0001006C
?_0557: lea     eax, [ecx+edx*4]                        ; 435D _ 8D. 04 91
        jmp     ?_0559                                  ; 4360 _ EB, 19

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0558: mov     edi, dword [eax-4H]                     ; 4368 _ 8B. 78, FC
        sub     edx, 2                                  ; 436B _ 83. EA, 02
        sub     eax, 8                                  ; 436E _ 83. E8, 08
        mov     dword [ebx+1006CH], edx                 ; 4371 _ 89. 93, 0001006C
        test    edi, edi                                ; 4377 _ 85. FF
        jnz     ?_0561                                  ; 4379 _ 75, 48
?_0559: mov     edi, dword [eax]                        ; 437B _ 8B. 38
        test    edi, edi                                ; 437D _ 85. FF
        jnz     ?_0558                                  ; 437F _ 75, E7
        sub     edx, 1                                  ; 4381 _ 83. EA, 01
        test    edx, edx                                ; 4384 _ 85. D2
        mov     dword [ebx+1006CH], edx                 ; 4386 _ 89. 93, 0001006C
        js      ?_0568                                  ; 438C _ 0F 88, 000000B3
        cmp     edx, 1                                  ; 4392 _ 83. FA, 01
        sbb     eax, eax                                ; 4395 _ 19. C0
        and     eax, 0FFFFFFFDH                         ; 4397 _ 83. E0, FD
        add     eax, 5                                  ; 439A _ 83. C0, 05
        mov     dword [ebx+0CH], eax                    ; 439D _ 89. 43, 0C
        jmp     ?_0548                                  ; 43A0 _ E9, FFFFFEB5

?_0560: mov     eax, dword [ebx]                        ; 43A5 _ 8B. 03
        mov     dword [esp], edx                        ; 43A7 _ 89. 14 24
        mov     edi, 10                                 ; 43AA _ BF, 0000000A
        mov     dword [esp+4H], eax                     ; 43AF _ 89. 44 24, 04
        call    fputs                                   ; 43B3 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 43B8 _ 83. F8, FF
        cmovne  edi, esi                                ; 43BB _ 0F 45. FE
        jmp     ?_0546                                  ; 43BE _ E9, FFFFFE8E

?_0561: mov     ebp, dword [edi+0CH]                    ; 43C3 _ 8B. 6F, 0C
        test    ebp, ebp                                ; 43C6 _ 85. ED
        jnz     ?_0564                                  ; 43C8 _ 75, 1E
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0562: sub     dword [edi+8H], 1                       ; 43D0 _ 83. 6F, 08, 01
        je      ?_0570                                  ; 43D4 _ 0F 84, 0000009E
?_0563: mov     edx, dword [ebx+1006CH]                 ; 43DA _ 8B. 93, 0001006C
        jmp     ?_0557                                  ; 43E0 _ E9, FFFFFF78

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0564: test    edx, edx                                ; 43E8 _ 85. D2
        jle     ?_0562                                  ; 43EA _ 7E, E4
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0565: mov     eax, dword [ecx+edx*4]                  ; 43F0 _ 8B. 04 91
        sub     edx, 2                                  ; 43F3 _ 83. EA, 02
        test    eax, eax                                ; 43F6 _ 85. C0
        jz      ?_0564                                  ; 43F8 _ 74, EE
        cmp     edi, dword [ecx+edx*4+4H]               ; 43FA _ 3B. 7C 91, 04
        jnz     ?_0565                                  ; 43FE _ 75, F0
        mov     dword [edi+10H], eax                    ; 4400 _ 89. 47, 10
        jmp     ?_0562                                  ; 4403 _ EB, CB

?_0566: mov     eax, dword [ebx]                        ; 4405 _ 8B. 03
        mov     dword [esp], edx                        ; 4407 _ 89. 14 24
        mov     dword [esp+4H], eax                     ; 440A _ 89. 44 24, 04
        call    fputs                                   ; 440E _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 4413 _ 83. F8, FF
        mov     eax, 10                                 ; 4416 _ B8, 0000000A
        cmove   esi, eax                                ; 441B _ 0F 44. F0
        jmp     ?_0555                                  ; 441E _ E9, FFFFFEEF

?_0567: mov     eax, dword [ebx]                        ; 4423 _ 8B. 03
        mov     dword [esp], ?_0852                     ; 4425 _ C7. 04 24, 00000011(d)
        mov     dword [esp+4H], eax                     ; 442C _ 89. 44 24, 04
        call    fputs                                   ; 4430 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 4435 _ 83. F8, FF
        mov     eax, 10                                 ; 4438 _ B8, 0000000A
        cmove   edi, eax                                ; 443D _ 0F 44. F8
        jmp     ?_0553                                  ; 4440 _ E9, FFFFFEA3

?_0568: mov     dword [ebx+8H], 9                       ; 4445 _ C7. 43, 08, 00000009
        mov     esi, 9                                  ; 444C _ BE, 00000009
        jmp     ?_0548                                  ; 4451 _ E9, FFFFFE04

?_0569: mov     eax, dword [ebx]                        ; 4456 _ 8B. 03
        mov     dword [esp], ?_0856                     ; 4458 _ C7. 04 24, 0000001A(d)
        mov     dword [esp+4H], eax                     ; 445F _ 89. 44 24, 04
        call    fputs                                   ; 4463 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 4468 _ 83. F8, FF
        mov     eax, 10                                 ; 446B _ B8, 0000000A
        cmove   esi, eax                                ; 4470 _ 0F 44. F0
        jmp     ?_0556                                  ; 4473 _ E9, FFFFFEC5
; genxEndElement End of function

?_0570: ; Local function
        mov     dword [edi+0CH], 0                      ; 4478 _ C7. 47, 0C, 00000000
        jmp     ?_0563                                  ; 447F _ E9, FFFFFF56

; Filling space: 0CH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BFH
;       db 00H, 00H, 00H, 00H

ALIGN   16

genxAddText:; Function begin
        push    ebp                                     ; 4490 _ 55
        push    edi                                     ; 4491 _ 57
        push    esi                                     ; 4492 _ 56
        push    ebx                                     ; 4493 _ 53
        sub     esp, 44                                 ; 4494 _ 83. EC, 2C
        mov     ebx, dword [esp+40H]                    ; 4497 _ 8B. 5C 24, 40
        mov     esi, dword [esp+44H]                    ; 449B _ 8B. 74 24, 44
        mov     eax, dword [ebx+0CH]                    ; 449F _ 8B. 43, 0C
        lea     edx, [eax-3H]                           ; 44A2 _ 8D. 50, FD
        cmp     edx, 1                                  ; 44A5 _ 83. FA, 01
        jbe     ?_0572                                  ; 44A8 _ 76, 1E
        cmp     eax, 5                                  ; 44AA _ 83. F8, 05
        jz      ?_0573                                  ; 44AD _ 74, 2E
        mov     dword [ebx+8H], 8                       ; 44AF _ C7. 43, 08, 00000008
        mov     eax, 8                                  ; 44B6 _ B8, 00000008
?_0571: add     esp, 44                                 ; 44BB _ 83. C4, 2C
        pop     ebx                                     ; 44BE _ 5B
        pop     esi                                     ; 44BF _ 5E
        pop     edi                                     ; 44C0 _ 5F
        pop     ebp                                     ; 44C1 _ 5D
        ret                                             ; 44C2 _ C3

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0572: mov     eax, ebx                                ; 44C8 _ 89. D8
        call    writeStartTag                           ; 44CA _ E8, FFFFD081
        test    eax, eax                                ; 44CF _ 85. C0
        mov     dword [ebx+8H], eax                     ; 44D1 _ 89. 43, 08
        jnz     ?_0571                                  ; 44D4 _ 75, E5
        mov     dword [ebx+0CH], 5                      ; 44D6 _ C7. 43, 0C, 00000005
?_0573: mov     ebp, esi                                ; 44DD _ 89. F5
?_0574: movzx   eax, byte [esi]                         ; 44DF _ 0F B6. 06
        test    al, al                                  ; 44E2 _ 84. C0
        je      ?_0595                                  ; 44E4 _ 0F 84, 00000306
        js      ?_0581                                  ; 44EA _ 0F 88, 000000A0
        lea     edi, [esi+1H]                           ; 44F0 _ 8D. 7E, 01
?_0575: movsx   edx, byte [ebx+eax+10H]                 ; 44F3 _ 0F BE. 54 03, 10
?_0576: test    edx, edx                                ; 44F8 _ 85. D2
        jnz     ?_0578                                  ; 44FA _ 75, 14
        mov     eax, 2                                  ; 44FC _ B8, 00000002
?_0577: mov     dword [ebx+8H], eax                     ; 4501 _ 89. 43, 08
        add     esp, 44                                 ; 4504 _ 83. C4, 2C
        pop     ebx                                     ; 4507 _ 5B
        pop     esi                                     ; 4508 _ 5E
        pop     edi                                     ; 4509 _ 5F
        pop     ebp                                     ; 450A _ 5D
        ret                                             ; 450B _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0578: cmp     eax, 38                                 ; 4510 _ 83. F8, 26
        je      ?_0591                                  ; 4513 _ 0F 84, 00000237
        jle     ?_0587                                  ; 4519 _ 0F 8E, 00000131
        cmp     eax, 60                                 ; 451F _ 83. F8, 3C
        je      ?_0593                                  ; 4522 _ 0F 84, 00000278
        cmp     eax, 62                                 ; 4528 _ 83. F8, 3E
        nop                                             ; 452B _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
        jnz     ?_0580                                  ; 4530 _ 75, 4E
        mov     eax, dword [ebx+4H]                     ; 4532 _ 8B. 43, 04
        test    eax, eax                                ; 4535 _ 85. C0
        je      ?_0602                                  ; 4537 _ 0F 84, 000003B3
        mov     dword [esp+8H], esi                     ; 453D _ 89. 74 24, 08
        mov     dword [esp+4H], ebp                     ; 4541 _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4545 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 454B _ 89. 14 24
        call    near [eax+4H]                           ; 454E _ FF. 50, 04
?_0579: test    eax, eax                                ; 4551 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4553 _ 89. 43, 08
        jnz     ?_0577                                  ; 4556 _ 75, A9
        mov     eax, dword [ebx+4H]                     ; 4558 _ 8B. 43, 04
        test    eax, eax                                ; 455B _ 85. C0
        je      ?_0605                                  ; 455D _ 0F 84, 00000413
        mov     dword [esp+4H], ?_0876                  ; 4563 _ C7. 44 24, 04, 00000107(d)
        mov     ebp, edi                                ; 456B _ 89. FD
        mov     edx, dword [ebx+10010H]                 ; 456D _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4573 _ 89. 14 24
        call    near [eax]                              ; 4576 _ FF. 10
        nop                                             ; 4578 _ 90
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0580: mov     dword [ebx+8H], 0                       ; 4580 _ C7. 43, 08, 00000000
        mov     esi, edi                                ; 4587 _ 89. FE
        jmp     ?_0574                                  ; 4589 _ E9, FFFFFF51

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0581: cmp     al, -63                                 ; 4590 _ 3C, C1
        jbe     ?_0586                                  ; 4592 _ 0F 86, 000000A8
        cmp     al, -33                                 ; 4598 _ 3C, DF
        ja      ?_0582                                  ; 459A _ 77, 2C
        mov     ecx, eax                                ; 459C _ 89. C1
        movzx   eax, byte [esi+1H]                      ; 459E _ 0F B6. 46, 01
        and     ecx, 1FH                                ; 45A2 _ 83. E1, 1F
        shl     ecx, 6                                  ; 45A5 _ C1. E1, 06
        lea     edx, [eax-80H]                          ; 45A8 _ 8D. 50, 80
        cmp     dl, 63                                  ; 45AB _ 80. FA, 3F
        ja      ?_0586                                  ; 45AE _ 0F 87, 0000008C
        lea     edi, [esi+2H]                           ; 45B4 _ 8D. 7E, 02
        and     eax, 3FH                                ; 45B7 _ 83. E0, 3F
        or      eax, ecx                                ; 45BA _ 09. C8
        jmp     ?_0575                                  ; 45BC _ E9, FFFFFF32

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0582: cmp     al, -17                                 ; 45C8 _ 3C, EF
        ja      ?_0589                                  ; 45CA _ 0F 87, 000000E0
        mov     ecx, eax                                ; 45D0 _ 89. C1
        movzx   edx, byte [esi+1H]                      ; 45D2 _ 0F B6. 56, 01
        shl     ecx, 12                                 ; 45D6 _ C1. E1, 0C
        cmp     eax, 224                                ; 45D9 _ 3D, 000000E0
        movzx   ecx, cx                                 ; 45DE _ 0F B7. C9
        mov     dword [esp+18H], ecx                    ; 45E1 _ 89. 4C 24, 18
        je      ?_0598                                  ; 45E5 _ 0F 84, 00000255
        cmp     eax, 236                                ; 45EB _ 3D, 000000EC
        jle     ?_0584                                  ; 45F0 _ 7E, 36
        cmp     eax, 237                                ; 45F2 _ 3D, 000000ED
        jnz     ?_0585                                  ; 45F7 _ 75, 39
        lea     eax, [edx-80H]                          ; 45F9 _ 8D. 42, 80
        cmp     al, 31                                  ; 45FC _ 3C, 1F
        ja      ?_0586                                  ; 45FE _ 77, 40
?_0583: movzx   eax, byte [esi+2H]                      ; 4600 _ 0F B6. 46, 02
        and     edx, 3FH                                ; 4604 _ 83. E2, 3F
        shl     edx, 6                                  ; 4607 _ C1. E2, 06
        lea     edi, [eax-80H]                          ; 460A _ 8D. 78, 80
        mov     ecx, edi                                ; 460D _ 89. F9
        cmp     cl, 63                                  ; 460F _ 80. F9, 3F
        ja      ?_0586                                  ; 4612 _ 77, 2C
        lea     edi, [esi+3H]                           ; 4614 _ 8D. 7E, 03
        and     eax, 3FH                                ; 4617 _ 83. E0, 3F
        or      eax, dword [esp+18H]                    ; 461A _ 0B. 44 24, 18
        or      eax, edx                                ; 461E _ 09. D0
        jmp     ?_0575                                  ; 4620 _ E9, FFFFFECE

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0584: lea     edi, [edx-80H]                          ; 4628 _ 8D. 7A, 80
        mov     ecx, edi                                ; 462B _ 89. F9
        cmp     cl, 63                                  ; 462D _ 80. F9, 3F
        ja      ?_0586                                  ; 4630 _ 77, 0E
?_0585: cmp     eax, 237                                ; 4632 _ 3D, 000000ED
        jle     ?_0583                                  ; 4637 _ 7E, C7
        lea     eax, [edx-80H]                          ; 4639 _ 8D. 42, 80
        cmp     al, 63                                  ; 463C _ 3C, 3F
        jbe     ?_0583                                  ; 463E _ 76, C0
?_0586: mov     eax, 1                                  ; 4640 _ B8, 00000001
        jmp     ?_0577                                  ; 4645 _ E9, FFFFFEB7

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0587: cmp     eax, 13                                 ; 4650 _ 83. F8, 0D
        jne     ?_0580                                  ; 4653 _ 0F 85, FFFFFF27
        mov     eax, dword [ebx+4H]                     ; 4659 _ 8B. 43, 04
        test    eax, eax                                ; 465C _ 85. C0
        je      ?_0599                                  ; 465E _ 0F 84, 000001F4
        mov     dword [esp+8H], esi                     ; 4664 _ 89. 74 24, 08
        mov     dword [esp+4H], ebp                     ; 4668 _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 466C _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4672 _ 89. 14 24
        call    near [eax+4H]                           ; 4675 _ FF. 50, 04
?_0588: test    eax, eax                                ; 4678 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 467A _ 89. 43, 08
        jne     ?_0577                                  ; 467D _ 0F 85, FFFFFE7E
        mov     eax, dword [ebx+4H]                     ; 4683 _ 8B. 43, 04
        test    eax, eax                                ; 4686 _ 85. C0
        je      ?_0606                                  ; 4688 _ 0F 84, 00000311
        mov     dword [esp+4H], ?_0873                  ; 468E _ C7. 44 24, 04, 000000F6(d)
        mov     ebp, edi                                ; 4696 _ 89. FD
        mov     edx, dword [ebx+10010H]                 ; 4698 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 469E _ 89. 14 24
        call    near [eax]                              ; 46A1 _ FF. 10
        jmp     ?_0580                                  ; 46A3 _ E9, FFFFFED8

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0589: cmp     al, -12                                 ; 46B0 _ 3C, F4
        ja      ?_0586                                  ; 46B2 _ 77, 8C
        movzx   edx, al                                 ; 46B4 _ 0F B6. D0
        and     eax, 07H                                ; 46B7 _ 83. E0, 07
        shl     eax, 18                                 ; 46BA _ C1. E0, 12
        cmp     edx, 240                                ; 46BD _ 81. FA, 000000F0
        je      ?_0596                                  ; 46C3 _ 0F 84, 0000014F
        cmp     edx, 244                                ; 46C9 _ 81. FA, 000000F4
        movzx   edx, byte [esi+1H]                      ; 46CF _ 0F B6. 56, 01
        jne     ?_0597                                  ; 46D3 _ 0F 85, 0000014F
        lea     ecx, [edx-80H]                          ; 46D9 _ 8D. 4A, 80
        cmp     cl, 15                                  ; 46DC _ 80. F9, 0F
        ja      ?_0586                                  ; 46DF _ 0F 87, FFFFFF5B
?_0590: mov     edi, edx                                ; 46E5 _ 89. D7
        movzx   edx, byte [esi+2H]                      ; 46E7 _ 0F B6. 56, 02
        and     edi, 3FH                                ; 46EB _ 83. E7, 3F
        mov     dword [esp+18H], edi                    ; 46EE _ 89. 7C 24, 18
        shl     dword [esp+18H], 12                     ; 46F2 _ C1. 64 24, 18, 0C
        lea     ecx, [edx-80H]                          ; 46F7 _ 8D. 4A, 80
        cmp     cl, 63                                  ; 46FA _ 80. F9, 3F
        ja      ?_0586                                  ; 46FD _ 0F 87, FFFFFF3D
        movzx   ecx, byte [esi+3H]                      ; 4703 _ 0F B6. 4E, 03
        mov     edi, edx                                ; 4707 _ 89. D7
        and     edi, 3FH                                ; 4709 _ 83. E7, 3F
        mov     dword [esp+1CH], edi                    ; 470C _ 89. 7C 24, 1C
        shl     dword [esp+1CH], 6                      ; 4710 _ C1. 64 24, 1C, 06
        lea     edi, [ecx-80H]                          ; 4715 _ 8D. 79, 80
        mov     edx, edi                                ; 4718 _ 89. FA
        cmp     dl, 63                                  ; 471A _ 80. FA, 3F
        ja      ?_0586                                  ; 471D _ 0F 87, FFFFFF1D
        or      eax, dword [esp+1CH]                    ; 4723 _ 0B. 44 24, 1C
        lea     edi, [esi+4H]                           ; 4727 _ 8D. 7E, 04
        and     ecx, 3FH                                ; 472A _ 83. E1, 3F
        or      eax, ecx                                ; 472D _ 09. C8
        or      eax, dword [esp+18H]                    ; 472F _ 0B. 44 24, 18
        cmp     eax, 65535                              ; 4733 _ 3D, 0000FFFF
        jle     ?_0575                                  ; 4738 _ 0F 8E, FFFFFDB5
        xor     edx, edx                                ; 473E _ 31. D2
        cmp     eax, 1114111                            ; 4740 _ 3D, 0010FFFF
        setle   dl                                      ; 4745 _ 0F 9E. C2
        jmp     ?_0576                                  ; 4748 _ E9, FFFFFDAB

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0591: mov     eax, dword [ebx+4H]                     ; 4750 _ 8B. 43, 04
        test    eax, eax                                ; 4753 _ 85. C0
        je      ?_0601                                  ; 4755 _ 0F 84, 00000165
        mov     dword [esp+8H], esi                     ; 475B _ 89. 74 24, 08
        mov     dword [esp+4H], ebp                     ; 475F _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4763 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4769 _ 89. 14 24
        call    near [eax+4H]                           ; 476C _ FF. 50, 04
?_0592: test    eax, eax                                ; 476F _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4771 _ 89. 43, 08
        jne     ?_0577                                  ; 4774 _ 0F 85, FFFFFD87
        mov     eax, dword [ebx+4H]                     ; 477A _ 8B. 43, 04
        test    eax, eax                                ; 477D _ 85. C0
        je      ?_0607                                  ; 477F _ 0F 84, 00000243
        mov     dword [esp+4H], ?_0875                  ; 4785 _ C7. 44 24, 04, 00000101(d)
        mov     ebp, edi                                ; 478D _ 89. FD
        mov     edx, dword [ebx+10010H]                 ; 478F _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4795 _ 89. 14 24
        call    near [eax]                              ; 4798 _ FF. 10
        jmp     ?_0580                                  ; 479A _ E9, FFFFFDE1

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0593: mov     eax, dword [ebx+4H]                     ; 47A0 _ 8B. 43, 04
        test    eax, eax                                ; 47A3 _ 85. C0
        je      ?_0600                                  ; 47A5 _ 0F 84, 000000E5
        mov     dword [esp+8H], esi                     ; 47AB _ 89. 74 24, 08
        mov     dword [esp+4H], ebp                     ; 47AF _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 47B3 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 47B9 _ 89. 14 24
        call    near [eax+4H]                           ; 47BC _ FF. 50, 04
?_0594: test    eax, eax                                ; 47BF _ 85. C0
        mov     dword [ebx+8H], eax                     ; 47C1 _ 89. 43, 08
        jne     ?_0577                                  ; 47C4 _ 0F 85, FFFFFD37
        mov     eax, dword [ebx+4H]                     ; 47CA _ 8B. 43, 04
        test    eax, eax                                ; 47CD _ 85. C0
        je      ?_0604                                  ; 47CF _ 0F 84, 00000178
        mov     dword [esp+4H], ?_0874                  ; 47D5 _ C7. 44 24, 04, 000000FC(d)
        mov     ebp, edi                                ; 47DD _ 89. FD
        mov     edx, dword [ebx+10010H]                 ; 47DF _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 47E5 _ 89. 14 24
        call    near [eax]                              ; 47E8 _ FF. 10
        jmp     ?_0580                                  ; 47EA _ E9, FFFFFD91

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0595: mov     edi, dword [ebx+4H]                     ; 47F0 _ 8B. 7B, 04
        test    edi, edi                                ; 47F3 _ 85. FF
        je      ?_0603                                  ; 47F5 _ 0F 84, 00000125
        mov     dword [esp+8H], esi                     ; 47FB _ 89. 74 24, 08
        mov     dword [esp+4H], ebp                     ; 47FF _ 89. 6C 24, 04
        mov     eax, dword [ebx+10010H]                 ; 4803 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 4809 _ 89. 04 24
        call    near [edi+4H]                           ; 480C _ FF. 57, 04
        jmp     ?_0571                                  ; 480F _ E9, FFFFFCA7

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0596: movzx   edx, byte [esi+1H]                      ; 4818 _ 0F B6. 56, 01
        lea     ecx, [edx+70H]                          ; 481C _ 8D. 4A, 70
        cmp     cl, 47                                  ; 481F _ 80. F9, 2F
        ja      ?_0586                                  ; 4822 _ 0F 87, FFFFFE18
?_0597: lea     ecx, [edx-80H]                          ; 4828 _ 8D. 4A, 80
        cmp     cl, 63                                  ; 482B _ 80. F9, 3F
        jbe     ?_0590                                  ; 482E _ 0F 86, FFFFFEB1
        jmp     ?_0586                                  ; 4834 _ E9, FFFFFE07

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0598: lea     edi, [edx+60H]                          ; 4840 _ 8D. 7A, 60
        mov     ecx, edi                                ; 4843 _ 89. F9
        cmp     cl, 31                                  ; 4845 _ 80. F9, 1F
        jbe     ?_0584                                  ; 4848 _ 0F 86, FFFFFDDA
        mov     al, 1                                   ; 484E _ B0, 01
        jmp     ?_0577                                  ; 4850 _ E9, FFFFFCAC

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0599: mov     eax, dword [ebx]                        ; 4858 _ 8B. 03
        sub     esi, ebp                                ; 485A _ 29. EE
        mov     dword [esp+4H], 1                       ; 485C _ C7. 44 24, 04, 00000001
        mov     dword [esp+8H], esi                     ; 4864 _ 89. 74 24, 08
        mov     dword [esp], ebp                        ; 4868 _ 89. 2C 24
        mov     dword [esp+0CH], eax                    ; 486B _ 89. 44 24, 0C
        call    fwrite                                  ; 486F _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 4874 _ B9, 00000000
        cmp     esi, eax                                ; 4879 _ 39. C6
        mov     eax, 10                                 ; 487B _ B8, 0000000A
        cmove   eax, ecx                                ; 4880 _ 0F 44. C1
        jmp     ?_0588                                  ; 4883 _ E9, FFFFFDF0

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0600: mov     eax, dword [ebx]                        ; 4890 _ 8B. 03
        sub     esi, ebp                                ; 4892 _ 29. EE
        mov     dword [esp+4H], 1                       ; 4894 _ C7. 44 24, 04, 00000001
        mov     dword [esp+8H], esi                     ; 489C _ 89. 74 24, 08
        mov     dword [esp], ebp                        ; 48A0 _ 89. 2C 24
        mov     dword [esp+0CH], eax                    ; 48A3 _ 89. 44 24, 0C
        call    fwrite                                  ; 48A7 _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 48AC _ B9, 00000000
        cmp     esi, eax                                ; 48B1 _ 39. C6
        mov     eax, 10                                 ; 48B3 _ B8, 0000000A
        cmove   eax, ecx                                ; 48B8 _ 0F 44. C1
        jmp     ?_0594                                  ; 48BB _ E9, FFFFFEFF

?_0601: mov     eax, dword [ebx]                        ; 48C0 _ 8B. 03
        sub     esi, ebp                                ; 48C2 _ 29. EE
        mov     dword [esp+4H], 1                       ; 48C4 _ C7. 44 24, 04, 00000001
        mov     dword [esp+8H], esi                     ; 48CC _ 89. 74 24, 08
        mov     dword [esp], ebp                        ; 48D0 _ 89. 2C 24
        mov     dword [esp+0CH], eax                    ; 48D3 _ 89. 44 24, 0C
        call    fwrite                                  ; 48D7 _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 48DC _ B9, 00000000
        cmp     esi, eax                                ; 48E1 _ 39. C6
        mov     eax, 10                                 ; 48E3 _ B8, 0000000A
        cmove   eax, ecx                                ; 48E8 _ 0F 44. C1
        jmp     ?_0592                                  ; 48EB _ E9, FFFFFE7F

?_0602: mov     eax, dword [ebx]                        ; 48F0 _ 8B. 03
        sub     esi, ebp                                ; 48F2 _ 29. EE
        mov     dword [esp+4H], 1                       ; 48F4 _ C7. 44 24, 04, 00000001
        mov     dword [esp+8H], esi                     ; 48FC _ 89. 74 24, 08
        mov     dword [esp], ebp                        ; 4900 _ 89. 2C 24
        mov     dword [esp+0CH], eax                    ; 4903 _ 89. 44 24, 0C
        call    fwrite                                  ; 4907 _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 490C _ B9, 00000000
        cmp     esi, eax                                ; 4911 _ 39. C6
        mov     eax, 10                                 ; 4913 _ B8, 0000000A
        cmove   eax, ecx                                ; 4918 _ 0F 44. C1
        jmp     ?_0579                                  ; 491B _ E9, FFFFFC31

?_0603: mov     eax, dword [ebx]                        ; 4920 _ 8B. 03
        sub     esi, ebp                                ; 4922 _ 29. EE
        mov     dword [esp+4H], 1                       ; 4924 _ C7. 44 24, 04, 00000001
        mov     dword [esp+8H], esi                     ; 492C _ 89. 74 24, 08
        mov     dword [esp], ebp                        ; 4930 _ 89. 2C 24
        mov     dword [esp+0CH], eax                    ; 4933 _ 89. 44 24, 0C
        call    fwrite                                  ; 4937 _ E8, FFFFFFFC(rel)
        mov     edx, eax                                ; 493C _ 89. C2
        mov     eax, 10                                 ; 493E _ B8, 0000000A
        cmp     esi, edx                                ; 4943 _ 39. D6
        cmove   eax, edi                                ; 4945 _ 0F 44. C7
        jmp     ?_0571                                  ; 4948 _ E9, FFFFFB6E

?_0604: mov     eax, dword [ebx]                        ; 494D _ 8B. 03
        mov     dword [esp+8H], 4                       ; 494F _ C7. 44 24, 08, 00000004
        mov     ebp, edi                                ; 4957 _ 89. FD
        mov     dword [esp+4H], 1                       ; 4959 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0874                     ; 4961 _ C7. 04 24, 000000FC(d)
        mov     dword [esp+0CH], eax                    ; 4968 _ 89. 44 24, 0C
        call    fwrite                                  ; 496C _ E8, FFFFFFFC(rel)
        jmp     ?_0580                                  ; 4971 _ E9, FFFFFC0A

?_0605: mov     eax, dword [ebx]                        ; 4976 _ 8B. 03
        mov     dword [esp+8H], 4                       ; 4978 _ C7. 44 24, 08, 00000004
        mov     ebp, edi                                ; 4980 _ 89. FD
        mov     dword [esp+4H], 1                       ; 4982 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0876                     ; 498A _ C7. 04 24, 00000107(d)
        mov     dword [esp+0CH], eax                    ; 4991 _ 89. 44 24, 0C
        call    fwrite                                  ; 4995 _ E8, FFFFFFFC(rel)
        jmp     ?_0580                                  ; 499A _ E9, FFFFFBE1

?_0606: mov     eax, dword [ebx]                        ; 499F _ 8B. 03
        mov     dword [esp+8H], 5                       ; 49A1 _ C7. 44 24, 08, 00000005
        mov     ebp, edi                                ; 49A9 _ 89. FD
        mov     dword [esp+4H], 1                       ; 49AB _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0873                     ; 49B3 _ C7. 04 24, 000000F6(d)
        mov     dword [esp+0CH], eax                    ; 49BA _ 89. 44 24, 0C
        call    fwrite                                  ; 49BE _ E8, FFFFFFFC(rel)
        jmp     ?_0580                                  ; 49C3 _ E9, FFFFFBB8
; genxAddText End of function

?_0607: ; Local function
        mov     eax, dword [ebx]                        ; 49C8 _ 8B. 03
        mov     dword [esp+8H], 5                       ; 49CA _ C7. 44 24, 08, 00000005
        mov     ebp, edi                                ; 49D2 _ 89. FD
        mov     dword [esp+4H], 1                       ; 49D4 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0875                     ; 49DC _ C7. 04 24, 00000101(d)
        mov     dword [esp+0CH], eax                    ; 49E3 _ 89. 44 24, 0C
        call    fwrite                                  ; 49E7 _ E8, FFFFFFFC(rel)
        jmp     ?_0580                                  ; 49EC _ E9, FFFFFB8F

        jmp     genxAddBoundedText                      ; 49F1 _ EB, 0D

        nop                                             ; 49F3 _ 90
        nop                                             ; 49F4 _ 90
        nop                                             ; 49F5 _ 90
        nop                                             ; 49F6 _ 90
        nop                                             ; 49F7 _ 90
        nop                                             ; 49F8 _ 90
        nop                                             ; 49F9 _ 90
        nop                                             ; 49FA _ 90
        nop                                             ; 49FB _ 90
        nop                                             ; 49FC _ 90
        nop                                             ; 49FD _ 90
        nop                                             ; 49FE _ 90
        nop                                             ; 49FF _ 90

ALIGN   16
genxAddBoundedText:; Function begin
        push    ebp                                     ; 4A00 _ 55
        push    edi                                     ; 4A01 _ 57
        push    esi                                     ; 4A02 _ 56
        push    ebx                                     ; 4A03 _ 53
        sub     esp, 44                                 ; 4A04 _ 83. EC, 2C
        mov     ebx, dword [esp+40H]                    ; 4A07 _ 8B. 5C 24, 40
        mov     ebp, dword [esp+44H]                    ; 4A0B _ 8B. 6C 24, 44
        mov     edi, dword [esp+48H]                    ; 4A0F _ 8B. 7C 24, 48
        mov     eax, dword [ebx+0CH]                    ; 4A13 _ 8B. 43, 0C
        lea     edx, [eax-3H]                           ; 4A16 _ 8D. 50, FD
        cmp     edx, 1                                  ; 4A19 _ 83. FA, 01
        jbe     ?_0609                                  ; 4A1C _ 76, 22
        cmp     eax, 5                                  ; 4A1E _ 83. F8, 05
        jz      ?_0610                                  ; 4A21 _ 74, 32
        mov     dword [ebx+8H], 8                       ; 4A23 _ C7. 43, 08, 00000008
        mov     eax, 8                                  ; 4A2A _ B8, 00000008
?_0608: add     esp, 44                                 ; 4A2F _ 83. C4, 2C
        pop     ebx                                     ; 4A32 _ 5B
        pop     esi                                     ; 4A33 _ 5E
        pop     edi                                     ; 4A34 _ 5F
        pop     ebp                                     ; 4A35 _ 5D
        ret                                             ; 4A36 _ C3

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0609: mov     eax, ebx                                ; 4A40 _ 89. D8
        call    writeStartTag                           ; 4A42 _ E8, FFFFCB09
        test    eax, eax                                ; 4A47 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4A49 _ 89. 43, 08
        jnz     ?_0608                                  ; 4A4C _ 75, E1
        mov     dword [ebx+0CH], 5                      ; 4A4E _ C7. 43, 0C, 00000005
?_0610: cmp     ebp, edi                                ; 4A55 _ 39. FD
        jnc     ?_0632                                  ; 4A57 _ 0F 83, 00000352
        movzx   eax, byte [ebp]                         ; 4A5D _ 0F B6. 45, 00
        test    al, al                                  ; 4A61 _ 84. C0
        je      ?_0623                                  ; 4A63 _ 0F 84, 0000018F
        mov     edx, ebp                                ; 4A69 _ 89. EA
        test    al, al                                  ; 4A6B _ 84. C0
        mov     dword [esp+14H], edi                    ; 4A6D _ 89. 7C 24, 14
        lea     esi, [edx+1H]                           ; 4A71 _ 8D. 72, 01
        js      ?_0617                                  ; 4A74 _ 0F 88, 000000BF
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0611: movsx   ecx, byte [ebx+eax+10H]                 ; 4A80 _ 0F BE. 4C 03, 10
?_0612: test    ecx, ecx                                ; 4A85 _ 85. C9
        jnz     ?_0614                                  ; 4A87 _ 75, 17
        mov     eax, 2                                  ; 4A89 _ B8, 00000002
?_0613: mov     dword [ebx+8H], eax                     ; 4A8E _ 89. 43, 08
        add     esp, 44                                 ; 4A91 _ 83. C4, 2C
        pop     ebx                                     ; 4A94 _ 5B
        pop     esi                                     ; 4A95 _ 5E
        pop     edi                                     ; 4A96 _ 5F
        pop     ebp                                     ; 4A97 _ 5D
        ret                                             ; 4A98 _ C3

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0614: cmp     eax, 38                                 ; 4AA0 _ 83. F8, 26
        je      ?_0628                                  ; 4AA3 _ 0F 84, 0000025F
        jle     ?_0624                                  ; 4AA9 _ 0F 8E, 00000159
        cmp     eax, 60                                 ; 4AAF _ 83. F8, 3C
        je      ?_0630                                  ; 4AB2 _ 0F 84, 000002A8
        cmp     eax, 62                                 ; 4AB8 _ 83. F8, 3E
        nop                                             ; 4ABB _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
        jnz     ?_0616                                  ; 4AC0 _ 75, 4E
        mov     eax, dword [ebx+4H]                     ; 4AC2 _ 8B. 43, 04
        test    eax, eax                                ; 4AC5 _ 85. C0
        je      ?_0637                                  ; 4AC7 _ 0F 84, 00000373
        mov     dword [esp+8H], edx                     ; 4ACD _ 89. 54 24, 08
        mov     dword [esp+4H], ebp                     ; 4AD1 _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4AD5 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4ADB _ 89. 14 24
        call    near [eax+4H]                           ; 4ADE _ FF. 50, 04
?_0615: test    eax, eax                                ; 4AE1 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4AE3 _ 89. 43, 08
        jnz     ?_0613                                  ; 4AE6 _ 75, A6
        mov     eax, dword [ebx+4H]                     ; 4AE8 _ 8B. 43, 04
        test    eax, eax                                ; 4AEB _ 85. C0
        je      ?_0641                                  ; 4AED _ 0F 84, 00000422
        mov     dword [esp+4H], ?_0876                  ; 4AF3 _ C7. 44 24, 04, 00000107(d)
        mov     ebp, esi                                ; 4AFB _ 89. F5
        mov     edx, dword [ebx+10010H]                 ; 4AFD _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4B03 _ 89. 14 24
        call    near [eax]                              ; 4B06 _ FF. 10
        nop                                             ; 4B08 _ 90
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0616: cmp     dword [esp+14H], esi                    ; 4B10 _ 39. 74 24, 14
        mov     dword [ebx+8H], 0                       ; 4B14 _ C7. 43, 08, 00000000
        jbe     ?_0633                                  ; 4B1B _ 0F 86, 00000290
        movzx   eax, byte [esi]                         ; 4B21 _ 0F B6. 06
        test    al, al                                  ; 4B24 _ 84. C0
        je      ?_0623                                  ; 4B26 _ 0F 84, 000000CC
        mov     edx, esi                                ; 4B2C _ 89. F2
        test    al, al                                  ; 4B2E _ 84. C0
        lea     esi, [edx+1H]                           ; 4B30 _ 8D. 72, 01
        jns     ?_0611                                  ; 4B33 _ 0F 89, FFFFFF47
?_0617: cmp     al, -63                                 ; 4B39 _ 3C, C1
        jbe     ?_0623                                  ; 4B3B _ 0F 86, 000000B7
        cmp     al, -33                                 ; 4B41 _ 3C, DF
        ja      ?_0618                                  ; 4B43 _ 77, 2B
        movzx   edi, byte [edx+1H]                      ; 4B45 _ 0F B6. 7A, 01
        mov     ecx, eax                                ; 4B49 _ 89. C1
        and     ecx, 1FH                                ; 4B4B _ 83. E1, 1F
        shl     ecx, 6                                  ; 4B4E _ C1. E1, 06
        lea     esi, [edi-80H]                          ; 4B51 _ 8D. 77, 80
        mov     eax, esi                                ; 4B54 _ 89. F0
        cmp     al, 63                                  ; 4B56 _ 3C, 3F
        ja      ?_0623                                  ; 4B58 _ 0F 87, 0000009A
        lea     esi, [edx+2H]                           ; 4B5E _ 8D. 72, 02
        mov     eax, edi                                ; 4B61 _ 89. F8
        and     eax, 3FH                                ; 4B63 _ 83. E0, 3F
        or      eax, ecx                                ; 4B66 _ 09. C8
        jmp     ?_0611                                  ; 4B68 _ E9, FFFFFF13

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0618: cmp     al, -17                                 ; 4B70 _ 3C, EF
        ja      ?_0626                                  ; 4B72 _ 0F 87, 000000E8
        mov     ecx, eax                                ; 4B78 _ 89. C1
        shl     ecx, 12                                 ; 4B7A _ C1. E1, 0C
        cmp     eax, 224                                ; 4B7D _ 3D, 000000E0
        movzx   edi, cx                                 ; 4B82 _ 0F B7. F9
        mov     dword [esp+18H], edi                    ; 4B85 _ 89. 7C 24, 18
        movzx   edi, byte [edx+1H]                      ; 4B89 _ 0F B6. 7A, 01
        jz      ?_0620                                  ; 4B8D _ 74, 41
        cmp     eax, 236                                ; 4B8F _ 3D, 000000EC
        jle     ?_0621                                  ; 4B94 _ 7E, 44
        cmp     eax, 237                                ; 4B96 _ 3D, 000000ED
        jnz     ?_0622                                  ; 4B9B _ 75, 47
        lea     eax, [edi-80H]                          ; 4B9D _ 8D. 47, 80
        cmp     al, 31                                  ; 4BA0 _ 3C, 1F
        ja      ?_0623                                  ; 4BA2 _ 77, 54
?_0619: movzx   eax, byte [edx+2H]                      ; 4BA4 _ 0F B6. 42, 02
        and     edi, 3FH                                ; 4BA8 _ 83. E7, 3F
        shl     edi, 6                                  ; 4BAB _ C1. E7, 06
        lea     esi, [eax-80H]                          ; 4BAE _ 8D. 70, 80
        mov     ecx, esi                                ; 4BB1 _ 89. F1
        cmp     cl, 63                                  ; 4BB3 _ 80. F9, 3F
        ja      ?_0623                                  ; 4BB6 _ 77, 40
        lea     esi, [edx+3H]                           ; 4BB8 _ 8D. 72, 03
        and     eax, 3FH                                ; 4BBB _ 83. E0, 3F
        or      eax, dword [esp+18H]                    ; 4BBE _ 0B. 44 24, 18
        or      eax, edi                                ; 4BC2 _ 09. F8
        jmp     ?_0611                                  ; 4BC4 _ E9, FFFFFEB7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0620: lea     esi, [edi+60H]                          ; 4BD0 _ 8D. 77, 60
        mov     ecx, esi                                ; 4BD3 _ 89. F1
        cmp     cl, 31                                  ; 4BD5 _ 80. F9, 1F
        ja      ?_0623                                  ; 4BD8 _ 77, 1E
?_0621: lea     esi, [edi-80H]                          ; 4BDA _ 8D. 77, 80
        mov     ecx, esi                                ; 4BDD _ 89. F1
        cmp     cl, 63                                  ; 4BDF _ 80. F9, 3F
        ja      ?_0623                                  ; 4BE2 _ 77, 14
?_0622: cmp     eax, 237                                ; 4BE4 _ 3D, 000000ED
        jle     ?_0619                                  ; 4BE9 _ 7E, B9
        lea     eax, [edi-80H]                          ; 4BEB _ 8D. 47, 80
        cmp     al, 63                                  ; 4BEE _ 3C, 3F
        jbe     ?_0619                                  ; 4BF0 _ 76, B2
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0623: mov     eax, 1                                  ; 4BF8 _ B8, 00000001
        jmp     ?_0613                                  ; 4BFD _ E9, FFFFFE8C

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0624: cmp     eax, 13                                 ; 4C08 _ 83. F8, 0D
        jne     ?_0616                                  ; 4C0B _ 0F 85, FFFFFEFF
        mov     eax, dword [ebx+4H]                     ; 4C11 _ 8B. 43, 04
        test    eax, eax                                ; 4C14 _ 85. C0
        je      ?_0636                                  ; 4C16 _ 0F 84, 000001EC
        mov     dword [esp+8H], edx                     ; 4C1C _ 89. 54 24, 08
        mov     dword [esp+4H], ebp                     ; 4C20 _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4C24 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4C2A _ 89. 14 24
        call    near [eax+4H]                           ; 4C2D _ FF. 50, 04
?_0625: test    eax, eax                                ; 4C30 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4C32 _ 89. 43, 08
        jne     ?_0613                                  ; 4C35 _ 0F 85, FFFFFE53
        mov     eax, dword [ebx+4H]                     ; 4C3B _ 8B. 43, 04
        test    eax, eax                                ; 4C3E _ 85. C0
        je      ?_0643                                  ; 4C40 _ 0F 84, 00000321
        mov     dword [esp+4H], ?_0873                  ; 4C46 _ C7. 44 24, 04, 000000F6(d)
        mov     ebp, esi                                ; 4C4E _ 89. F5
        mov     edx, dword [ebx+10010H]                 ; 4C50 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4C56 _ 89. 14 24
        call    near [eax]                              ; 4C59 _ FF. 10
        jmp     ?_0616                                  ; 4C5B _ E9, FFFFFEB0

?_0626: cmp     al, -12                                 ; 4C60 _ 3C, F4
        ja      ?_0623                                  ; 4C62 _ 77, 94
        mov     ecx, eax                                ; 4C64 _ 89. C1
        movzx   esi, al                                 ; 4C66 _ 0F B6. F0
        movzx   eax, byte [edx+1H]                      ; 4C69 _ 0F B6. 42, 01
        and     ecx, 07H                                ; 4C6D _ 83. E1, 07
        mov     dword [esp+18H], ecx                    ; 4C70 _ 89. 4C 24, 18
        shl     dword [esp+18H], 18                     ; 4C74 _ C1. 64 24, 18, 12
        cmp     esi, 240                                ; 4C79 _ 81. FE, 000000F0
        je      ?_0634                                  ; 4C7F _ 0F 84, 0000015B
        cmp     esi, 244                                ; 4C85 _ 81. FE, 000000F4
        jne     ?_0635                                  ; 4C8B _ 0F 85, 0000015D
        lea     esi, [eax-80H]                          ; 4C91 _ 8D. 70, 80
        mov     ecx, esi                                ; 4C94 _ 89. F1
        cmp     cl, 15                                  ; 4C96 _ 80. F9, 0F
        ja      ?_0623                                  ; 4C99 _ 0F 87, FFFFFF59
?_0627: mov     edi, eax                                ; 4C9F _ 89. C7
        movzx   eax, byte [edx+2H]                      ; 4CA1 _ 0F B6. 42, 02
        and     edi, 3FH                                ; 4CA5 _ 83. E7, 3F
        shl     edi, 12                                 ; 4CA8 _ C1. E7, 0C
        lea     esi, [eax-80H]                          ; 4CAB _ 8D. 70, 80
        mov     ecx, esi                                ; 4CAE _ 89. F1
        cmp     cl, 63                                  ; 4CB0 _ 80. F9, 3F
        ja      ?_0623                                  ; 4CB3 _ 0F 87, FFFFFF3F
        and     eax, 3FH                                ; 4CB9 _ 83. E0, 3F
        mov     dword [esp+1CH], eax                    ; 4CBC _ 89. 44 24, 1C
        movzx   eax, byte [edx+3H]                      ; 4CC0 _ 0F B6. 42, 03
        shl     dword [esp+1CH], 6                      ; 4CC4 _ C1. 64 24, 1C, 06
        lea     esi, [eax-80H]                          ; 4CC9 _ 8D. 70, 80
        mov     ecx, esi                                ; 4CCC _ 89. F1
        cmp     cl, 63                                  ; 4CCE _ 80. F9, 3F
        ja      ?_0623                                  ; 4CD1 _ 0F 87, FFFFFF21
        lea     esi, [edx+4H]                           ; 4CD7 _ 8D. 72, 04
        and     eax, 3FH                                ; 4CDA _ 83. E0, 3F
        or      eax, dword [esp+18H]                    ; 4CDD _ 0B. 44 24, 18
        or      eax, dword [esp+1CH]                    ; 4CE1 _ 0B. 44 24, 1C
        or      eax, edi                                ; 4CE5 _ 09. F8
        cmp     eax, 65535                              ; 4CE7 _ 3D, 0000FFFF
        jle     ?_0611                                  ; 4CEC _ 0F 8E, FFFFFD8E
        xor     ecx, ecx                                ; 4CF2 _ 31. C9
        cmp     eax, 1114111                            ; 4CF4 _ 3D, 0010FFFF
        setle   cl                                      ; 4CF9 _ 0F 9E. C1
        jmp     ?_0612                                  ; 4CFC _ E9, FFFFFD84

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0628: mov     eax, dword [ebx+4H]                     ; 4D08 _ 8B. 43, 04
        test    eax, eax                                ; 4D0B _ 85. C0
        je      ?_0639                                  ; 4D0D _ 0F 84, 0000019D
        mov     dword [esp+8H], edx                     ; 4D13 _ 89. 54 24, 08
        mov     dword [esp+4H], ebp                     ; 4D17 _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4D1B _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4D21 _ 89. 14 24
        call    near [eax+4H]                           ; 4D24 _ FF. 50, 04
?_0629: test    eax, eax                                ; 4D27 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4D29 _ 89. 43, 08
        jne     ?_0613                                  ; 4D2C _ 0F 85, FFFFFD5C
        mov     eax, dword [ebx+4H]                     ; 4D32 _ 8B. 43, 04
        test    eax, eax                                ; 4D35 _ 85. C0
        je      ?_0644                                  ; 4D37 _ 0F 84, 00000253
        mov     dword [esp+4H], ?_0875                  ; 4D3D _ C7. 44 24, 04, 00000101(d)
        mov     ebp, esi                                ; 4D45 _ 89. F5
        mov     edx, dword [ebx+10010H]                 ; 4D47 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4D4D _ 89. 14 24
        call    near [eax]                              ; 4D50 _ FF. 10
        jmp     ?_0616                                  ; 4D52 _ E9, FFFFFDB9

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0630: mov     eax, dword [ebx+4H]                     ; 4D60 _ 8B. 43, 04
        test    eax, eax                                ; 4D63 _ 85. C0
        je      ?_0638                                  ; 4D65 _ 0F 84, 0000010D
        mov     dword [esp+8H], edx                     ; 4D6B _ 89. 54 24, 08
        mov     dword [esp+4H], ebp                     ; 4D6F _ 89. 6C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 4D73 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4D79 _ 89. 14 24
        call    near [eax+4H]                           ; 4D7C _ FF. 50, 04
?_0631: test    eax, eax                                ; 4D7F _ 85. C0
        mov     dword [ebx+8H], eax                     ; 4D81 _ 89. 43, 08
        jne     ?_0613                                  ; 4D84 _ 0F 85, FFFFFD04
        mov     eax, dword [ebx+4H]                     ; 4D8A _ 8B. 43, 04
        test    eax, eax                                ; 4D8D _ 85. C0
        je      ?_0642                                  ; 4D8F _ 0F 84, 000001A9
        mov     dword [esp+4H], ?_0874                  ; 4D95 _ C7. 44 24, 04, 000000FC(d)
        mov     ebp, esi                                ; 4D9D _ 89. F5
        mov     edx, dword [ebx+10010H]                 ; 4D9F _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 4DA5 _ 89. 14 24
        call    near [eax]                              ; 4DA8 _ FF. 10
        jmp     ?_0616                                  ; 4DAA _ E9, FFFFFD61

?_0632: mov     esi, ebp                                ; 4DAF _ 89. EE
?_0633: mov     edi, dword [ebx+4H]                     ; 4DB1 _ 8B. 7B, 04
        test    edi, edi                                ; 4DB4 _ 85. FF
        je      ?_0640                                  ; 4DB6 _ 0F 84, 0000012C
        mov     dword [esp+48H], esi                    ; 4DBC _ 89. 74 24, 48
        mov     dword [esp+44H], ebp                    ; 4DC0 _ 89. 6C 24, 44
        mov     eax, dword [ebx+10010H]                 ; 4DC4 _ 8B. 83, 00010010
        mov     dword [esp+40H], eax                    ; 4DCA _ 89. 44 24, 40
        mov     eax, dword [edi+4H]                     ; 4DCE _ 8B. 47, 04
        add     esp, 44                                 ; 4DD1 _ 83. C4, 2C
        pop     ebx                                     ; 4DD4 _ 5B
        pop     esi                                     ; 4DD5 _ 5E
        pop     edi                                     ; 4DD6 _ 5F
        pop     ebp                                     ; 4DD7 _ 5D
        jmp     eax                                     ; 4DD8 _ FF. E0

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0634: lea     esi, [eax+70H]                          ; 4DE0 _ 8D. 70, 70
        mov     ecx, esi                                ; 4DE3 _ 89. F1
        cmp     cl, 47                                  ; 4DE5 _ 80. F9, 2F
        ja      ?_0623                                  ; 4DE8 _ 0F 87, FFFFFE0A
?_0635: lea     esi, [eax-80H]                          ; 4DEE _ 8D. 70, 80
        mov     ecx, esi                                ; 4DF1 _ 89. F1
        cmp     cl, 63                                  ; 4DF3 _ 80. F9, 3F
        jbe     ?_0627                                  ; 4DF6 _ 0F 86, FFFFFEA3
        jmp     ?_0623                                  ; 4DFC _ E9, FFFFFDF7

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0636: mov     eax, dword [ebx]                        ; 4E08 _ 8B. 03
        mov     edi, edx                                ; 4E0A _ 89. D7
        mov     dword [esp+4H], 1                       ; 4E0C _ C7. 44 24, 04, 00000001
        sub     edi, ebp                                ; 4E14 _ 29. EF
        mov     dword [esp], ebp                        ; 4E16 _ 89. 2C 24
        mov     dword [esp+8H], edi                     ; 4E19 _ 89. 7C 24, 08
        mov     dword [esp+0CH], eax                    ; 4E1D _ 89. 44 24, 0C
        call    fwrite                                  ; 4E21 _ E8, FFFFFFFC(rel)
        cmp     edi, eax                                ; 4E26 _ 39. C7
        mov     eax, 10                                 ; 4E28 _ B8, 0000000A
        mov     edi, 0                                  ; 4E2D _ BF, 00000000
        cmove   eax, edi                                ; 4E32 _ 0F 44. C7
        jmp     ?_0625                                  ; 4E35 _ E9, FFFFFDF6

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0637: mov     eax, dword [ebx]                        ; 4E40 _ 8B. 03
        mov     edi, edx                                ; 4E42 _ 89. D7
        mov     dword [esp+4H], 1                       ; 4E44 _ C7. 44 24, 04, 00000001
        sub     edi, ebp                                ; 4E4C _ 29. EF
        mov     dword [esp], ebp                        ; 4E4E _ 89. 2C 24
        mov     dword [esp+8H], edi                     ; 4E51 _ 89. 7C 24, 08
        mov     dword [esp+0CH], eax                    ; 4E55 _ 89. 44 24, 0C
        call    fwrite                                  ; 4E59 _ E8, FFFFFFFC(rel)
        cmp     edi, eax                                ; 4E5E _ 39. C7
        mov     eax, 10                                 ; 4E60 _ B8, 0000000A
        mov     edi, 0                                  ; 4E65 _ BF, 00000000
        cmove   eax, edi                                ; 4E6A _ 0F 44. C7
        jmp     ?_0615                                  ; 4E6D _ E9, FFFFFC6F

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0638: mov     eax, dword [ebx]                        ; 4E78 _ 8B. 03
        mov     edi, edx                                ; 4E7A _ 89. D7
        mov     dword [esp+4H], 1                       ; 4E7C _ C7. 44 24, 04, 00000001
        sub     edi, ebp                                ; 4E84 _ 29. EF
        mov     dword [esp], ebp                        ; 4E86 _ 89. 2C 24
        mov     dword [esp+8H], edi                     ; 4E89 _ 89. 7C 24, 08
        mov     dword [esp+0CH], eax                    ; 4E8D _ 89. 44 24, 0C
        call    fwrite                                  ; 4E91 _ E8, FFFFFFFC(rel)
        cmp     edi, eax                                ; 4E96 _ 39. C7
        mov     eax, 10                                 ; 4E98 _ B8, 0000000A
        mov     edi, 0                                  ; 4E9D _ BF, 00000000
        cmove   eax, edi                                ; 4EA2 _ 0F 44. C7
        jmp     ?_0631                                  ; 4EA5 _ E9, FFFFFED5

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0639: mov     eax, dword [ebx]                        ; 4EB0 _ 8B. 03
        mov     edi, edx                                ; 4EB2 _ 89. D7
        mov     dword [esp+4H], 1                       ; 4EB4 _ C7. 44 24, 04, 00000001
        sub     edi, ebp                                ; 4EBC _ 29. EF
        mov     dword [esp], ebp                        ; 4EBE _ 89. 2C 24
        mov     dword [esp+8H], edi                     ; 4EC1 _ 89. 7C 24, 08
        mov     dword [esp+0CH], eax                    ; 4EC5 _ 89. 44 24, 0C
        call    fwrite                                  ; 4EC9 _ E8, FFFFFFFC(rel)
        cmp     edi, eax                                ; 4ECE _ 39. C7
        mov     eax, 10                                 ; 4ED0 _ B8, 0000000A
        mov     edi, 0                                  ; 4ED5 _ BF, 00000000
        cmove   eax, edi                                ; 4EDA _ 0F 44. C7
        jmp     ?_0629                                  ; 4EDD _ E9, FFFFFE45

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0640: mov     eax, dword [ebx]                        ; 4EE8 _ 8B. 03
        sub     esi, ebp                                ; 4EEA _ 29. EE
        mov     dword [esp+4H], 1                       ; 4EEC _ C7. 44 24, 04, 00000001
        mov     dword [esp+8H], esi                     ; 4EF4 _ 89. 74 24, 08
        mov     dword [esp], ebp                        ; 4EF8 _ 89. 2C 24
        mov     dword [esp+0CH], eax                    ; 4EFB _ 89. 44 24, 0C
        call    fwrite                                  ; 4EFF _ E8, FFFFFFFC(rel)
        mov     edx, eax                                ; 4F04 _ 89. C2
        mov     eax, 10                                 ; 4F06 _ B8, 0000000A
        cmp     esi, edx                                ; 4F0B _ 39. D6
        cmove   eax, edi                                ; 4F0D _ 0F 44. C7
        jmp     ?_0608                                  ; 4F10 _ E9, FFFFFB1A

?_0641: mov     eax, dword [ebx]                        ; 4F15 _ 8B. 03
        mov     dword [esp+8H], 4                       ; 4F17 _ C7. 44 24, 08, 00000004
        mov     ebp, esi                                ; 4F1F _ 89. F5
        mov     dword [esp+4H], 1                       ; 4F21 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0876                     ; 4F29 _ C7. 04 24, 00000107(d)
        mov     dword [esp+0CH], eax                    ; 4F30 _ 89. 44 24, 0C
        call    fwrite                                  ; 4F34 _ E8, FFFFFFFC(rel)
        jmp     ?_0616                                  ; 4F39 _ E9, FFFFFBD2

?_0642: mov     eax, dword [ebx]                        ; 4F3E _ 8B. 03
        mov     dword [esp+8H], 4                       ; 4F40 _ C7. 44 24, 08, 00000004
        mov     ebp, esi                                ; 4F48 _ 89. F5
        mov     dword [esp+4H], 1                       ; 4F4A _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0874                     ; 4F52 _ C7. 04 24, 000000FC(d)
        mov     dword [esp+0CH], eax                    ; 4F59 _ 89. 44 24, 0C
        call    fwrite                                  ; 4F5D _ E8, FFFFFFFC(rel)
        jmp     ?_0616                                  ; 4F62 _ E9, FFFFFBA9

?_0643: mov     eax, dword [ebx]                        ; 4F67 _ 8B. 03
        mov     dword [esp+8H], 5                       ; 4F69 _ C7. 44 24, 08, 00000005
        mov     ebp, esi                                ; 4F71 _ 89. F5
        mov     dword [esp+4H], 1                       ; 4F73 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0873                     ; 4F7B _ C7. 04 24, 000000F6(d)
        mov     dword [esp+0CH], eax                    ; 4F82 _ 89. 44 24, 0C
        call    fwrite                                  ; 4F86 _ E8, FFFFFFFC(rel)
        jmp     ?_0616                                  ; 4F8B _ E9, FFFFFB80
; genxAddBoundedText End of function

?_0644: ; Local function
        mov     eax, dword [ebx]                        ; 4F90 _ 8B. 03
        mov     dword [esp+8H], 5                       ; 4F92 _ C7. 44 24, 08, 00000005
        mov     ebp, esi                                ; 4F9A _ 89. F5
        mov     dword [esp+4H], 1                       ; 4F9C _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0875                     ; 4FA4 _ C7. 04 24, 00000101(d)
        mov     dword [esp+0CH], eax                    ; 4FAB _ 89. 44 24, 0C
        call    fwrite                                  ; 4FAF _ E8, FFFFFFFC(rel)
        jmp     ?_0616                                  ; 4FB4 _ E9, FFFFFB57

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8

genxAddCountedText:; Function begin
        push    ebp                                     ; 4FC0 _ 55
        push    edi                                     ; 4FC1 _ 57
        push    esi                                     ; 4FC2 _ 56
        push    ebx                                     ; 4FC3 _ 53
        sub     esp, 60                                 ; 4FC4 _ 83. EC, 3C
        mov     esi, dword [esp+50H]                    ; 4FC7 _ 8B. 74 24, 50
        mov     ebx, dword [esp+54H]                    ; 4FCB _ 8B. 5C 24, 54
        mov     ebp, dword [esp+58H]                    ; 4FCF _ 8B. 6C 24, 58
        mov     eax, dword [esi+0CH]                    ; 4FD3 _ 8B. 46, 0C
        add     ebp, ebx                                ; 4FD6 _ 01. DD
        lea     edx, [eax-3H]                           ; 4FD8 _ 8D. 50, FD
        cmp     edx, 1                                  ; 4FDB _ 83. FA, 01
        jbe     ?_0646                                  ; 4FDE _ 76, 20
        cmp     eax, 5                                  ; 4FE0 _ 83. F8, 05
        jz      ?_0647                                  ; 4FE3 _ 74, 30
        mov     dword [esi+8H], 8                       ; 4FE5 _ C7. 46, 08, 00000008
        mov     eax, 8                                  ; 4FEC _ B8, 00000008
?_0645: add     esp, 60                                 ; 4FF1 _ 83. C4, 3C
        pop     ebx                                     ; 4FF4 _ 5B
        pop     esi                                     ; 4FF5 _ 5E
        pop     edi                                     ; 4FF6 _ 5F
        pop     ebp                                     ; 4FF7 _ 5D
        ret                                             ; 4FF8 _ C3

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0646: mov     eax, esi                                ; 5000 _ 89. F0
        call    writeStartTag                           ; 5002 _ E8, FFFFC549
        test    eax, eax                                ; 5007 _ 85. C0
        mov     dword [esi+8H], eax                     ; 5009 _ 89. 46, 08
        jnz     ?_0645                                  ; 500C _ 75, E3
        mov     dword [esi+0CH], 5                      ; 500E _ C7. 46, 0C, 00000005
?_0647: cmp     ebx, ebp                                ; 5015 _ 39. EB
        jnc     ?_0669                                  ; 5017 _ 0F 83, 0000036B
        movzx   eax, byte [ebx]                         ; 501D _ 0F B6. 03
        test    al, al                                  ; 5020 _ 84. C0
        je      ?_0664                                  ; 5022 _ 0F 84, 00000290
        mov     dword [esp+18H], ebx                    ; 5028 _ 89. 5C 24, 18
        lea     edi, [ebx+1H]                           ; 502C _ 8D. 7B, 01
        test    al, al                                  ; 502F _ 84. C0
        js      ?_0654                                  ; 5031 _ 0F 88, 000000B0
?_0648: movsx   edx, byte [esi+eax+10H]                 ; 5037 _ 0F BE. 54 06, 10
?_0649: test    edx, edx                                ; 503C _ 85. D2
        jnz     ?_0651                                  ; 503E _ 75, 10
        mov     eax, 2                                  ; 5040 _ B8, 00000002
?_0650: mov     dword [esi+8H], eax                     ; 5045 _ 89. 46, 08
        add     esp, 60                                 ; 5048 _ 83. C4, 3C
        pop     ebx                                     ; 504B _ 5B
        pop     esi                                     ; 504C _ 5E
        pop     edi                                     ; 504D _ 5F
        pop     ebp                                     ; 504E _ 5D
        ret                                             ; 504F _ C3

?_0651: cmp     eax, 38                                 ; 5050 _ 83. F8, 26
        je      ?_0667                                  ; 5053 _ 0F 84, 000002D7
        jle     ?_0665                                  ; 5059 _ 0F 8E, 00000269
        cmp     eax, 60                                 ; 505F _ 83. F8, 3C
        je      ?_0659                                  ; 5062 _ 0F 84, 000001C8
        cmp     eax, 62                                 ; 5068 _ 83. F8, 3E
        nop                                             ; 506B _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
        jnz     ?_0653                                  ; 5070 _ 75, 4E
        mov     eax, dword [esi+4H]                     ; 5072 _ 8B. 46, 04
        test    eax, eax                                ; 5075 _ 85. C0
        je      ?_0676                                  ; 5077 _ 0F 84, 0000040B
        mov     ecx, dword [esp+18H]                    ; 507D _ 8B. 4C 24, 18
        mov     dword [esp+8H], ebx                     ; 5081 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 5085 _ 89. 4C 24, 04
        mov     edx, dword [esi+10010H]                 ; 5089 _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 508F _ 89. 14 24
        call    near [eax+4H]                           ; 5092 _ FF. 50, 04
?_0652: test    eax, eax                                ; 5095 _ 85. C0
        mov     dword [esi+8H], eax                     ; 5097 _ 89. 46, 08
        jnz     ?_0650                                  ; 509A _ 75, A9
        mov     eax, dword [esi+4H]                     ; 509C _ 8B. 46, 04
        test    eax, eax                                ; 509F _ 85. C0
        je      ?_0681                                  ; 50A1 _ 0F 84, 000004A7
        mov     dword [esp+4H], ?_0876                  ; 50A7 _ C7. 44 24, 04, 00000107(d)
        mov     edx, dword [esi+10010H]                 ; 50AF _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 50B5 _ 89. 14 24
        call    near [eax]                              ; 50B8 _ FF. 10
        mov     dword [esp+18H], edi                    ; 50BA _ 89. 7C 24, 18
; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0653: cmp     ebp, edi                                ; 50C0 _ 39. FD
        mov     dword [esi+8H], 0                       ; 50C2 _ C7. 46, 08, 00000000
        jbe     ?_0678                                  ; 50C9 _ 0F 86, 00000422
        movzx   eax, byte [edi]                         ; 50CF _ 0F B6. 07
        test    al, al                                  ; 50D2 _ 84. C0
        je      ?_0664                                  ; 50D4 _ 0F 84, 000001DE
        mov     ebx, edi                                ; 50DA _ 89. FB
        test    al, al                                  ; 50DC _ 84. C0
        lea     edi, [ebx+1H]                           ; 50DE _ 8D. 7B, 01
        jns     ?_0648                                  ; 50E1 _ 0F 89, FFFFFF50
?_0654: cmp     al, -63                                 ; 50E7 _ 3C, C1
        jbe     ?_0664                                  ; 50E9 _ 0F 86, 000001C9
        cmp     al, -33                                 ; 50EF _ 3C, DF
        ja      ?_0655                                  ; 50F1 _ 77, 2D
        mov     edx, eax                                ; 50F3 _ 89. C2
        movzx   eax, byte [ebx+1H]                      ; 50F5 _ 0F B6. 43, 01
        and     edx, 1FH                                ; 50F9 _ 83. E2, 1F
        shl     edx, 6                                  ; 50FC _ C1. E2, 06
        lea     ecx, [eax-80H]                          ; 50FF _ 8D. 48, 80
        cmp     cl, 63                                  ; 5102 _ 80. F9, 3F
        ja      ?_0664                                  ; 5105 _ 0F 87, 000001AD
        lea     edi, [ebx+2H]                           ; 510B _ 8D. 7B, 02
        and     eax, 3FH                                ; 510E _ 83. E0, 3F
        or      eax, edx                                ; 5111 _ 09. D0
        jmp     ?_0648                                  ; 5113 _ E9, FFFFFF1F

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0655: cmp     al, -17                                 ; 5120 _ 3C, EF
        ja      ?_0657                                  ; 5122 _ 77, 6C
        mov     edx, eax                                ; 5124 _ 89. C2
        shl     edx, 12                                 ; 5126 _ C1. E2, 0C
        cmp     eax, 224                                ; 5129 _ 3D, 000000E0
        movzx   ecx, dx                                 ; 512E _ 0F B7. CA
        mov     dword [esp+1CH], ecx                    ; 5131 _ 89. 4C 24, 1C
        movzx   ecx, byte [ebx+1H]                      ; 5135 _ 0F B6. 4B, 01
        je      ?_0661                                  ; 5139 _ 0F 84, 00000149
        cmp     eax, 236                                ; 513F _ 3D, 000000EC
        jle     ?_0662                                  ; 5144 _ 0F 8E, 00000148
        cmp     eax, 237                                ; 514A _ 3D, 000000ED
        jne     ?_0663                                  ; 514F _ 0F 85, 00000147
        lea     eax, [ecx-80H]                          ; 5155 _ 8D. 41, 80
        cmp     al, 31                                  ; 5158 _ 3C, 1F
        ja      ?_0664                                  ; 515A _ 0F 87, 00000158
?_0656: movzx   eax, byte [ebx+2H]                      ; 5160 _ 0F B6. 43, 02
        and     ecx, 3FH                                ; 5164 _ 83. E1, 3F
        shl     ecx, 6                                  ; 5167 _ C1. E1, 06
        lea     edi, [eax-80H]                          ; 516A _ 8D. 78, 80
        mov     edx, edi                                ; 516D _ 89. FA
        cmp     dl, 63                                  ; 516F _ 80. FA, 3F
        ja      ?_0664                                  ; 5172 _ 0F 87, 00000140
        lea     edi, [ebx+3H]                           ; 5178 _ 8D. 7B, 03
        and     eax, 3FH                                ; 517B _ 83. E0, 3F
        or      eax, dword [esp+1CH]                    ; 517E _ 0B. 44 24, 1C
        or      eax, ecx                                ; 5182 _ 09. C8
        jmp     ?_0648                                  ; 5184 _ E9, FFFFFEAE

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0657: cmp     al, -12                                 ; 5190 _ 3C, F4
        ja      ?_0664                                  ; 5192 _ 0F 87, 00000120
        movzx   edx, al                                 ; 5198 _ 0F B6. D0
        and     eax, 07H                                ; 519B _ 83. E0, 07
        mov     dword [esp+1CH], eax                    ; 519E _ 89. 44 24, 1C
        shl     dword [esp+1CH], 18                     ; 51A2 _ C1. 64 24, 1C, 12
        cmp     edx, 240                                ; 51A7 _ 81. FA, 000000F0
        je      ?_0671                                  ; 51AD _ 0F 84, 0000020D
        cmp     edx, 244                                ; 51B3 _ 81. FA, 000000F4
        movzx   edx, byte [ebx+1H]                      ; 51B9 _ 0F B6. 53, 01
        jne     ?_0672                                  ; 51BD _ 0F 85, 0000020C
        lea     eax, [edx-80H]                          ; 51C3 _ 8D. 42, 80
        cmp     al, 15                                  ; 51C6 _ 3C, 0F
        ja      ?_0664                                  ; 51C8 _ 0F 87, 000000EA
?_0658: movzx   ecx, byte [ebx+2H]                      ; 51CE _ 0F B6. 4B, 02
        and     edx, 3FH                                ; 51D2 _ 83. E2, 3F
        shl     edx, 12                                 ; 51D5 _ C1. E2, 0C
        lea     eax, [ecx-80H]                          ; 51D8 _ 8D. 41, 80
        cmp     al, 63                                  ; 51DB _ 3C, 3F
        ja      ?_0664                                  ; 51DD _ 0F 87, 000000D5
        movzx   eax, byte [ebx+3H]                      ; 51E3 _ 0F B6. 43, 03
        and     ecx, 3FH                                ; 51E7 _ 83. E1, 3F
        shl     ecx, 6                                  ; 51EA _ C1. E1, 06
        lea     edi, [eax-80H]                          ; 51ED _ 8D. 78, 80
        mov     byte [esp+20H], al                      ; 51F0 _ 88. 44 24, 20
        mov     eax, edi                                ; 51F4 _ 89. F8
        cmp     al, 63                                  ; 51F6 _ 3C, 3F
        ja      ?_0664                                  ; 51F8 _ 0F 87, 000000BA
        mov     eax, dword [esp+20H]                    ; 51FE _ 8B. 44 24, 20
        lea     edi, [ebx+4H]                           ; 5202 _ 8D. 7B, 04
        and     eax, 3FH                                ; 5205 _ 83. E0, 3F
        or      eax, dword [esp+1CH]                    ; 5208 _ 0B. 44 24, 1C
        or      eax, ecx                                ; 520C _ 09. C8
        or      eax, edx                                ; 520E _ 09. D0
        cmp     eax, 65535                              ; 5210 _ 3D, 0000FFFF
        jle     ?_0648                                  ; 5215 _ 0F 8E, FFFFFE1C
        xor     edx, edx                                ; 521B _ 31. D2
        cmp     eax, 1114111                            ; 521D _ 3D, 0010FFFF
        setle   dl                                      ; 5222 _ 0F 9E. C2
        jmp     ?_0649                                  ; 5225 _ E9, FFFFFE12

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0659: mov     eax, dword [esi+4H]                     ; 5230 _ 8B. 46, 04
        test    eax, eax                                ; 5233 _ 85. C0
        je      ?_0673                                  ; 5235 _ 0F 84, 000001A5
        mov     ecx, dword [esp+18H]                    ; 523B _ 8B. 4C 24, 18
        mov     dword [esp+8H], ebx                     ; 523F _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 5243 _ 89. 4C 24, 04
        mov     edx, dword [esi+10010H]                 ; 5247 _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 524D _ 89. 14 24
        call    near [eax+4H]                           ; 5250 _ FF. 50, 04
?_0660: test    eax, eax                                ; 5253 _ 85. C0
        mov     dword [esi+8H], eax                     ; 5255 _ 89. 46, 08
        jne     ?_0650                                  ; 5258 _ 0F 85, FFFFFDE7
        mov     eax, dword [esi+4H]                     ; 525E _ 8B. 46, 04
        test    eax, eax                                ; 5261 _ 85. C0
        je      ?_0682                                  ; 5263 _ 0F 84, 00000310
        mov     dword [esp+4H], ?_0874                  ; 5269 _ C7. 44 24, 04, 000000FC(d)
        mov     edx, dword [esi+10010H]                 ; 5271 _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 5277 _ 89. 14 24
        call    near [eax]                              ; 527A _ FF. 10
        mov     dword [esp+18H], edi                    ; 527C _ 89. 7C 24, 18
        jmp     ?_0653                                  ; 5280 _ E9, FFFFFE3B

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0661: lea     edi, [ecx+60H]                          ; 5288 _ 8D. 79, 60
        mov     edx, edi                                ; 528B _ 89. FA
        cmp     dl, 31                                  ; 528D _ 80. FA, 1F
        ja      ?_0664                                  ; 5290 _ 77, 26
?_0662: lea     edi, [ecx-80H]                          ; 5292 _ 8D. 79, 80
        mov     edx, edi                                ; 5295 _ 89. FA
        cmp     dl, 63                                  ; 5297 _ 80. FA, 3F
        ja      ?_0664                                  ; 529A _ 77, 1C
?_0663: cmp     eax, 237                                ; 529C _ 3D, 000000ED
        jle     ?_0656                                  ; 52A1 _ 0F 8E, FFFFFEB9
        lea     eax, [ecx-80H]                          ; 52A7 _ 8D. 41, 80
        cmp     al, 63                                  ; 52AA _ 3C, 3F
        jbe     ?_0656                                  ; 52AC _ 0F 86, FFFFFEAE
; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0664: mov     eax, 1                                  ; 52B8 _ B8, 00000001
        jmp     ?_0650                                  ; 52BD _ E9, FFFFFD83

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0665: cmp     eax, 13                                 ; 52C8 _ 83. F8, 0D
        jne     ?_0653                                  ; 52CB _ 0F 85, FFFFFDEF
        mov     eax, dword [esi+4H]                     ; 52D1 _ 8B. 46, 04
        test    eax, eax                                ; 52D4 _ 85. C0
        je      ?_0674                                  ; 52D6 _ 0F 84, 0000013C
        mov     ecx, dword [esp+18H]                    ; 52DC _ 8B. 4C 24, 18
        mov     dword [esp+8H], ebx                     ; 52E0 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 52E4 _ 89. 4C 24, 04
        mov     edx, dword [esi+10010H]                 ; 52E8 _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 52EE _ 89. 14 24
        call    near [eax+4H]                           ; 52F1 _ FF. 50, 04
?_0666: test    eax, eax                                ; 52F4 _ 85. C0
        mov     dword [esi+8H], eax                     ; 52F6 _ 89. 46, 08
        jne     ?_0650                                  ; 52F9 _ 0F 85, FFFFFD46
        mov     eax, dword [esi+4H]                     ; 52FF _ 8B. 46, 04
        test    eax, eax                                ; 5302 _ 85. C0
        je      ?_0679                                  ; 5304 _ 0F 84, 000001EE
        mov     dword [esp+4H], ?_0873                  ; 530A _ C7. 44 24, 04, 000000F6(d)
        mov     edx, dword [esi+10010H]                 ; 5312 _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 5318 _ 89. 14 24
        call    near [eax]                              ; 531B _ FF. 10
        mov     dword [esp+18H], edi                    ; 531D _ 89. 7C 24, 18
        jmp     ?_0653                                  ; 5321 _ E9, FFFFFD9A

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0667: mov     eax, dword [esi+4H]                     ; 5330 _ 8B. 46, 04
        test    eax, eax                                ; 5333 _ 85. C0
        je      ?_0675                                  ; 5335 _ 0F 84, 00000115
        mov     ecx, dword [esp+18H]                    ; 533B _ 8B. 4C 24, 18
        mov     dword [esp+8H], ebx                     ; 533F _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 5343 _ 89. 4C 24, 04
        mov     edx, dword [esi+10010H]                 ; 5347 _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 534D _ 89. 14 24
        call    near [eax+4H]                           ; 5350 _ FF. 50, 04
?_0668: test    eax, eax                                ; 5353 _ 85. C0
        mov     dword [esi+8H], eax                     ; 5355 _ 89. 46, 08
        jne     ?_0650                                  ; 5358 _ 0F 85, FFFFFCE7
        mov     eax, dword [esi+4H]                     ; 535E _ 8B. 46, 04
        test    eax, eax                                ; 5361 _ 85. C0
        je      ?_0680                                  ; 5363 _ 0F 84, 000001BA
        mov     dword [esp+4H], ?_0875                  ; 5369 _ C7. 44 24, 04, 00000101(d)
        mov     edx, dword [esi+10010H]                 ; 5371 _ 8B. 96, 00010010
        mov     dword [esp], edx                        ; 5377 _ 89. 14 24
        call    near [eax]                              ; 537A _ FF. 10
        mov     dword [esp+18H], edi                    ; 537C _ 89. 7C 24, 18
        jmp     ?_0653                                  ; 5380 _ E9, FFFFFD3B

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0669: mov     dword [esp+18H], ebx                    ; 5388 _ 89. 5C 24, 18
?_0670: mov     edi, dword [esi+4H]                     ; 538C _ 8B. 7E, 04
        test    edi, edi                                ; 538F _ 85. FF
        je      ?_0677                                  ; 5391 _ 0F 84, 00000129
        mov     eax, dword [esp+18H]                    ; 5397 _ 8B. 44 24, 18
        mov     dword [esp+58H], ebx                    ; 539B _ 89. 5C 24, 58
        mov     dword [esp+54H], eax                    ; 539F _ 89. 44 24, 54
        mov     eax, dword [esi+10010H]                 ; 53A3 _ 8B. 86, 00010010
        mov     dword [esp+50H], eax                    ; 53A9 _ 89. 44 24, 50
        mov     eax, dword [edi+4H]                     ; 53AD _ 8B. 47, 04
        add     esp, 60                                 ; 53B0 _ 83. C4, 3C
        pop     ebx                                     ; 53B3 _ 5B
        pop     esi                                     ; 53B4 _ 5E
        pop     edi                                     ; 53B5 _ 5F
        pop     ebp                                     ; 53B6 _ 5D
        jmp     eax                                     ; 53B7 _ FF. E0

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0671: movzx   edx, byte [ebx+1H]                      ; 53C0 _ 0F B6. 53, 01
        lea     eax, [edx+70H]                          ; 53C4 _ 8D. 42, 70
        cmp     al, 47                                  ; 53C7 _ 3C, 2F
        ja      ?_0664                                  ; 53C9 _ 0F 87, FFFFFEE9
?_0672: lea     eax, [edx-80H]                          ; 53CF _ 8D. 42, 80
        cmp     al, 63                                  ; 53D2 _ 3C, 3F
        jbe     ?_0658                                  ; 53D4 _ 0F 86, FFFFFDF4
        jmp     ?_0664                                  ; 53DA _ E9, FFFFFED9

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0673: mov     ecx, dword [esp+18H]                    ; 53E0 _ 8B. 4C 24, 18
        mov     eax, dword [esi]                        ; 53E4 _ 8B. 06
        mov     dword [esp+4H], 1                       ; 53E6 _ C7. 44 24, 04, 00000001
        sub     ebx, ecx                                ; 53EE _ 29. CB
        mov     dword [esp], ecx                        ; 53F0 _ 89. 0C 24
        mov     dword [esp+0CH], eax                    ; 53F3 _ 89. 44 24, 0C
        mov     dword [esp+8H], ebx                     ; 53F7 _ 89. 5C 24, 08
        call    fwrite                                  ; 53FB _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 5400 _ B9, 00000000
        cmp     ebx, eax                                ; 5405 _ 39. C3
        mov     eax, 10                                 ; 5407 _ B8, 0000000A
        cmove   eax, ecx                                ; 540C _ 0F 44. C1
        jmp     ?_0660                                  ; 540F _ E9, FFFFFE3F

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0674: mov     ecx, dword [esp+18H]                    ; 5418 _ 8B. 4C 24, 18
        mov     eax, dword [esi]                        ; 541C _ 8B. 06
        mov     dword [esp+4H], 1                       ; 541E _ C7. 44 24, 04, 00000001
        sub     ebx, ecx                                ; 5426 _ 29. CB
        mov     dword [esp], ecx                        ; 5428 _ 89. 0C 24
        mov     dword [esp+0CH], eax                    ; 542B _ 89. 44 24, 0C
        mov     dword [esp+8H], ebx                     ; 542F _ 89. 5C 24, 08
        call    fwrite                                  ; 5433 _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 5438 _ B9, 00000000
        cmp     ebx, eax                                ; 543D _ 39. C3
        mov     eax, 10                                 ; 543F _ B8, 0000000A
        cmove   eax, ecx                                ; 5444 _ 0F 44. C1
        jmp     ?_0666                                  ; 5447 _ E9, FFFFFEA8

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0675: mov     ecx, dword [esp+18H]                    ; 5450 _ 8B. 4C 24, 18
        mov     eax, dword [esi]                        ; 5454 _ 8B. 06
        mov     dword [esp+4H], 1                       ; 5456 _ C7. 44 24, 04, 00000001
        sub     ebx, ecx                                ; 545E _ 29. CB
        mov     dword [esp], ecx                        ; 5460 _ 89. 0C 24
        mov     dword [esp+0CH], eax                    ; 5463 _ 89. 44 24, 0C
        mov     dword [esp+8H], ebx                     ; 5467 _ 89. 5C 24, 08
        call    fwrite                                  ; 546B _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 5470 _ B9, 00000000
        cmp     ebx, eax                                ; 5475 _ 39. C3
        mov     eax, 10                                 ; 5477 _ B8, 0000000A
        cmove   eax, ecx                                ; 547C _ 0F 44. C1
        jmp     ?_0668                                  ; 547F _ E9, FFFFFECF

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0676: mov     ecx, dword [esp+18H]                    ; 5488 _ 8B. 4C 24, 18
        mov     eax, dword [esi]                        ; 548C _ 8B. 06
        mov     dword [esp+4H], 1                       ; 548E _ C7. 44 24, 04, 00000001
        sub     ebx, ecx                                ; 5496 _ 29. CB
        mov     dword [esp], ecx                        ; 5498 _ 89. 0C 24
        mov     dword [esp+0CH], eax                    ; 549B _ 89. 44 24, 0C
        mov     dword [esp+8H], ebx                     ; 549F _ 89. 5C 24, 08
        call    fwrite                                  ; 54A3 _ E8, FFFFFFFC(rel)
        mov     ecx, 0                                  ; 54A8 _ B9, 00000000
        cmp     ebx, eax                                ; 54AD _ 39. C3
        mov     eax, 10                                 ; 54AF _ B8, 0000000A
        cmove   eax, ecx                                ; 54B4 _ 0F 44. C1
        jmp     ?_0652                                  ; 54B7 _ E9, FFFFFBD9

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0677: mov     ecx, dword [esp+18H]                    ; 54C0 _ 8B. 4C 24, 18
        mov     eax, dword [esi]                        ; 54C4 _ 8B. 06
        mov     dword [esp+4H], 1                       ; 54C6 _ C7. 44 24, 04, 00000001
        sub     ebx, ecx                                ; 54CE _ 29. CB
        mov     dword [esp], ecx                        ; 54D0 _ 89. 0C 24
        mov     dword [esp+0CH], eax                    ; 54D3 _ 89. 44 24, 0C
        mov     dword [esp+8H], ebx                     ; 54D7 _ 89. 5C 24, 08
        call    fwrite                                  ; 54DB _ E8, FFFFFFFC(rel)
        mov     edx, eax                                ; 54E0 _ 89. C2
        mov     eax, 10                                 ; 54E2 _ B8, 0000000A
        cmp     ebx, edx                                ; 54E7 _ 39. D3
        cmove   eax, edi                                ; 54E9 _ 0F 44. C7
        jmp     ?_0645                                  ; 54EC _ E9, FFFFFB00

?_0678: mov     ebx, edi                                ; 54F1 _ 89. FB
        jmp     ?_0670                                  ; 54F3 _ E9, FFFFFE94

?_0679: mov     eax, dword [esi]                        ; 54F8 _ 8B. 06
        mov     dword [esp+8H], 5                       ; 54FA _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 5502 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0873                     ; 550A _ C7. 04 24, 000000F6(d)
        mov     dword [esp+0CH], eax                    ; 5511 _ 89. 44 24, 0C
        call    fwrite                                  ; 5515 _ E8, FFFFFFFC(rel)
        mov     dword [esp+18H], edi                    ; 551A _ 89. 7C 24, 18
        jmp     ?_0653                                  ; 551E _ E9, FFFFFB9D

?_0680: mov     eax, dword [esi]                        ; 5523 _ 8B. 06
        mov     dword [esp+8H], 5                       ; 5525 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 552D _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0875                     ; 5535 _ C7. 04 24, 00000101(d)
        mov     dword [esp+0CH], eax                    ; 553C _ 89. 44 24, 0C
        call    fwrite                                  ; 5540 _ E8, FFFFFFFC(rel)
        mov     dword [esp+18H], edi                    ; 5545 _ 89. 7C 24, 18
        jmp     ?_0653                                  ; 5549 _ E9, FFFFFB72

?_0681: mov     eax, dword [esi]                        ; 554E _ 8B. 06
        mov     dword [esp+8H], 4                       ; 5550 _ C7. 44 24, 08, 00000004
        mov     dword [esp+4H], 1                       ; 5558 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0876                     ; 5560 _ C7. 04 24, 00000107(d)
        mov     dword [esp+0CH], eax                    ; 5567 _ 89. 44 24, 0C
        call    fwrite                                  ; 556B _ E8, FFFFFFFC(rel)
        mov     dword [esp+18H], edi                    ; 5570 _ 89. 7C 24, 18
        jmp     ?_0653                                  ; 5574 _ E9, FFFFFB47
; genxAddCountedText End of function

?_0682: ; Local function
        mov     eax, dword [esi]                        ; 5579 _ 8B. 06
        mov     dword [esp+8H], 4                       ; 557B _ C7. 44 24, 08, 00000004
        mov     dword [esp+4H], 1                       ; 5583 _ C7. 44 24, 04, 00000001
        mov     dword [esp], ?_0874                     ; 558B _ C7. 04 24, 000000FC(d)
        mov     dword [esp+0CH], eax                    ; 5592 _ 89. 44 24, 0C
        call    fwrite                                  ; 5596 _ E8, FFFFFFFC(rel)
        mov     dword [esp+18H], edi                    ; 559B _ 89. 7C 24, 18
        jmp     ?_0653                                  ; 559F _ E9, FFFFFB1C

; Filling space: 0CH
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H, 8DH, 0BFH
;       db 00H, 00H, 00H, 00H

ALIGN   16

genxAddCharacter:; Function begin
        push    edi                                     ; 55B0 _ 57
        push    esi                                     ; 55B1 _ 56
        push    ebx                                     ; 55B2 _ 53
        sub     esp, 32                                 ; 55B3 _ 83. EC, 20
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 55B6 _ 65: A1, 00000014
        mov     dword [esp+1CH], eax                    ; 55BC _ 89. 44 24, 1C
        xor     eax, eax                                ; 55C0 _ 31. C0
        mov     ebx, dword [esp+30H]                    ; 55C2 _ 8B. 5C 24, 30
        mov     eax, dword [ebx+0CH]                    ; 55C6 _ 8B. 43, 0C
        lea     edx, [eax-3H]                           ; 55C9 _ 8D. 50, FD
        cmp     edx, 1                                  ; 55CC _ 83. FA, 01
        jbe     ?_0684                                  ; 55CF _ 76, 2F
        cmp     eax, 5                                  ; 55D1 _ 83. F8, 05
        jz      ?_0685                                  ; 55D4 _ 74, 3F
        mov     dword [ebx+8H], 8                       ; 55D6 _ C7. 43, 08, 00000008
        mov     eax, 8                                  ; 55DD _ B8, 00000008
?_0683: mov     ecx, dword [esp+1CH]                    ; 55E2 _ 8B. 4C 24, 1C
; Note: Absolute memory address without relocation
        xor     ecx, dword [gs:14H]                     ; 55E6 _ 65: 33. 0D, 00000014
        jne     ?_0709                                  ; 55ED _ 0F 85, 0000030B
        add     esp, 32                                 ; 55F3 _ 83. C4, 20
        pop     ebx                                     ; 55F6 _ 5B
        pop     esi                                     ; 55F7 _ 5E
        pop     edi                                     ; 55F8 _ 5F
        ret                                             ; 55F9 _ C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0684: mov     eax, ebx                                ; 5600 _ 89. D8
        call    writeStartTag                           ; 5602 _ E8, FFFFBF49
        test    eax, eax                                ; 5607 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 5609 _ 89. 43, 08
        jnz     ?_0683                                  ; 560C _ 75, D4
        mov     dword [ebx+0CH], 5                      ; 560E _ C7. 43, 0C, 00000005
?_0685: mov     eax, dword [esp+34H]                    ; 5615 _ 8B. 44 24, 34
        test    eax, eax                                ; 5619 _ 85. C0
        js      ?_0687                                  ; 561B _ 78, 17
        cmp     dword [esp+34H], 65535                  ; 561D _ 81. 7C 24, 34, 0000FFFF
        jg      ?_0688                                  ; 5625 _ 7F, 21
        mov     eax, dword [esp+34H]                    ; 5627 _ 8B. 44 24, 34
        movsx   eax, byte [ebx+eax+10H]                 ; 562B _ 0F BE. 44 03, 10
?_0686: test    eax, eax                                ; 5630 _ 85. C0
        jnz     ?_0689                                  ; 5632 _ 75, 2C
?_0687: mov     dword [ebx+8H], 2                       ; 5634 _ C7. 43, 08, 00000002
        mov     eax, 2                                  ; 563B _ B8, 00000002
        jmp     ?_0683                                  ; 5640 _ EB, A0

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0688: xor     eax, eax                                ; 5648 _ 31. C0
        cmp     dword [esp+34H], 1114111                ; 564A _ 81. 7C 24, 34, 0010FFFF
        setle   al                                      ; 5652 _ 0F 9E. C0
        jmp     ?_0686                                  ; 5655 _ EB, D9

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0689: cmp     dword [esp+34H], 127                    ; 5660 _ 83. 7C 24, 34, 7F
        jle     ?_0694                                  ; 5665 _ 0F 8E, 000000B5
        cmp     dword [esp+34H], 2047                   ; 566B _ 81. 7C 24, 34, 000007FF
        mov     eax, dword [esp+34H]                    ; 5673 _ 8B. 44 24, 34
        jg      ?_0696                                  ; 5677 _ 0F 8F, 000000C3
        lea     esi, [esp+12H]                          ; 567D _ 8D. 74 24, 12
        sar     eax, 6                                  ; 5681 _ C1. F8, 06
        or      eax, 0FFFFFFC0H                         ; 5684 _ 83. C8, C0
        mov     byte [esp+10H], al                      ; 5687 _ 88. 44 24, 10
        movzx   eax, byte [esp+34H]                     ; 568B _ 0F B6. 44 24, 34
        and     eax, 3FH                                ; 5690 _ 83. E0, 3F
        or      eax, 0FFFFFF80H                         ; 5693 _ 83. C8, 80
        mov     byte [esp+11H], al                      ; 5696 _ 88. 44 24, 11
?_0690: cmp     dword [esp+34H], 65535                  ; 569A _ 81. 7C 24, 34, 0000FFFF
        mov     byte [esi], 0                           ; 56A2 _ C6. 06, 00
        jle     ?_0695                                  ; 56A5 _ 0F 8E, 00000087
        xor     eax, eax                                ; 56AB _ 31. C0
        cmp     dword [esp+34H], 1114111                ; 56AD _ 81. 7C 24, 34, 0010FFFF
        setle   al                                      ; 56B5 _ 0F 9E. C0
?_0691: test    eax, eax                                ; 56B8 _ 85. C0
        je      ?_0687                                  ; 56BA _ 0F 84, FFFFFF74
        cmp     dword [esp+34H], 38                     ; 56C0 _ 83. 7C 24, 34, 26
        je      ?_0704                                  ; 56C5 _ 0F 84, 000001A4
        jle     ?_0698                                  ; 56CB _ 0F 8E, 000000F6
        cmp     dword [esp+34H], 60                     ; 56D1 _ 83. 7C 24, 34, 3C
        je      ?_0706                                  ; 56D6 _ 0F 84, 000001D2
        cmp     dword [esp+34H], 62                     ; 56DC _ 83. 7C 24, 34, 3E
        jne     ?_0703                                  ; 56E1 _ 0F 85, 0000017B
        mov     eax, dword [ebx+4H]                     ; 56E7 _ 8B. 43, 04
        test    eax, eax                                ; 56EA _ 85. C0
        je      ?_0712                                  ; 56EC _ 0F 84, 00000273
        lea     edx, [esp+10H]                          ; 56F2 _ 8D. 54 24, 10
        mov     dword [esp+8H], edx                     ; 56F6 _ 89. 54 24, 08
        mov     dword [esp+4H], edx                     ; 56FA _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 56FE _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 5704 _ 89. 14 24
        call    near [eax+4H]                           ; 5707 _ FF. 50, 04
?_0692: test    eax, eax                                ; 570A _ 85. C0
        mov     dword [ebx+8H], eax                     ; 570C _ 89. 43, 08
        je      ?_0708                                  ; 570F _ 0F 84, 000001D8
?_0693: mov     dword [ebx+8H], eax                     ; 5715 _ 89. 43, 08
        jmp     ?_0683                                  ; 5718 _ E9, FFFFFEC5

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0694: movzx   eax, byte [esp+34H]                     ; 5720 _ 0F B6. 44 24, 34
        mov     byte [esp+11H], 0                       ; 5725 _ C6. 44 24, 11, 00
        lea     esi, [esp+11H]                          ; 572A _ 8D. 74 24, 11
        mov     byte [esp+10H], al                      ; 572E _ 88. 44 24, 10
?_0695: mov     eax, dword [esp+34H]                    ; 5732 _ 8B. 44 24, 34
        movsx   eax, byte [ebx+eax+10H]                 ; 5736 _ 0F BE. 44 03, 10
        jmp     ?_0691                                  ; 573B _ E9, FFFFFF78

?_0696: cmp     dword [esp+34H], 65535                  ; 5740 _ 81. 7C 24, 34, 0000FFFF
        jg      ?_0697                                  ; 5748 _ 7F, 35
        lea     esi, [esp+13H]                          ; 574A _ 8D. 74 24, 13
        sar     eax, 12                                 ; 574E _ C1. F8, 0C
        or      eax, 0FFFFFFE0H                         ; 5751 _ 83. C8, E0
        mov     byte [esp+10H], al                      ; 5754 _ 88. 44 24, 10
        mov     eax, dword [esp+34H]                    ; 5758 _ 8B. 44 24, 34
        and     eax, 0FC0H                              ; 575C _ 25, 00000FC0
        sar     eax, 6                                  ; 5761 _ C1. F8, 06
        or      eax, 0FFFFFF80H                         ; 5764 _ 83. C8, 80
        mov     byte [esp+11H], al                      ; 5767 _ 88. 44 24, 11
        movzx   eax, byte [esp+34H]                     ; 576B _ 0F B6. 44 24, 34
        and     eax, 3FH                                ; 5770 _ 83. E0, 3F
        or      eax, 0FFFFFF80H                         ; 5773 _ 83. C8, 80
        mov     byte [esp+12H], al                      ; 5776 _ 88. 44 24, 12
        jmp     ?_0690                                  ; 577A _ E9, FFFFFF1B

?_0697: lea     esi, [esp+14H]                          ; 577F _ 8D. 74 24, 14
        sar     eax, 18                                 ; 5783 _ C1. F8, 12
        or      eax, 0FFFFFFF0H                         ; 5786 _ 83. C8, F0
        mov     byte [esp+10H], al                      ; 5789 _ 88. 44 24, 10
        mov     eax, dword [esp+34H]                    ; 578D _ 8B. 44 24, 34
        and     eax, 3F000H                             ; 5791 _ 25, 0003F000
        sar     eax, 12                                 ; 5796 _ C1. F8, 0C
        or      eax, 0FFFFFF80H                         ; 5799 _ 83. C8, 80
        mov     byte [esp+11H], al                      ; 579C _ 88. 44 24, 11
        mov     eax, dword [esp+34H]                    ; 57A0 _ 8B. 44 24, 34
        and     eax, 0FC0H                              ; 57A4 _ 25, 00000FC0
        sar     eax, 6                                  ; 57A9 _ C1. F8, 06
        or      eax, 0FFFFFF80H                         ; 57AC _ 83. C8, 80
        mov     byte [esp+12H], al                      ; 57AF _ 88. 44 24, 12
        movzx   eax, byte [esp+34H]                     ; 57B3 _ 0F B6. 44 24, 34
        and     eax, 3FH                                ; 57B8 _ 83. E0, 3F
        or      eax, 0FFFFFF80H                         ; 57BB _ 83. C8, 80
        mov     byte [esp+13H], al                      ; 57BE _ 88. 44 24, 13
        jmp     ?_0690                                  ; 57C2 _ E9, FFFFFED3

?_0698: cmp     dword [esp+34H], 13                     ; 57C7 _ 83. 7C 24, 34, 0D
        jne     ?_0703                                  ; 57CC _ 0F 85, 00000090
        mov     eax, dword [ebx+4H]                     ; 57D2 _ 8B. 43, 04
        test    eax, eax                                ; 57D5 _ 85. C0
        je      ?_0710                                  ; 57D7 _ 0F 84, 00000126
        lea     edx, [esp+10H]                          ; 57DD _ 8D. 54 24, 10
        mov     dword [esp+8H], edx                     ; 57E1 _ 89. 54 24, 08
        mov     dword [esp+4H], edx                     ; 57E5 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 57E9 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 57EF _ 89. 14 24
        call    near [eax+4H]                           ; 57F2 _ FF. 50, 04
?_0699: test    eax, eax                                ; 57F5 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 57F7 _ 89. 43, 08
        jne     ?_0693                                  ; 57FA _ 0F 85, FFFFFF15
        mov     edx, ?_0873                             ; 5800 _ BA, 000000F6(d)
        mov     eax, ebx                                ; 5805 _ 89. D8
        call    sendx                                   ; 5807 _ E8, FFFFA7F4
?_0700: mov     dword [ebx+8H], 0                       ; 580C _ C7. 43, 08, 00000000
        mov     eax, esi                                ; 5813 _ 89. F0
?_0701: mov     edi, dword [ebx+4H]                     ; 5815 _ 8B. 7B, 04
        test    edi, edi                                ; 5818 _ 85. FF
        jz      ?_0702                                  ; 581A _ 74, 19
        mov     dword [esp+8H], esi                     ; 581C _ 89. 74 24, 08
        mov     dword [esp+4H], eax                     ; 5820 _ 89. 44 24, 04
        mov     eax, dword [ebx+10010H]                 ; 5824 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 582A _ 89. 04 24
        call    near [edi+4H]                           ; 582D _ FF. 57, 04
        jmp     ?_0683                                  ; 5830 _ E9, FFFFFDAD

?_0702: mov     edx, dword [ebx]                        ; 5835 _ 8B. 13
        sub     esi, eax                                ; 5837 _ 29. C6
        mov     dword [esp+4H], 1                       ; 5839 _ C7. 44 24, 04, 00000001
        mov     dword [esp+8H], esi                     ; 5841 _ 89. 74 24, 08
        mov     dword [esp], eax                        ; 5845 _ 89. 04 24
        mov     dword [esp+0CH], edx                    ; 5848 _ 89. 54 24, 0C
        call    fwrite                                  ; 584C _ E8, FFFFFFFC(rel)
        mov     edx, eax                                ; 5851 _ 89. C2
        mov     eax, 10                                 ; 5853 _ B8, 0000000A
        cmp     esi, edx                                ; 5858 _ 39. D6
        cmove   eax, edi                                ; 585A _ 0F 44. C7
        jmp     ?_0683                                  ; 585D _ E9, FFFFFD80

?_0703: mov     dword [ebx+8H], 0                       ; 5862 _ C7. 43, 08, 00000000
        lea     eax, [esp+10H]                          ; 5869 _ 8D. 44 24, 10
        jmp     ?_0701                                  ; 586D _ EB, A6

?_0704: mov     eax, dword [ebx+4H]                     ; 586F _ 8B. 43, 04
        test    eax, eax                                ; 5872 _ 85. C0
        je      ?_0711                                  ; 5874 _ 0F 84, 000000BA
        lea     edx, [esp+10H]                          ; 587A _ 8D. 54 24, 10
        mov     dword [esp+8H], edx                     ; 587E _ 89. 54 24, 08
        mov     dword [esp+4H], edx                     ; 5882 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 5886 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 588C _ 89. 14 24
        call    near [eax+4H]                           ; 588F _ FF. 50, 04
?_0705: test    eax, eax                                ; 5892 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 5894 _ 89. 43, 08
        jne     ?_0693                                  ; 5897 _ 0F 85, FFFFFE78
        mov     edx, ?_0875                             ; 589D _ BA, 00000101(d)
        mov     eax, ebx                                ; 58A2 _ 89. D8
        call    sendx                                   ; 58A4 _ E8, FFFFA757
        jmp     ?_0700                                  ; 58A9 _ E9, FFFFFF5E

?_0706: mov     eax, dword [ebx+4H]                     ; 58AE _ 8B. 43, 04
        test    eax, eax                                ; 58B1 _ 85. C0
        je      ?_0713                                  ; 58B3 _ 0F 84, 000000DD
        lea     edx, [esp+10H]                          ; 58B9 _ 8D. 54 24, 10
        mov     dword [esp+8H], edx                     ; 58BD _ 89. 54 24, 08
        mov     dword [esp+4H], edx                     ; 58C1 _ 89. 54 24, 04
        mov     edx, dword [ebx+10010H]                 ; 58C5 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 58CB _ 89. 14 24
        call    near [eax+4H]                           ; 58CE _ FF. 50, 04
?_0707: test    eax, eax                                ; 58D1 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 58D3 _ 89. 43, 08
        jne     ?_0693                                  ; 58D6 _ 0F 85, FFFFFE39
        mov     edx, ?_0874                             ; 58DC _ BA, 000000FC(d)
        mov     eax, ebx                                ; 58E1 _ 89. D8
        call    sendx                                   ; 58E3 _ E8, FFFFA718
        jmp     ?_0700                                  ; 58E8 _ E9, FFFFFF1F

?_0708: mov     edx, ?_0876                             ; 58ED _ BA, 00000107(d)
        mov     eax, ebx                                ; 58F2 _ 89. D8
        call    sendx                                   ; 58F4 _ E8, FFFFA707
        jmp     ?_0700                                  ; 58F9 _ E9, FFFFFF0E

?_0709: call    __stack_chk_fail                        ; 58FE _ E8, FFFFFFFC(rel)
?_0710: mov     eax, dword [ebx]                        ; 5903 _ 8B. 03
        mov     dword [esp+8H], 0                       ; 5905 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 1                       ; 590D _ C7. 44 24, 04, 00000001
        mov     dword [esp+0CH], eax                    ; 5915 _ 89. 44 24, 0C
        lea     eax, [esp+10H]                          ; 5919 _ 8D. 44 24, 10
        mov     dword [esp], eax                        ; 591D _ 89. 04 24
        call    fwrite                                  ; 5920 _ E8, FFFFFFFC(rel)
        cmp     eax, 1                                  ; 5925 _ 83. F8, 01
        sbb     eax, eax                                ; 5928 _ 19. C0
        not     eax                                     ; 592A _ F7. D0
        and     eax, 0AH                                ; 592C _ 83. E0, 0A
        jmp     ?_0699                                  ; 592F _ E9, FFFFFEC1

?_0711: mov     eax, dword [ebx]                        ; 5934 _ 8B. 03
        mov     dword [esp+8H], 0                       ; 5936 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 1                       ; 593E _ C7. 44 24, 04, 00000001
        mov     dword [esp+0CH], eax                    ; 5946 _ 89. 44 24, 0C
        lea     eax, [esp+10H]                          ; 594A _ 8D. 44 24, 10
        mov     dword [esp], eax                        ; 594E _ 89. 04 24
        call    fwrite                                  ; 5951 _ E8, FFFFFFFC(rel)
        cmp     eax, 1                                  ; 5956 _ 83. F8, 01
        sbb     eax, eax                                ; 5959 _ 19. C0
        not     eax                                     ; 595B _ F7. D0
        and     eax, 0AH                                ; 595D _ 83. E0, 0A
        jmp     ?_0705                                  ; 5960 _ E9, FFFFFF2D

?_0712: mov     eax, dword [ebx]                        ; 5965 _ 8B. 03
        mov     dword [esp+8H], 0                       ; 5967 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 1                       ; 596F _ C7. 44 24, 04, 00000001
        mov     dword [esp+0CH], eax                    ; 5977 _ 89. 44 24, 0C
        lea     eax, [esp+10H]                          ; 597B _ 8D. 44 24, 10
        mov     dword [esp], eax                        ; 597F _ 89. 04 24
        call    fwrite                                  ; 5982 _ E8, FFFFFFFC(rel)
        cmp     eax, 1                                  ; 5987 _ 83. F8, 01
        sbb     eax, eax                                ; 598A _ 19. C0
        not     eax                                     ; 598C _ F7. D0
        and     eax, 0AH                                ; 598E _ 83. E0, 0A
        jmp     ?_0692                                  ; 5991 _ E9, FFFFFD74
; genxAddCharacter End of function

?_0713: ; Local function
        mov     eax, dword [ebx]                        ; 5996 _ 8B. 03
        mov     dword [esp+8H], 0                       ; 5998 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 1                       ; 59A0 _ C7. 44 24, 04, 00000001
        mov     dword [esp+0CH], eax                    ; 59A8 _ 89. 44 24, 0C
        lea     eax, [esp+10H]                          ; 59AC _ 8D. 44 24, 10
        mov     dword [esp], eax                        ; 59B0 _ 89. 04 24
        call    fwrite                                  ; 59B3 _ E8, FFFFFFFC(rel)
        cmp     eax, 1                                  ; 59B8 _ 83. F8, 01
        sbb     eax, eax                                ; 59BB _ 19. C0
        not     eax                                     ; 59BD _ F7. D0
        and     eax, 0AH                                ; 59BF _ 83. E0, 0A
        jmp     ?_0707                                  ; 59C2 _ E9, FFFFFF0A

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16

genxEndDocument:; Function begin
        push    ebx                                     ; 59D0 _ 53
        sub     esp, 24                                 ; 59D1 _ 83. EC, 18
        mov     ebx, dword [esp+20H]                    ; 59D4 _ 8B. 5C 24, 20
        cmp     dword [ebx+0CH], 2                      ; 59D8 _ 83. 7B, 0C, 02
        jz      ?_0715                                  ; 59DC _ 74, 12
        mov     dword [ebx+8H], 8                       ; 59DE _ C7. 43, 08, 00000008
        mov     eax, 8                                  ; 59E5 _ B8, 00000008
?_0714: add     esp, 24                                 ; 59EA _ 83. C4, 18
        pop     ebx                                     ; 59ED _ 5B
        ret                                             ; 59EE _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0715: mov     eax, dword [ebx]                        ; 59F0 _ 8B. 03
        test    eax, eax                                ; 59F2 _ 85. C0
        jz      ?_0717                                  ; 59F4 _ 74, 1A
        mov     dword [esp], eax                        ; 59F6 _ 89. 04 24
        call    fflush                                  ; 59F9 _ E8, FFFFFFFC(rel)
?_0716: mov     dword [ebx+0CH], 0                      ; 59FE _ C7. 43, 0C, 00000000
        add     esp, 24                                 ; 5A05 _ 83. C4, 18
        xor     eax, eax                                ; 5A08 _ 31. C0
        pop     ebx                                     ; 5A0A _ 5B
        ret                                             ; 5A0B _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0717: mov     edx, dword [ebx+10010H]                 ; 5A10 _ 8B. 93, 00010010
        mov     eax, dword [ebx+4H]                     ; 5A16 _ 8B. 43, 04
        mov     dword [esp], edx                        ; 5A19 _ 89. 14 24
        call    near [eax+8H]                           ; 5A1C _ FF. 50, 08
        test    eax, eax                                ; 5A1F _ 85. C0
        mov     dword [ebx+8H], eax                     ; 5A21 _ 89. 43, 08
        jz      ?_0716                                  ; 5A24 _ 74, D8
        jmp     ?_0714                                  ; 5A26 _ EB, C2
; genxEndDocument End of function

        nop                                             ; 5A28 _ 90
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8

genxComment:; Function begin
        push    ebp                                     ; 5A30 _ 55
        push    edi                                     ; 5A31 _ 57
        push    esi                                     ; 5A32 _ 56
        push    ebx                                     ; 5A33 _ 53
        sub     esp, 28                                 ; 5A34 _ 83. EC, 1C
        mov     ebx, dword [esp+30H]                    ; 5A37 _ 8B. 5C 24, 30
        mov     eax, dword [ebx+0CH]                    ; 5A3B _ 8B. 43, 0C
        test    eax, eax                                ; 5A3E _ 85. C0
        jnz     ?_0719                                  ; 5A40 _ 75, 1E
        mov     dword [ebx+8H], 8                       ; 5A42 _ C7. 43, 08, 00000008
        mov     esi, 8                                  ; 5A49 _ BE, 00000008
?_0718: add     esp, 28                                 ; 5A4E _ 83. C4, 1C
        mov     eax, esi                                ; 5A51 _ 89. F0
        pop     ebx                                     ; 5A53 _ 5B
        pop     esi                                     ; 5A54 _ 5E
        pop     edi                                     ; 5A55 _ 5F
        pop     ebp                                     ; 5A56 _ 5D
        ret                                             ; 5A57 _ C3

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0719: mov     edx, dword [esp+34H]                    ; 5A60 _ 8B. 54 24, 34
        mov     dword [esp+0CH], eax                    ; 5A64 _ 89. 44 24, 0C
        jmp     ?_0722                                  ; 5A68 _ EB, 13

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0720: movsx   ecx, byte [ebx+ecx+10H]                 ; 5A70 _ 0F BE. 4C 0B, 10
?_0721: test    ecx, ecx                                ; 5A75 _ 85. C9
        je      ?_0752                                  ; 5A77 _ 0F 84, 00000374
?_0722: movzx   ecx, byte [edx]                         ; 5A7D _ 0F B6. 0A
        test    cl, cl                                  ; 5A80 _ 84. C9
        je      ?_0734                                  ; 5A82 _ 0F 84, 00000160
        js      ?_0724                                  ; 5A88 _ 78, 1E
        add     edx, 1                                  ; 5A8A _ 83. C2, 01
?_0723: cmp     ecx, 65535                              ; 5A8D _ 81. F9, 0000FFFF
        jle     ?_0720                                  ; 5A93 _ 7E, DB
        cmp     ecx, 1114111                            ; 5A95 _ 81. F9, 0010FFFF
        setle   cl                                      ; 5A9B _ 0F 9E. C1
        movzx   ecx, cl                                 ; 5A9E _ 0F B6. C9
        jmp     ?_0721                                  ; 5AA1 _ EB, D2

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0724: cmp     cl, -63                                 ; 5AA8 _ 80. F9, C1
        jbe     ?_0726                                  ; 5AAB _ 76, 63
        cmp     cl, -33                                 ; 5AAD _ 80. F9, DF
        ja      ?_0725                                  ; 5AB0 _ 77, 26
        mov     esi, ecx                                ; 5AB2 _ 89. CE
        movzx   ecx, byte [edx+1H]                      ; 5AB4 _ 0F B6. 4A, 01
        and     esi, 1FH                                ; 5AB8 _ 83. E6, 1F
        shl     esi, 6                                  ; 5ABB _ C1. E6, 06
        lea     edi, [ecx-80H]                          ; 5ABE _ 8D. 79, 80
        mov     eax, edi                                ; 5AC1 _ 89. F8
        cmp     al, 63                                  ; 5AC3 _ 3C, 3F
        ja      ?_0726                                  ; 5AC5 _ 77, 49
        and     ecx, 3FH                                ; 5AC7 _ 83. E1, 3F
        add     edx, 2                                  ; 5ACA _ 83. C2, 02
        or      ecx, esi                                ; 5ACD _ 09. F1
        jmp     ?_0723                                  ; 5ACF _ EB, BC

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0725: cmp     cl, -17                                 ; 5AD8 _ 80. F9, EF
        ja      ?_0732                                  ; 5ADB _ 0F 87, 0000008F
        mov     ebp, ecx                                ; 5AE1 _ 89. CD
        movzx   esi, byte [edx+1H]                      ; 5AE3 _ 0F B6. 72, 01
        shl     ebp, 12                                 ; 5AE7 _ C1. E5, 0C
        cmp     ecx, 224                                ; 5AEA _ 81. F9, 000000E0
        movzx   ebp, bp                                 ; 5AF0 _ 0F B7. ED
        jz      ?_0728                                  ; 5AF3 _ 74, 33
        cmp     ecx, 236                                ; 5AF5 _ 81. F9, 000000EC
        jle     ?_0729                                  ; 5AFB _ 7E, 34
        cmp     ecx, 237                                ; 5AFD _ 81. F9, 000000ED
        jnz     ?_0730                                  ; 5B03 _ 75, 35
        lea     ecx, [esi-80H]                          ; 5B05 _ 8D. 4E, 80
        cmp     cl, 31                                  ; 5B08 _ 80. F9, 1F
        jbe     ?_0731                                  ; 5B0B _ 76, 3D
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0726: mov     esi, 1                                  ; 5B10 _ BE, 00000001
?_0727: mov     dword [ebx+8H], esi                     ; 5B15 _ 89. 73, 08
        add     esp, 28                                 ; 5B18 _ 83. C4, 1C
        mov     eax, esi                                ; 5B1B _ 89. F0
        pop     ebx                                     ; 5B1D _ 5B
        pop     esi                                     ; 5B1E _ 5E
        pop     edi                                     ; 5B1F _ 5F
        pop     ebp                                     ; 5B20 _ 5D
        ret                                             ; 5B21 _ C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0728: lea     edi, [esi+60H]                          ; 5B28 _ 8D. 7E, 60
        mov     eax, edi                                ; 5B2B _ 89. F8
        cmp     al, 31                                  ; 5B2D _ 3C, 1F
        ja      ?_0726                                  ; 5B2F _ 77, DF
?_0729: lea     edi, [esi-80H]                          ; 5B31 _ 8D. 7E, 80
        mov     eax, edi                                ; 5B34 _ 89. F8
        cmp     al, 63                                  ; 5B36 _ 3C, 3F
        ja      ?_0726                                  ; 5B38 _ 77, D6
?_0730: cmp     ecx, 237                                ; 5B3A _ 81. F9, 000000ED
        jle     ?_0731                                  ; 5B40 _ 7E, 08
        lea     ecx, [esi-80H]                          ; 5B42 _ 8D. 4E, 80
        cmp     cl, 63                                  ; 5B45 _ 80. F9, 3F
        ja      ?_0726                                  ; 5B48 _ 77, C6
?_0731: movzx   ecx, byte [edx+2H]                      ; 5B4A _ 0F B6. 4A, 02
        and     esi, 3FH                                ; 5B4E _ 83. E6, 3F
        shl     esi, 6                                  ; 5B51 _ C1. E6, 06
        lea     edi, [ecx-80H]                          ; 5B54 _ 8D. 79, 80
        mov     eax, edi                                ; 5B57 _ 89. F8
        cmp     al, 63                                  ; 5B59 _ 3C, 3F
        ja      ?_0726                                  ; 5B5B _ 77, B3
        and     ecx, 3FH                                ; 5B5D _ 83. E1, 3F
        add     edx, 3                                  ; 5B60 _ 83. C2, 03
        or      ecx, ebp                                ; 5B63 _ 09. E9
        or      ecx, esi                                ; 5B65 _ 09. F1
        jmp     ?_0723                                  ; 5B67 _ E9, FFFFFF21

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0732: cmp     cl, -12                                 ; 5B70 _ 80. F9, F4
        ja      ?_0726                                  ; 5B73 _ 77, 9B
        movzx   esi, cl                                 ; 5B75 _ 0F B6. F1
        and     ecx, 07H                                ; 5B78 _ 83. E1, 07
        shl     ecx, 18                                 ; 5B7B _ C1. E1, 12
        cmp     esi, 240                                ; 5B7E _ 81. FE, 000000F0
        je      ?_0738                                  ; 5B84 _ 0F 84, 000000B6
        cmp     esi, 244                                ; 5B8A _ 81. FE, 000000F4
        movzx   esi, byte [edx+1H]                      ; 5B90 _ 0F B6. 72, 01
        jne     ?_0739                                  ; 5B94 _ 0F 85, 000000B7
        lea     edi, [esi-80H]                          ; 5B9A _ 8D. 7E, 80
        mov     eax, edi                                ; 5B9D _ 89. F8
        cmp     al, 15                                  ; 5B9F _ 3C, 0F
        ja      ?_0726                                  ; 5BA1 _ 0F 87, FFFFFF69
?_0733: movzx   edi, byte [edx+2H]                      ; 5BA7 _ 0F B6. 7A, 02
        and     esi, 3FH                                ; 5BAB _ 83. E6, 3F
        shl     esi, 12                                 ; 5BAE _ C1. E6, 0C
        lea     ebp, [edi-80H]                          ; 5BB1 _ 8D. 6F, 80
        mov     eax, ebp                                ; 5BB4 _ 89. E8
        cmp     al, 63                                  ; 5BB6 _ 3C, 3F
        ja      ?_0726                                  ; 5BB8 _ 0F 87, FFFFFF52
        movzx   ebp, byte [edx+3H]                      ; 5BBE _ 0F B6. 6A, 03
        and     edi, 3FH                                ; 5BC2 _ 83. E7, 3F
        shl     edi, 6                                  ; 5BC5 _ C1. E7, 06
        lea     eax, [ebp-80H]                          ; 5BC8 _ 8D. 45, 80
        cmp     al, 63                                  ; 5BCB _ 3C, 3F
        ja      ?_0726                                  ; 5BCD _ 0F 87, FFFFFF3D
        or      ecx, edi                                ; 5BD3 _ 09. F9
        and     ebp, 3FH                                ; 5BD5 _ 83. E5, 3F
        add     edx, 4                                  ; 5BD8 _ 83. C2, 04
        or      ecx, ebp                                ; 5BDB _ 09. E9
        or      ecx, esi                                ; 5BDD _ 09. F1
        jmp     ?_0723                                  ; 5BDF _ E9, FFFFFEA9

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0734: mov     edi, dword [esp+34H]                    ; 5BE8 _ 8B. 7C 24, 34
        mov     dword [ebx+8H], 0                       ; 5BEC _ C7. 43, 08, 00000000
        mov     eax, dword [esp+0CH]                    ; 5BF3 _ 8B. 44 24, 0C
        movzx   edx, byte [edi]                         ; 5BF7 _ 0F B6. 17
        cmp     dl, 45                                  ; 5BFA _ 80. FA, 2D
        jz      ?_0737                                  ; 5BFD _ 74, 2D
        test    dl, dl                                  ; 5BFF _ 84. D2
        jz      ?_0740                                  ; 5C01 _ 74, 65
        lea     edx, [edi+1H]                           ; 5C03 _ 8D. 57, 01
        jmp     ?_0736                                  ; 5C06 _ EB, 0B

; Filling space: 8H
; Filler type: NOP
;       db 90H, 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   16
?_0735: add     edx, 1                                  ; 5C10 _ 83. C2, 01
?_0736: movzx   ecx, byte [edx]                         ; 5C13 _ 0F B6. 0A
        test    cl, cl                                  ; 5C16 _ 84. C9
        jz      ?_0740                                  ; 5C18 _ 74, 4E
        cmp     cl, 45                                  ; 5C1A _ 80. F9, 2D
        jnz     ?_0735                                  ; 5C1D _ 75, F1
        movzx   ecx, byte [edx+1H]                      ; 5C1F _ 0F B6. 4A, 01
        test    cl, cl                                  ; 5C23 _ 84. C9
        jz      ?_0737                                  ; 5C25 _ 74, 05
        cmp     cl, 45                                  ; 5C27 _ 80. F9, 2D
        jnz     ?_0735                                  ; 5C2A _ 75, E4
?_0737: mov     dword [ebx+8H], 12                      ; 5C2C _ C7. 43, 08, 0000000C
        mov     esi, 12                                 ; 5C33 _ BE, 0000000C
        jmp     ?_0718                                  ; 5C38 _ E9, FFFFFE11

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0738: movzx   esi, byte [edx+1H]                      ; 5C40 _ 0F B6. 72, 01
        lea     edi, [esi+70H]                          ; 5C44 _ 8D. 7E, 70
        mov     eax, edi                                ; 5C47 _ 89. F8
        cmp     al, 47                                  ; 5C49 _ 3C, 2F
        ja      ?_0726                                  ; 5C4B _ 0F 87, FFFFFEBF
?_0739: lea     edi, [esi-80H]                          ; 5C51 _ 8D. 7E, 80
        mov     eax, edi                                ; 5C54 _ 89. F8
        cmp     al, 63                                  ; 5C56 _ 3C, 3F
        jbe     ?_0733                                  ; 5C58 _ 0F 86, FFFFFF49
        jmp     ?_0726                                  ; 5C5E _ E9, FFFFFEAD

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0740: lea     edx, [eax-3H]                           ; 5C68 _ 8D. 50, FD
        cmp     edx, 1                                  ; 5C6B _ 83. FA, 01
        jbe     ?_0746                                  ; 5C6E _ 0F 86, 000000CE
        cmp     eax, 2                                  ; 5C74 _ 83. F8, 02
        je      ?_0747                                  ; 5C77 _ 0F 84, 000000E5
?_0741: mov     edi, dword [ebx+4H]                     ; 5C7D _ 8B. 7B, 04
        test    edi, edi                                ; 5C80 _ 85. FF
        je      ?_0745                                  ; 5C82 _ 0F 84, 00000098
        mov     dword [esp+4H], ?_0878                  ; 5C88 _ C7. 44 24, 04, 0000010E(d)
        mov     eax, dword [ebx+10010H]                 ; 5C90 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 5C96 _ 89. 04 24
        call    near [edi]                              ; 5C99 _ FF. 17
        mov     esi, eax                                ; 5C9B _ 89. C6
?_0742: test    esi, esi                                ; 5C9D _ 85. F6
        mov     dword [ebx+8H], esi                     ; 5C9F _ 89. 73, 08
        jne     ?_0718                                  ; 5CA2 _ 0F 85, FFFFFDA6
        mov     eax, dword [ebx+4H]                     ; 5CA8 _ 8B. 43, 04
        test    eax, eax                                ; 5CAB _ 85. C0
        je      ?_0749                                  ; 5CAD _ 0F 84, 000000DB
        mov     edi, dword [esp+34H]                    ; 5CB3 _ 8B. 7C 24, 34
        mov     dword [esp+4H], edi                     ; 5CB7 _ 89. 7C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 5CBB _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 5CC1 _ 89. 14 24
        call    near [eax]                              ; 5CC4 _ FF. 10
        mov     esi, eax                                ; 5CC6 _ 89. C6
?_0743: test    esi, esi                                ; 5CC8 _ 85. F6
        mov     dword [ebx+8H], esi                     ; 5CCA _ 89. 73, 08
        jne     ?_0718                                  ; 5CCD _ 0F 85, FFFFFD7B
        mov     eax, dword [ebx+4H]                     ; 5CD3 _ 8B. 43, 04
        test    eax, eax                                ; 5CD6 _ 85. C0
        je      ?_0750                                  ; 5CD8 _ 0F 84, 000000D2
        mov     dword [esp+4H], ?_0879                  ; 5CDE _ C7. 44 24, 04, 00000113(d)
        mov     edx, dword [ebx+10010H]                 ; 5CE6 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 5CEC _ 89. 14 24
        call    near [eax]                              ; 5CEF _ FF. 10
        mov     esi, eax                                ; 5CF1 _ 89. C6
?_0744: test    esi, esi                                ; 5CF3 _ 85. F6
        mov     dword [ebx+8H], esi                     ; 5CF5 _ 89. 73, 08
        jne     ?_0718                                  ; 5CF8 _ 0F 85, FFFFFD50
        cmp     dword [ebx+0CH], 1                      ; 5CFE _ 83. 7B, 0C, 01
        jne     ?_0718                                  ; 5D02 _ 0F 85, FFFFFD46
        mov     edx, ?_0877                             ; 5D08 _ BA, 0000010C(d)
        mov     eax, ebx                                ; 5D0D _ 89. D8
        call    sendx                                   ; 5D0F _ E8, FFFFA2EC
        mov     dword [ebx+8H], eax                     ; 5D14 _ 89. 43, 08
        mov     esi, eax                                ; 5D17 _ 89. C6
        jmp     ?_0718                                  ; 5D19 _ E9, FFFFFD30

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_0745: mov     eax, dword [ebx]                        ; 5D20 _ 8B. 03
        mov     dword [esp], ?_0878                     ; 5D22 _ C7. 04 24, 0000010E(d)
        mov     esi, 10                                 ; 5D29 _ BE, 0000000A
        mov     dword [esp+4H], eax                     ; 5D2E _ 89. 44 24, 04
        call    fputs                                   ; 5D32 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 5D37 _ 83. F8, FF
        cmovne  esi, edi                                ; 5D3A _ 0F 45. F7
        jmp     ?_0742                                  ; 5D3D _ E9, FFFFFF5B

?_0746: mov     eax, ebx                                ; 5D42 _ 89. D8
        call    writeStartTag                           ; 5D44 _ E8, FFFFB807
        test    eax, eax                                ; 5D49 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 5D4B _ 89. 43, 08
        mov     esi, eax                                ; 5D4E _ 89. C6
        jne     ?_0718                                  ; 5D50 _ 0F 85, FFFFFCF8
        mov     dword [ebx+0CH], 5                      ; 5D56 _ C7. 43, 0C, 00000005
        jmp     ?_0741                                  ; 5D5D _ E9, FFFFFF1B

?_0747: mov     edi, dword [ebx+4H]                     ; 5D62 _ 8B. 7B, 04
        test    edi, edi                                ; 5D65 _ 85. FF
        jz      ?_0751                                  ; 5D67 _ 74, 69
        mov     dword [esp+4H], ?_0877                  ; 5D69 _ C7. 44 24, 04, 0000010C(d)
        mov     eax, dword [ebx+10010H]                 ; 5D71 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 5D77 _ 89. 04 24
        call    near [edi]                              ; 5D7A _ FF. 17
        mov     esi, eax                                ; 5D7C _ 89. C6
?_0748: test    esi, esi                                ; 5D7E _ 85. F6
        mov     dword [ebx+8H], esi                     ; 5D80 _ 89. 73, 08
        je      ?_0741                                  ; 5D83 _ 0F 84, FFFFFEF4
        jmp     ?_0718                                  ; 5D89 _ E9, FFFFFCC0

?_0749: mov     eax, dword [ebx]                        ; 5D8E _ 8B. 03
        mov     dword [esp+4H], eax                     ; 5D90 _ 89. 44 24, 04
        mov     eax, dword [esp+34H]                    ; 5D94 _ 8B. 44 24, 34
        mov     dword [esp], eax                        ; 5D98 _ 89. 04 24
        call    fputs                                   ; 5D9B _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 5DA0 _ 83. F8, FF
        mov     eax, 10                                 ; 5DA3 _ B8, 0000000A
        cmove   esi, eax                                ; 5DA8 _ 0F 44. F0
        jmp     ?_0743                                  ; 5DAB _ E9, FFFFFF18

?_0750: mov     eax, dword [ebx]                        ; 5DB0 _ 8B. 03
        mov     dword [esp], ?_0879                     ; 5DB2 _ C7. 04 24, 00000113(d)
        mov     dword [esp+4H], eax                     ; 5DB9 _ 89. 44 24, 04
        call    fputs                                   ; 5DBD _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 5DC2 _ 83. F8, FF
        mov     eax, 10                                 ; 5DC5 _ B8, 0000000A
        cmove   esi, eax                                ; 5DCA _ 0F 44. F0
        jmp     ?_0744                                  ; 5DCD _ E9, FFFFFF21

?_0751: mov     eax, dword [ebx]                        ; 5DD2 _ 8B. 03
        mov     dword [esp], ?_0877                     ; 5DD4 _ C7. 04 24, 0000010C(d)
        mov     esi, 10                                 ; 5DDB _ BE, 0000000A
        mov     dword [esp+4H], eax                     ; 5DE0 _ 89. 44 24, 04
        call    fputs                                   ; 5DE4 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 5DE9 _ 83. F8, FF
        cmovne  esi, edi                                ; 5DEC _ 0F 45. F7
        jmp     ?_0748                                  ; 5DEF _ EB, 8D
; genxComment End of function

?_0752: ; Local function
        mov     esi, 2                                  ; 5DF1 _ BE, 00000002
        jmp     ?_0727                                  ; 5DF6 _ E9, FFFFFD1A

        nop                                             ; 5DFB _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8

genxPI: ; Function begin
        push    ebp                                     ; 5E00 _ 55
        push    edi                                     ; 5E01 _ 57
        push    esi                                     ; 5E02 _ 56
        push    ebx                                     ; 5E03 _ 53
        sub     esp, 44                                 ; 5E04 _ 83. EC, 2C
        mov     ebx, dword [esp+40H]                    ; 5E07 _ 8B. 5C 24, 40
        mov     ecx, dword [esp+44H]                    ; 5E0B _ 8B. 4C 24, 44
        mov     eax, dword [ebx+0CH]                    ; 5E0F _ 8B. 43, 0C
        test    eax, eax                                ; 5E12 _ 85. C0
        jnz     ?_0756                                  ; 5E14 _ 75, 27
        mov     dword [ebx+8H], 8                       ; 5E16 _ C7. 43, 08, 00000008
        mov     esi, 8                                  ; 5E1D _ BE, 00000008
?_0753: add     esp, 44                                 ; 5E22 _ 83. C4, 2C
        mov     eax, esi                                ; 5E25 _ 89. F0
        pop     ebx                                     ; 5E27 _ 5B
        pop     esi                                     ; 5E28 _ 5E
        pop     edi                                     ; 5E29 _ 5F
        pop     ebp                                     ; 5E2A _ 5D
        ret                                             ; 5E2B _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0754: movsx   eax, byte [ebx+edx+10H]                 ; 5E30 _ 0F BE. 44 13, 10
?_0755: test    eax, eax                                ; 5E35 _ 85. C0
        je      ?_0794                                  ; 5E37 _ 0F 84, 000004A4
?_0756: movzx   edx, byte [ecx]                         ; 5E3D _ 0F B6. 11
        test    dl, dl                                  ; 5E40 _ 84. D2
        je      ?_0768                                  ; 5E42 _ 0F 84, 00000168
        js      ?_0758                                  ; 5E48 _ 78, 1E
        add     ecx, 1                                  ; 5E4A _ 83. C1, 01
?_0757: cmp     edx, 65535                              ; 5E4D _ 81. FA, 0000FFFF
        jle     ?_0754                                  ; 5E53 _ 7E, DB
        xor     eax, eax                                ; 5E55 _ 31. C0
        cmp     edx, 1114111                            ; 5E57 _ 81. FA, 0010FFFF
        setle   al                                      ; 5E5D _ 0F 9E. C0
        jmp     ?_0755                                  ; 5E60 _ EB, D3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0758: cmp     dl, -63                                 ; 5E68 _ 80. FA, C1
        jbe     ?_0762                                  ; 5E6B _ 0F 86, 000000DF
        cmp     dl, -33                                 ; 5E71 _ 80. FA, DF
        ja      ?_0759                                  ; 5E74 _ 77, 2A
        mov     eax, edx                                ; 5E76 _ 89. D0
        movzx   edx, byte [ecx+1H]                      ; 5E78 _ 0F B6. 51, 01
        and     eax, 1FH                                ; 5E7C _ 83. E0, 1F
        mov     edi, eax                                ; 5E7F _ 89. C7
        shl     edi, 6                                  ; 5E81 _ C1. E7, 06
        lea     esi, [edx-80H]                          ; 5E84 _ 8D. 72, 80
        mov     eax, esi                                ; 5E87 _ 89. F0
        cmp     al, 63                                  ; 5E89 _ 3C, 3F
        ja      ?_0762                                  ; 5E8B _ 0F 87, 000000BF
        and     edx, 3FH                                ; 5E91 _ 83. E2, 3F
        add     ecx, 2                                  ; 5E94 _ 83. C1, 02
        or      edx, edi                                ; 5E97 _ 09. FA
        jmp     ?_0757                                  ; 5E99 _ EB, B2

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0759: cmp     dl, -17                                 ; 5EA0 _ 80. FA, EF
        jbe     ?_0761                                  ; 5EA3 _ 76, 7B
        cmp     dl, -12                                 ; 5EA5 _ 80. FA, F4
        ja      ?_0762                                  ; 5EA8 _ 0F 87, 000000A2
        mov     edi, edx                                ; 5EAE _ 89. D7
        movzx   eax, dl                                 ; 5EB0 _ 0F B6. C2
        and     edi, 07H                                ; 5EB3 _ 83. E7, 07
        mov     dword [esp+0CH], edi                    ; 5EB6 _ 89. 7C 24, 0C
        shl     dword [esp+0CH], 18                     ; 5EBA _ C1. 64 24, 0C, 12
        cmp     eax, 240                                ; 5EBF _ 3D, 000000F0
        je      ?_0772                                  ; 5EC4 _ 0F 84, 00000156
        cmp     eax, 244                                ; 5ECA _ 3D, 000000F4
        movzx   eax, byte [ecx+1H]                      ; 5ECF _ 0F B6. 41, 01
        jne     ?_0773                                  ; 5ED3 _ 0F 85, 00000159
        lea     esi, [eax-80H]                          ; 5ED9 _ 8D. 70, 80
        mov     edx, esi                                ; 5EDC _ 89. F2
        cmp     dl, 15                                  ; 5EDE _ 80. FA, 0F
        ja      ?_0762                                  ; 5EE1 _ 77, 6D
?_0760: movzx   esi, byte [ecx+2H]                      ; 5EE3 _ 0F B6. 71, 02
        and     eax, 3FH                                ; 5EE7 _ 83. E0, 3F
        shl     eax, 12                                 ; 5EEA _ C1. E0, 0C
        lea     edi, [esi-80H]                          ; 5EED _ 8D. 7E, 80
        mov     edx, edi                                ; 5EF0 _ 89. FA
        cmp     dl, 63                                  ; 5EF2 _ 80. FA, 3F
        ja      ?_0762                                  ; 5EF5 _ 77, 59
        movzx   edi, byte [ecx+3H]                      ; 5EF7 _ 0F B6. 79, 03
        and     esi, 3FH                                ; 5EFB _ 83. E6, 3F
        shl     esi, 6                                  ; 5EFE _ C1. E6, 06
        lea     ebp, [edi-80H]                          ; 5F01 _ 8D. 6F, 80
        mov     edx, ebp                                ; 5F04 _ 89. EA
        cmp     dl, 63                                  ; 5F06 _ 80. FA, 3F
        ja      ?_0762                                  ; 5F09 _ 77, 45
        mov     edx, dword [esp+0CH]                    ; 5F0B _ 8B. 54 24, 0C
        and     edi, 3FH                                ; 5F0F _ 83. E7, 3F
        add     ecx, 4                                  ; 5F12 _ 83. C1, 04
        or      edx, esi                                ; 5F15 _ 09. F2
        or      edx, edi                                ; 5F17 _ 09. FA
        or      edx, eax                                ; 5F19 _ 09. C2
        jmp     ?_0757                                  ; 5F1B _ E9, FFFFFF2D

?_0761: mov     esi, edx                                ; 5F20 _ 89. D6
        movzx   ebp, byte [ecx+1H]                      ; 5F22 _ 0F B6. 69, 01
        shl     esi, 12                                 ; 5F26 _ C1. E6, 0C
        cmp     edx, 224                                ; 5F29 _ 81. FA, 000000E0
        movzx   esi, si                                 ; 5F2F _ 0F B7. F6
        jz      ?_0764                                  ; 5F32 _ 74, 34
        cmp     edx, 236                                ; 5F34 _ 81. FA, 000000EC
        jle     ?_0765                                  ; 5F3A _ 7E, 35
        cmp     edx, 237                                ; 5F3C _ 81. FA, 000000ED
        jnz     ?_0766                                  ; 5F42 _ 75, 36
        lea     edx, [ebp-80H]                          ; 5F44 _ 8D. 55, 80
        cmp     dl, 31                                  ; 5F47 _ 80. FA, 1F
        jbe     ?_0767                                  ; 5F4A _ 76, 3E
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0762: mov     esi, 1                                  ; 5F50 _ BE, 00000001
?_0763: mov     dword [ebx+8H], esi                     ; 5F55 _ 89. 73, 08
        add     esp, 44                                 ; 5F58 _ 83. C4, 2C
        mov     eax, esi                                ; 5F5B _ 89. F0
        pop     ebx                                     ; 5F5D _ 5B
        pop     esi                                     ; 5F5E _ 5E
        pop     edi                                     ; 5F5F _ 5F
        pop     ebp                                     ; 5F60 _ 5D
        ret                                             ; 5F61 _ C3

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0764: lea     edi, [ebp+60H]                          ; 5F68 _ 8D. 7D, 60
        mov     eax, edi                                ; 5F6B _ 89. F8
        cmp     al, 31                                  ; 5F6D _ 3C, 1F
        ja      ?_0762                                  ; 5F6F _ 77, DF
?_0765: lea     edi, [ebp-80H]                          ; 5F71 _ 8D. 7D, 80
        mov     eax, edi                                ; 5F74 _ 89. F8
        cmp     al, 63                                  ; 5F76 _ 3C, 3F
        ja      ?_0762                                  ; 5F78 _ 77, D6
?_0766: cmp     edx, 237                                ; 5F7A _ 81. FA, 000000ED
        jle     ?_0767                                  ; 5F80 _ 7E, 08
        lea     edx, [ebp-80H]                          ; 5F82 _ 8D. 55, 80
        cmp     dl, 63                                  ; 5F85 _ 80. FA, 3F
        ja      ?_0762                                  ; 5F88 _ 77, C6
?_0767: movzx   edx, byte [ecx+2H]                      ; 5F8A _ 0F B6. 51, 02
        and     ebp, 3FH                                ; 5F8E _ 83. E5, 3F
        shl     ebp, 6                                  ; 5F91 _ C1. E5, 06
        lea     edi, [edx-80H]                          ; 5F94 _ 8D. 7A, 80
        mov     eax, edi                                ; 5F97 _ 89. F8
        cmp     al, 63                                  ; 5F99 _ 3C, 3F
        ja      ?_0762                                  ; 5F9B _ 77, B3
        and     edx, 3FH                                ; 5F9D _ 83. E2, 3F
        add     ecx, 3                                  ; 5FA0 _ 83. C1, 03
        or      edx, esi                                ; 5FA3 _ 09. F2
        or      edx, ebp                                ; 5FA5 _ 09. EA
        jmp     ?_0757                                  ; 5FA7 _ E9, FFFFFEA1

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0768: mov     eax, dword [esp+44H]                    ; 5FB0 _ 8B. 44 24, 44
        mov     dword [ebx+8H], 0                       ; 5FB4 _ C7. 43, 08, 00000000
        test    eax, eax                                ; 5FBB _ 85. C0
        mov     dword [esp+1CH], eax                    ; 5FBD _ 89. 44 24, 1C
        jz      ?_0771                                  ; 5FC1 _ 74, 4D
        cmp     byte [eax], 0                           ; 5FC3 _ 80. 38, 00
        jz      ?_0771                                  ; 5FC6 _ 74, 48
        lea     esi, [esp+1CH]                          ; 5FC8 _ 8D. 74 24, 1C
        mov     dword [esp], esi                        ; 5FCC _ 89. 34 24
        call    genxNextUnicodeChar                     ; 5FCF _ E8, FFFFFFFC(rel)
        cmp     eax, 65535                              ; 5FD4 _ 3D, 0000FFFF
        ja      ?_0774                                  ; 5FD9 _ 77, 6A
        test    byte [ebx+eax+10H], 02H                 ; 5FDB _ F6. 44 03, 10, 02
        jnz     ?_0770                                  ; 5FE0 _ 75, 0D
        jmp     ?_0774                                  ; 5FE2 _ EB, 61

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0769: test    byte [ebx+eax+10H], 04H                 ; 5FE8 _ F6. 44 03, 10, 04
        jz      ?_0771                                  ; 5FED _ 74, 21
?_0770: mov     eax, dword [esp+1CH]                    ; 5FEF _ 8B. 44 24, 1C
        cmp     byte [eax], 0                           ; 5FF3 _ 80. 38, 00
        jz      ?_0775                                  ; 5FF6 _ 74, 5C
        mov     dword [esp], esi                        ; 5FF8 _ 89. 34 24
        call    genxNextUnicodeChar                     ; 5FFB _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 6000 _ 83. F8, FF
        je      ?_0762                                  ; 6003 _ 0F 84, FFFFFF47
        cmp     eax, 65535                              ; 6009 _ 3D, 0000FFFF
        jbe     ?_0769                                  ; 600E _ 76, D8
?_0771: mov     esi, 3                                  ; 6010 _ BE, 00000003
        jmp     ?_0763                                  ; 6015 _ E9, FFFFFF3B

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_0772: movzx   eax, byte [ecx+1H]                      ; 6020 _ 0F B6. 41, 01
        lea     esi, [eax+70H]                          ; 6024 _ 8D. 70, 70
        mov     edx, esi                                ; 6027 _ 89. F2
        cmp     dl, 47                                  ; 6029 _ 80. FA, 2F
        ja      ?_0762                                  ; 602C _ 0F 87, FFFFFF1E
?_0773: lea     esi, [eax-80H]                          ; 6032 _ 8D. 70, 80
        mov     edx, esi                                ; 6035 _ 89. F2
        cmp     dl, 63                                  ; 6037 _ 80. FA, 3F
        jbe     ?_0760                                  ; 603A _ 0F 86, FFFFFEA3
        jmp     ?_0762                                  ; 6040 _ E9, FFFFFF0B

?_0774: cmp     eax, 95                                 ; 6045 _ 83. F8, 5F
        jz      ?_0770                                  ; 6048 _ 74, A5
        cmp     eax, 58                                 ; 604A _ 83. F8, 3A
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
        jnz     ?_0771                                  ; 6050 _ 75, BE
        jmp     ?_0770                                  ; 6052 _ EB, 9B

?_0775: mov     eax, dword [esp+44H]                    ; 6054 _ 8B. 44 24, 44
        mov     dword [ebx+8H], 0                       ; 6058 _ C7. 43, 08, 00000000
        mov     dword [esp], eax                        ; 605F _ 89. 04 24
        call    strlen                                  ; 6062 _ E8, FFFFFFFC(rel)
        cmp     eax, 2                                  ; 6067 _ 83. F8, 02
        jbe     ?_0776                                  ; 606A _ 76, 4C
        mov     eax, dword [esp+44H]                    ; 606C _ 8B. 44 24, 44
        movzx   eax, byte [eax]                         ; 6070 _ 0F B6. 00
        and     eax, 0FFFFFFDFH                         ; 6073 _ 83. E0, DF
        cmp     al, 88                                  ; 6076 _ 3C, 58
        jnz     ?_0776                                  ; 6078 _ 75, 3E
        mov     eax, dword [esp+44H]                    ; 607A _ 8B. 44 24, 44
        movzx   eax, byte [eax+1H]                      ; 607E _ 0F B6. 40, 01
        and     eax, 0FFFFFFDFH                         ; 6082 _ 83. E0, DF
        cmp     al, 77                                  ; 6085 _ 3C, 4D
        jnz     ?_0776                                  ; 6087 _ 75, 2F
        mov     eax, dword [esp+44H]                    ; 6089 _ 8B. 44 24, 44
        movzx   eax, byte [eax+2H]                      ; 608D _ 0F B6. 40, 02
        and     eax, 0FFFFFFDFH                         ; 6091 _ 83. E0, DF
        cmp     al, 76                                  ; 6094 _ 3C, 4C
        jnz     ?_0776                                  ; 6096 _ 75, 20
        mov     eax, dword [esp+44H]                    ; 6098 _ 8B. 44 24, 44
        cmp     byte [eax+3H], 0                        ; 609C _ 80. 78, 03, 00
        jnz     ?_0776                                  ; 60A0 _ 75, 16
        mov     dword [ebx+8H], 13                      ; 60A2 _ C7. 43, 08, 0000000D
        mov     esi, 13                                 ; 60A9 _ BE, 0000000D
        jmp     ?_0753                                  ; 60AE _ E9, FFFFFD6F

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0776: mov     eax, dword [esp+48H]                    ; 60B8 _ 8B. 44 24, 48
        mov     dword [esp], ebx                        ; 60BC _ 89. 1C 24
        mov     dword [esp+4H], eax                     ; 60BF _ 89. 44 24, 04
        call    genxCheckText                           ; 60C3 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 60C8 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 60CA _ 89. 43, 08
        mov     esi, eax                                ; 60CD _ 89. C6
        jne     ?_0753                                  ; 60CF _ 0F 85, FFFFFD4D
        mov     eax, dword [esp+48H]                    ; 60D5 _ 8B. 44 24, 48
        movzx   edx, byte [eax+1H]                      ; 60D9 _ 0F B6. 50, 01
        test    dl, dl                                  ; 60DD _ 84. D2
        jz      ?_0779                                  ; 60DF _ 74, 41
        mov     ecx, 1                                  ; 60E1 _ B9, 00000001
        mov     eax, 1                                  ; 60E6 _ B8, 00000001
        jmp     ?_0778                                  ; 60EB _ EB, 14

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0777: mov     edi, dword [esp+48H]                    ; 60F0 _ 8B. 7C 24, 48
        add     eax, 1                                  ; 60F4 _ 83. C0, 01
        mov     ecx, eax                                ; 60F7 _ 89. C1
        movzx   edx, byte [edi+eax]                     ; 60F9 _ 0F B6. 14 07
        test    dl, dl                                  ; 60FD _ 84. D2
        jz      ?_0779                                  ; 60FF _ 74, 21
?_0778: cmp     dl, 62                                  ; 6101 _ 80. FA, 3E
        jnz     ?_0777                                  ; 6104 _ 75, EA
        mov     edi, dword [esp+48H]                    ; 6106 _ 8B. 7C 24, 48
        cmp     byte [edi+ecx-1H], 63                   ; 610A _ 80. 7C 0F, FF, 3F
        jnz     ?_0777                                  ; 610F _ 75, DF
        mov     dword [ebx+8H], 14                      ; 6111 _ C7. 43, 08, 0000000E
        mov     esi, 14                                 ; 6118 _ BE, 0000000E
        jmp     ?_0753                                  ; 611D _ E9, FFFFFD00

?_0779: mov     eax, dword [ebx+0CH]                    ; 6122 _ 8B. 43, 0C
        lea     edx, [eax-3H]                           ; 6125 _ 8D. 50, FD
        cmp     edx, 1                                  ; 6128 _ 83. FA, 01
        jbe     ?_0788                                  ; 612B _ 0F 86, 00000101
        cmp     eax, 2                                  ; 6131 _ 83. F8, 02
        je      ?_0789                                  ; 6134 _ 0F 84, 00000118
?_0780: mov     edi, dword [ebx+4H]                     ; 613A _ 8B. 7B, 04
        test    edi, edi                                ; 613D _ 85. FF
        je      ?_0787                                  ; 613F _ 0F 84, 000000CB
        mov     dword [esp+4H], ?_0880                  ; 6145 _ C7. 44 24, 04, 00000117(d)
        mov     eax, dword [ebx+10010H]                 ; 614D _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 6153 _ 89. 04 24
        call    near [edi]                              ; 6156 _ FF. 17
        mov     esi, eax                                ; 6158 _ 89. C6
?_0781: test    esi, esi                                ; 615A _ 85. F6
        mov     dword [ebx+8H], esi                     ; 615C _ 89. 73, 08
        jne     ?_0753                                  ; 615F _ 0F 85, FFFFFCBD
        mov     eax, dword [ebx+4H]                     ; 6165 _ 8B. 43, 04
        test    eax, eax                                ; 6168 _ 85. C0
        je      ?_0791                                  ; 616A _ 0F 84, 0000010E
        mov     edi, dword [esp+44H]                    ; 6170 _ 8B. 7C 24, 44
        mov     dword [esp+4H], edi                     ; 6174 _ 89. 7C 24, 04
        mov     edx, dword [ebx+10010H]                 ; 6178 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 617E _ 89. 14 24
        call    near [eax]                              ; 6181 _ FF. 10
        mov     esi, eax                                ; 6183 _ 89. C6
?_0782: test    esi, esi                                ; 6185 _ 85. F6
        mov     dword [ebx+8H], esi                     ; 6187 _ 89. 73, 08
        jne     ?_0753                                  ; 618A _ 0F 85, FFFFFC92
        mov     eax, dword [esp+48H]                    ; 6190 _ 8B. 44 24, 48
        cmp     byte [eax], 0                           ; 6194 _ 80. 38, 00
        jz      ?_0785                                  ; 6197 _ 74, 2C
        mov     edx, ?_0853                             ; 6199 _ BA, 00000013(d)
        mov     eax, ebx                                ; 619E _ 89. D8
        call    sendx                                   ; 61A0 _ E8, FFFF9E5B
        test    eax, eax                                ; 61A5 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 61A7 _ 89. 43, 08
        jz      ?_0784                                  ; 61AA _ 74, 07
?_0783: mov     esi, eax                                ; 61AC _ 89. C6
        jmp     ?_0753                                  ; 61AE _ E9, FFFFFC6F

?_0784: mov     edx, dword [esp+48H]                    ; 61B3 _ 8B. 54 24, 48
        mov     eax, ebx                                ; 61B7 _ 89. D8
        call    sendx                                   ; 61B9 _ E8, FFFF9E42
        test    eax, eax                                ; 61BE _ 85. C0
        mov     dword [ebx+8H], eax                     ; 61C0 _ 89. 43, 08
        jnz     ?_0783                                  ; 61C3 _ 75, E7
?_0785: mov     eax, dword [ebx+4H]                     ; 61C5 _ 8B. 43, 04
        test    eax, eax                                ; 61C8 _ 85. C0
        je      ?_0792                                  ; 61CA _ 0F 84, 000000D0
        mov     dword [esp+4H], ?_0881                  ; 61D0 _ C7. 44 24, 04, 0000011A(d)
        mov     edx, dword [ebx+10010H]                 ; 61D8 _ 8B. 93, 00010010
        mov     dword [esp], edx                        ; 61DE _ 89. 14 24
        call    near [eax]                              ; 61E1 _ FF. 10
        mov     esi, eax                                ; 61E3 _ 89. C6
?_0786: test    esi, esi                                ; 61E5 _ 85. F6
        mov     dword [ebx+8H], esi                     ; 61E7 _ 89. 73, 08
        jne     ?_0753                                  ; 61EA _ 0F 85, FFFFFC32
        cmp     dword [ebx+0CH], 1                      ; 61F0 _ 83. 7B, 0C, 01
        jne     ?_0753                                  ; 61F4 _ 0F 85, FFFFFC28
        mov     edx, ?_0877                             ; 61FA _ BA, 0000010C(d)
        mov     eax, ebx                                ; 61FF _ 89. D8
        call    sendx                                   ; 6201 _ E8, FFFF9DFA
        mov     dword [ebx+8H], eax                     ; 6206 _ 89. 43, 08
        mov     esi, eax                                ; 6209 _ 89. C6
        jmp     ?_0753                                  ; 620B _ E9, FFFFFC12

?_0787: mov     eax, dword [ebx]                        ; 6210 _ 8B. 03
        mov     dword [esp], ?_0880                     ; 6212 _ C7. 04 24, 00000117(d)
        mov     esi, 10                                 ; 6219 _ BE, 0000000A
        mov     dword [esp+4H], eax                     ; 621E _ 89. 44 24, 04
        call    fputs                                   ; 6222 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 6227 _ 83. F8, FF
        cmovne  esi, edi                                ; 622A _ 0F 45. F7
        jmp     ?_0781                                  ; 622D _ E9, FFFFFF28

?_0788: mov     eax, ebx                                ; 6232 _ 89. D8
        call    writeStartTag                           ; 6234 _ E8, FFFFB317
        test    eax, eax                                ; 6239 _ 85. C0
        mov     dword [ebx+8H], eax                     ; 623B _ 89. 43, 08
        mov     esi, eax                                ; 623E _ 89. C6
        jne     ?_0753                                  ; 6240 _ 0F 85, FFFFFBDC
        mov     dword [ebx+0CH], 5                      ; 6246 _ C7. 43, 0C, 00000005
        jmp     ?_0780                                  ; 624D _ E9, FFFFFEE8

?_0789: mov     edi, dword [ebx+4H]                     ; 6252 _ 8B. 7B, 04
        test    edi, edi                                ; 6255 _ 85. FF
        jz      ?_0793                                  ; 6257 _ 74, 69
        mov     dword [esp+4H], ?_0877                  ; 6259 _ C7. 44 24, 04, 0000010C(d)
        mov     eax, dword [ebx+10010H]                 ; 6261 _ 8B. 83, 00010010
        mov     dword [esp], eax                        ; 6267 _ 89. 04 24
        call    near [edi]                              ; 626A _ FF. 17
        mov     esi, eax                                ; 626C _ 89. C6
?_0790: test    esi, esi                                ; 626E _ 85. F6
        mov     dword [ebx+8H], esi                     ; 6270 _ 89. 73, 08
        je      ?_0780                                  ; 6273 _ 0F 84, FFFFFEC1
        jmp     ?_0753                                  ; 6279 _ E9, FFFFFBA4

?_0791: mov     eax, dword [ebx]                        ; 627E _ 8B. 03
        mov     dword [esp+4H], eax                     ; 6280 _ 89. 44 24, 04
        mov     eax, dword [esp+44H]                    ; 6284 _ 8B. 44 24, 44
        mov     dword [esp], eax                        ; 6288 _ 89. 04 24
        call    fputs                                   ; 628B _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 6290 _ 83. F8, FF
        mov     eax, 10                                 ; 6293 _ B8, 0000000A
        cmove   esi, eax                                ; 6298 _ 0F 44. F0
        jmp     ?_0782                                  ; 629B _ E9, FFFFFEE5

?_0792: mov     eax, dword [ebx]                        ; 62A0 _ 8B. 03
        mov     dword [esp], ?_0881                     ; 62A2 _ C7. 04 24, 0000011A(d)
        mov     dword [esp+4H], eax                     ; 62A9 _ 89. 44 24, 04
        call    fputs                                   ; 62AD _ E8, FFFFFFFC(rel)
        add     eax, 1                                  ; 62B2 _ 83. C0, 01
        mov     eax, 10                                 ; 62B5 _ B8, 0000000A
        cmove   esi, eax                                ; 62BA _ 0F 44. F0
        jmp     ?_0786                                  ; 62BD _ E9, FFFFFF23

?_0793: mov     eax, dword [ebx]                        ; 62C2 _ 8B. 03
        mov     dword [esp], ?_0877                     ; 62C4 _ C7. 04 24, 0000010C(d)
        mov     esi, 10                                 ; 62CB _ BE, 0000000A
        mov     dword [esp+4H], eax                     ; 62D0 _ 89. 44 24, 04
        call    fputs                                   ; 62D4 _ E8, FFFFFFFC(rel)
        add     eax, 1                                  ; 62D9 _ 83. C0, 01
        cmovne  esi, edi                                ; 62DC _ 0F 45. F7
        jmp     ?_0790                                  ; 62DF _ EB, 8D
; genxPI End of function

?_0794: ; Local function
        mov     esi, 2                                  ; 62E1 _ BE, 00000002
        jmp     ?_0763                                  ; 62E6 _ E9, FFFFFC6A

        nop                                             ; 62EB _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8

genxStartElementLiteral:; Function begin
        push    edi                                     ; 62F0 _ 57
        push    esi                                     ; 62F1 _ 56
        push    ebx                                     ; 62F2 _ 53
        sub     esp, 16                                 ; 62F3 _ 83. EC, 10
        mov     edx, dword [esp+24H]                    ; 62F6 _ 8B. 54 24, 24
        mov     ebx, dword [esp+20H]                    ; 62FA _ 8B. 5C 24, 20
        test    edx, edx                                ; 62FE _ 85. D2
        lea     esi, [ebx+8H]                           ; 6300 _ 8D. 73, 08
        je      ?_0804                                  ; 6303 _ 0F 84, 000000F7
        mov     ecx, esi                                ; 6309 _ 89. F1
        mov     eax, ebx                                ; 630B _ 89. D8
        call    genxDeclareNamespace.constprop.13       ; 630D _ E8, FFFFB90E
        test    eax, eax                                ; 6312 _ 85. C0
        je      ?_0805                                  ; 6314 _ 0F 84, 000000F6
        mov     ecx, dword [ebx+8H]                     ; 631A _ 8B. 4B, 08
        test    ecx, ecx                                ; 631D _ 85. C9
        jnz     ?_0796                                  ; 631F _ 75, 29
?_0795: mov     edx, dword [esp+28H]                    ; 6321 _ 8B. 54 24, 28
        mov     dword [esp+0CH], esi                    ; 6325 _ 89. 74 24, 0C
        mov     dword [esp+4H], eax                     ; 6329 _ 89. 44 24, 04
        mov     dword [esp], ebx                        ; 632D _ 89. 1C 24
        mov     dword [esp+8H], edx                     ; 6330 _ 89. 54 24, 08
        call    genxDeclareElement                      ; 6334 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 6339 _ 85. C0
        mov     esi, eax                                ; 633B _ 89. C6
        je      ?_0805                                  ; 633D _ 0F 84, 000000CD
        mov     ecx, dword [ebx+8H]                     ; 6343 _ 8B. 4B, 08
        test    ecx, ecx                                ; 6346 _ 85. C9
        jz      ?_0798                                  ; 6348 _ 74, 0E
?_0796: mov     eax, ecx                                ; 634A _ 89. C8
?_0797: add     esp, 16                                 ; 634C _ 83. C4, 10
        pop     ebx                                     ; 634F _ 5B
        pop     esi                                     ; 6350 _ 5E
        pop     edi                                     ; 6351 _ 5F
        ret                                             ; 6352 _ C3

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0798: mov     edi, dword [eax]                        ; 6358 _ 8B. 38
        mov     eax, dword [edi+0CH]                    ; 635A _ 8B. 47, 0C
        cmp     eax, 2                                  ; 635D _ 83. F8, 02
        je      ?_0803                                  ; 6360 _ 0F 84, 00000086
; Note: Immediate operand could be made smaller by sign extension
        jbe     ?_0802                                  ; 6366 _ 0F 86, 0000007C
        cmp     eax, 4                                  ; 636C _ 83. F8, 04
        ja      ?_0799                                  ; 636F _ 77, 0E
        mov     eax, edi                                ; 6371 _ 89. F8
        call    writeStartTag                           ; 6373 _ E8, FFFFB1D8
        test    eax, eax                                ; 6378 _ 85. C0
        mov     dword [edi+8H], eax                     ; 637A _ 89. 47, 08
        jnz     ?_0797                                  ; 637D _ 75, CD
?_0799: mov     eax, dword [edi+1004CH]                 ; 637F _ 8B. 87, 0001004C
        mov     dword [edi+0CH], 3                      ; 6385 _ C7. 47, 0C, 00000003
        test    eax, eax                                ; 638C _ 85. C0
        jle     ?_0801                                  ; 638E _ 7E, 20
        mov     ecx, dword [edi+10054H]                 ; 6390 _ 8B. 8F, 00010054
        lea     eax, [ecx+eax*4]                        ; 6396 _ 8D. 04 81
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0800: mov     ebx, dword [ecx]                        ; 63A0 _ 8B. 19
        add     ecx, 4                                  ; 63A2 _ 83. C1, 04
        cmp     ecx, eax                                ; 63A5 _ 39. C1
        mov     dword [ebx+18H], 0                      ; 63A7 _ C7. 43, 18, 00000000
        jnz     ?_0800                                  ; 63AE _ 75, F0
?_0801: lea     ebx, [edi+10068H]                       ; 63B0 _ 8D. 9F, 00010068
        mov     edx, esi                                ; 63B6 _ 89. F2
        mov     eax, ebx                                ; 63B8 _ 89. D8
        call    listAppend                              ; 63BA _ E8, FFFF9C81
        test    eax, eax                                ; 63BF _ 85. C0
        mov     dword [edi+8H], eax                     ; 63C1 _ 89. 47, 08
        jnz     ?_0797                                  ; 63C4 _ 75, 86
        xor     edx, edx                                ; 63C6 _ 31. D2
        mov     eax, ebx                                ; 63C8 _ 89. D8
        call    listAppend                              ; 63CA _ E8, FFFF9C71
        test    eax, eax                                ; 63CF _ 85. C0
        mov     dword [edi+8H], eax                     ; 63D1 _ 89. 47, 08
        jne     ?_0797                                  ; 63D4 _ 0F 85, FFFFFF72
        mov     dword [edi+10024H], esi                 ; 63DA _ 89. B7, 00010024
        jmp     ?_0797                                  ; 63E0 _ E9, FFFFFF67

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0802: test    eax, eax                                ; 63E8 _ 85. C0
        jnz     ?_0799                                  ; 63EA _ 75, 93
?_0803: mov     dword [edi+8H], 8                       ; 63EC _ C7. 47, 08, 00000008
        mov     eax, 8                                  ; 63F3 _ B8, 00000008
        jmp     ?_0797                                  ; 63F8 _ E9, FFFFFF4F

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0804: xor     eax, eax                                ; 6400 _ 31. C0
        jmp     ?_0795                                  ; 6402 _ E9, FFFFFF1A

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0805: mov     eax, dword [ebx+8H]                     ; 6410 _ 8B. 43, 08
        add     esp, 16                                 ; 6413 _ 83. C4, 10
        pop     ebx                                     ; 6416 _ 5B
        pop     esi                                     ; 6417 _ 5E
        pop     edi                                     ; 6418 _ 5F
        ret                                             ; 6419 _ C3
; genxStartElementLiteral End of function

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8

genxAddAttributeLiteral:; Function begin
        push    ebp                                     ; 6420 _ 55
        push    edi                                     ; 6421 _ 57
        push    esi                                     ; 6422 _ 56
        push    ebx                                     ; 6423 _ 53
        sub     esp, 44                                 ; 6424 _ 83. EC, 2C
        mov     edx, dword [esp+44H]                    ; 6427 _ 8B. 54 24, 44
        mov     ebp, dword [esp+40H]                    ; 642B _ 8B. 6C 24, 40
        test    edx, edx                                ; 642F _ 85. D2
        jz      ?_0811                                  ; 6431 _ 74, 44
        lea     ecx, [ebp+8H]                           ; 6433 _ 8D. 4D, 08
        mov     eax, ebp                                ; 6436 _ 89. E8
        call    genxDeclareNamespace.constprop.13       ; 6438 _ E8, FFFFB7E3
        test    eax, eax                                ; 643D _ 85. C0
        mov     dword [esp+0CH], eax                    ; 643F _ 89. 44 24, 0C
        jz      ?_0810                                  ; 6443 _ 74, 2B
?_0806: mov     eax, dword [esp+48H]                    ; 6445 _ 8B. 44 24, 48
        test    eax, eax                                ; 6449 _ 85. C0
        mov     dword [esp+1CH], eax                    ; 644B _ 89. 44 24, 1C
        jz      ?_0807                                  ; 644F _ 74, 05
        cmp     byte [eax], 0                           ; 6451 _ 80. 38, 00
        jnz     ?_0812                                  ; 6454 _ 75, 32
?_0807: mov     eax, 3                                  ; 6456 _ B8, 00000003
?_0808: mov     dword [ebp+8H], eax                     ; 645B _ 89. 45, 08
?_0809: add     esp, 44                                 ; 645E _ 83. C4, 2C
        pop     ebx                                     ; 6461 _ 5B
        pop     esi                                     ; 6462 _ 5E
        pop     edi                                     ; 6463 _ 5F
        pop     ebp                                     ; 6464 _ 5D
        ret                                             ; 6465 _ C3

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_0810: mov     eax, dword [ebp+8H]                     ; 6470 _ 8B. 45, 08
        test    eax, eax                                ; 6473 _ 85. C0
        jnz     ?_0809                                  ; 6475 _ 75, E7
?_0811: mov     dword [esp+0CH], 0                      ; 6477 _ C7. 44 24, 0C, 00000000
        jmp     ?_0806                                  ; 647F _ EB, C4

; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0812: lea     ebx, [esp+1CH]                          ; 6488 _ 8D. 5C 24, 1C
        mov     dword [esp], ebx                        ; 648C _ 89. 1C 24
        call    genxNextUnicodeChar                     ; 648F _ E8, FFFFFFFC(rel)
        cmp     eax, 65535                              ; 6494 _ 3D, 0000FFFF
        ja      ?_0825                                  ; 6499 _ 0F 87, 000001DF
        test    byte [ebp+eax+10H], 02H                 ; 649F _ F6. 44 05, 10, 02
        jnz     ?_0814                                  ; 64A4 _ 75, 29
        jmp     ?_0825                                  ; 64A6 _ E9, 000001D3

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0813: mov     dword [esp], ebx                        ; 64B0 _ 89. 1C 24
        call    genxNextUnicodeChar                     ; 64B3 _ E8, FFFFFFFC(rel)
        cmp     eax, -1                                 ; 64B8 _ 83. F8, FF
        je      ?_0845                                  ; 64BB _ 0F 84, 00000396
        cmp     eax, 65535                              ; 64C1 _ 3D, 0000FFFF
        ja      ?_0807                                  ; 64C6 _ 77, 8E
        test    byte [ebp+eax+10H], 04H                 ; 64C8 _ F6. 44 05, 10, 04
        jz      ?_0807                                  ; 64CD _ 74, 87
?_0814: mov     eax, dword [esp+1CH]                    ; 64CF _ 8B. 44 24, 1C
        cmp     byte [eax], 0                           ; 64D3 _ 80. 38, 00
        jnz     ?_0813                                  ; 64D6 _ 75, D8
        mov     eax, dword [ebp+10054H]                 ; 64D8 _ 8B. 85, 00010054
        mov     dword [ebp+8H], 0                       ; 64DE _ C7. 45, 08, 00000000
        mov     edi, dword [esp+48H]                    ; 64E5 _ 8B. 7C 24, 48
        mov     dword [esp+8H], eax                     ; 64E9 _ 89. 44 24, 08
        mov     eax, dword [esp+0CH]                    ; 64ED _ 8B. 44 24, 0C
        mov     dword [ebp+1007CH], edi                 ; 64F1 _ 89. BD, 0001007C
        test    eax, eax                                ; 64F7 _ 85. C0
        mov     dword [ebp+10080H], eax                 ; 64F9 _ 89. 85, 00010080
        je      ?_0840                                  ; 64FF _ 0F 84, 000002C6
        mov     dword [ebp+10094H], 2                   ; 6505 _ C7. 85, 00010094, 00000002
        mov     edi, dword [ebp+10020H]                 ; 650F _ 8B. BD, 00010020
        cmp     dword [eax+14H], edi                    ; 6515 _ 39. 78, 14
        je      ?_0848                                  ; 6518 _ 0F 84, 00000360
?_0815: mov     edi, dword [ebp+1004CH]                 ; 651E _ 8B. BD, 0001004C
        mov     esi, 4294967295                         ; 6524 _ BE, FFFFFFFF
?_0816: mov     eax, edi                                ; 6529 _ 89. F8
        sub     eax, esi                                ; 652B _ 29. F0
        cmp     eax, 1                                  ; 652D _ 83. F8, 01
        jle     ?_0819                                  ; 6530 _ 7E, 40
?_0817: lea     eax, [edi+esi]                          ; 6532 _ 8D. 04 37
        mov     ebx, eax                                ; 6535 _ 89. C3
        shr     ebx, 31                                 ; 6537 _ C1. EB, 1F
        add     ebx, eax                                ; 653A _ 01. C3
        mov     eax, dword [esp+8H]                     ; 653C _ 8B. 44 24, 08
        sar     ebx, 1                                  ; 6540 _ D1. FB
        mov     edx, dword [eax+ebx*4]                  ; 6542 _ 8B. 14 98
        mov     eax, dword [ebp+10094H]                 ; 6545 _ 8B. 85, 00010094
        mov     ecx, dword [edx+1CH]                    ; 654B _ 8B. 4A, 1C
        cmp     eax, ecx                                ; 654E _ 39. C8
        je      ?_0828                                  ; 6550 _ 0F 84, 0000015A
        test    eax, eax                                ; 6556 _ 85. C0
        je      ?_0827                                  ; 6558 _ 0F 84, 00000142
        cmp     eax, 1                                  ; 655E _ 83. F8, 01
        je      ?_0826                                  ; 6561 _ 0F 84, 00000131
?_0818: mov     esi, ebx                                ; 6567 _ 89. DE
        mov     eax, edi                                ; 6569 _ 89. F8
        sub     eax, esi                                ; 656B _ 29. F0
        cmp     eax, 1                                  ; 656D _ 83. F8, 01
        jg      ?_0817                                  ; 6570 _ 7F, C0
?_0819: cmp     esi, -1                                 ; 6572 _ 83. FE, FF
        jz      ?_0820                                  ; 6575 _ 74, 16
        mov     eax, dword [esp+8H]                     ; 6577 _ 8B. 44 24, 08
        mov     ebx, dword [eax+esi*4]                  ; 657B _ 8B. 1C B0
        mov     eax, dword [ebp+10094H]                 ; 657E _ 8B. 85, 00010094
        cmp     eax, dword [ebx+1CH]                    ; 6584 _ 3B. 43, 1C
        je      ?_0832                                  ; 6587 _ 0F 84, 00000173
?_0820: mov     eax, dword [ebp+10228H]                 ; 658D _ 8B. 85, 00010228
        mov     edx, dword [ebp+10010H]                 ; 6593 _ 8B. 95, 00010010
        test    eax, eax                                ; 6599 _ 85. C0
        je      ?_0841                                  ; 659B _ 0F 84, 0000024F
        mov     dword [esp+4H], 32                      ; 65A1 _ C7. 44 24, 04, 00000020
        mov     dword [esp], edx                        ; 65A9 _ 89. 14 24
        call    eax                                     ; 65AC _ FF. D0
        mov     ebx, eax                                ; 65AE _ 89. C3
?_0821: test    ebx, ebx                                ; 65B0 _ 85. DB
        je      ?_0824                                  ; 65B2 _ 0F 84, 000000B2
        mov     eax, dword [esp+0CH]                    ; 65B8 _ 8B. 44 24, 0C
        mov     dword [ebx], ebp                        ; 65BC _ 89. 2B
        mov     dword [ebx+18H], 0                      ; 65BE _ C7. 43, 18, 00000000
        mov     dword [ebx+8H], eax                     ; 65C5 _ 89. 43, 08
        mov     eax, dword [ebp+10094H]                 ; 65C8 _ 8B. 85, 00010094
        mov     dword [ebx+1CH], eax                    ; 65CE _ 89. 43, 1C
        mov     eax, dword [esp+48H]                    ; 65D1 _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 65D5 _ 89. 04 24
        call    strlen                                  ; 65D8 _ E8, FFFFFFFC(rel)
        mov     edx, dword [ebp+10228H]                 ; 65DD _ 8B. 95, 00010228
        add     eax, 1                                  ; 65E3 _ 83. C0, 01
        mov     ecx, dword [ebp+10010H]                 ; 65E6 _ 8B. 8D, 00010010
        test    edx, edx                                ; 65EC _ 85. D2
        je      ?_0842                                  ; 65EE _ 0F 84, 00000214
        mov     dword [esp+4H], eax                     ; 65F4 _ 89. 44 24, 04
        mov     dword [esp], ecx                        ; 65F8 _ 89. 0C 24
        call    edx                                     ; 65FB _ FF. D2
        mov     esi, eax                                ; 65FD _ 89. C6
?_0822: test    esi, esi                                ; 65FF _ 85. F6
        je      ?_0847                                  ; 6601 _ 0F 84, 0000026B
        mov     eax, dword [esp+48H]                    ; 6607 _ 8B. 44 24, 48
        mov     dword [esp], esi                        ; 660B _ 89. 34 24
        mov     dword [esp+4H], eax                     ; 660E _ 89. 44 24, 04
        call    strcpy                                  ; 6612 _ E8, FFFFFFFC(rel)
        mov     dword [ebx+4H], esi                     ; 6617 _ 89. 73, 04
        mov     dword [ebx+14H], 100                    ; 661A _ C7. 43, 14, 00000064
        mov     eax, dword [ebp+10228H]                 ; 6621 _ 8B. 85, 00010228
        mov     edx, dword [ebp+10010H]                 ; 6627 _ 8B. 95, 00010010
        test    eax, eax                                ; 662D _ 85. C0
        je      ?_0843                                  ; 662F _ 0F 84, 000001EB
        mov     dword [esp+4H], 100                     ; 6635 _ C7. 44 24, 04, 00000064
        mov     dword [esp], edx                        ; 663D _ 89. 14 24
        call    eax                                     ; 6640 _ FF. D0
?_0823: test    eax, eax                                ; 6642 _ 85. C0
        mov     dword [ebx+0CH], eax                    ; 6644 _ 89. 43, 0C
        jz      ?_0824                                  ; 6647 _ 74, 21
        mov     dword [ebx+10H], 0                      ; 6649 _ C7. 43, 10, 00000000
        lea     eax, [ebp+10048H]                       ; 6650 _ 8D. 85, 00010048
        mov     dword [ebp+8H], 0                       ; 6656 _ C7. 45, 08, 00000000
        call    checkExpand                             ; 665D _ E8, FFFF9ACE
        test    eax, eax                                ; 6662 _ 85. C0
        jne     ?_0836                                  ; 6664 _ 0F 85, 000000DE
?_0824: mov     dword [ebp+8H], 4                       ; 666A _ C7. 45, 08, 00000004
        add     esp, 44                                 ; 6671 _ 83. C4, 2C
        mov     eax, 4                                  ; 6674 _ B8, 00000004
        pop     ebx                                     ; 6679 _ 5B
        pop     esi                                     ; 667A _ 5E
        pop     edi                                     ; 667B _ 5F
        pop     ebp                                     ; 667C _ 5D
        ret                                             ; 667D _ C3

?_0825: cmp     eax, 95                                 ; 667E _ 83. F8, 5F
        je      ?_0814                                  ; 6681 _ 0F 84, FFFFFE48
        cmp     eax, 58                                 ; 6687 _ 83. F8, 3A
        jne     ?_0807                                  ; 668A _ 0F 85, FFFFFDC6
        jmp     ?_0814                                  ; 6690 _ E9, FFFFFE3A

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0826: test    ecx, ecx                                ; 6698 _ 85. C9
        je      ?_0818                                  ; 669A _ 0F 84, FFFFFEC7
?_0827: mov     edi, ebx                                ; 66A0 _ 89. DF
        jmp     ?_0816                                  ; 66A2 _ E9, FFFFFE82

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0828: cmp     eax, 2                                  ; 66B0 _ 83. F8, 02
        jz      ?_0831                                  ; 66B3 _ 74, 2B
?_0829: mov     eax, dword [edx+4H]                     ; 66B5 _ 8B. 42, 04
        mov     dword [esp+4H], eax                     ; 66B8 _ 89. 44 24, 04
        mov     eax, dword [esp+48H]                    ; 66BC _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 66C0 _ 89. 04 24
        call    strcmp                                  ; 66C3 _ E8, FFFFFFFC(rel)
?_0830: test    eax, eax                                ; 66C8 _ 85. C0
        jns     ?_0818                                  ; 66CA _ 0F 89, FFFFFE97
        mov     edi, ebx                                ; 66D0 _ 89. DF
        jmp     ?_0816                                  ; 66D2 _ E9, FFFFFE52

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0831: mov     eax, dword [edx+8H]                     ; 66E0 _ 8B. 42, 08
        mov     ecx, dword [esp+0CH]                    ; 66E3 _ 8B. 4C 24, 0C
        cmp     ecx, eax                                ; 66E7 _ 39. C1
        jz      ?_0829                                  ; 66E9 _ 74, CA
        mov     eax, dword [eax+4H]                     ; 66EB _ 8B. 40, 04
        mov     dword [esp+4H], eax                     ; 66EE _ 89. 44 24, 04
        mov     eax, dword [ecx+4H]                     ; 66F2 _ 8B. 41, 04
        mov     dword [esp], eax                        ; 66F5 _ 89. 04 24
        call    strcmp                                  ; 66F8 _ E8, FFFFFFFC(rel)
        jmp     ?_0830                                  ; 66FD _ EB, C9

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_0832: cmp     eax, 2                                  ; 6700 _ 83. F8, 02
        je      ?_0844                                  ; 6703 _ 0F 84, 00000128
?_0833: mov     eax, dword [ebx+4H]                     ; 6709 _ 8B. 43, 04
        mov     dword [esp+4H], eax                     ; 670C _ 89. 44 24, 04
        mov     eax, dword [esp+48H]                    ; 6710 _ 8B. 44 24, 48
        mov     dword [esp], eax                        ; 6714 _ 89. 04 24
        call    strcmp                                  ; 6717 _ E8, FFFFFFFC(rel)
?_0834: test    eax, eax                                ; 671C _ 85. C0
        jne     ?_0820                                  ; 671E _ 0F 85, FFFFFE69
        mov     edx, dword [ebx]                        ; 6724 _ 8B. 13
        mov     eax, dword [edx+0CH]                    ; 6726 _ 8B. 42, 0C
        lea     ecx, [eax-3H]                           ; 6729 _ 8D. 48, FD
        cmp     ecx, 1                                  ; 672C _ 83. F9, 01
        jbe     ?_0839                                  ; 672F _ 76, 77
?_0835: mov     dword [edx+8H], 8                       ; 6731 _ C7. 42, 08, 00000008
        add     esp, 44                                 ; 6738 _ 83. C4, 2C
        mov     eax, 8                                  ; 673B _ B8, 00000008
        pop     ebx                                     ; 6740 _ 5B
        pop     esi                                     ; 6741 _ 5E
        pop     edi                                     ; 6742 _ 5F
        pop     ebp                                     ; 6743 _ 5D
        ret                                             ; 6744 _ C3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_0836: mov     esi, dword [ebp+1004CH]                 ; 6748 _ 8B. B5, 0001004C
        lea     edx, [esi*4]                            ; 674E _ 8D. 14 B5, 00000000
        cmp     esi, edi                                ; 6755 _ 39. FE
        mov     eax, esi                                ; 6757 _ 89. F0
        jle     ?_0838                                  ; 6759 _ 7E, 20
        mov     dword [esp+8H], ebx                     ; 675B _ 89. 5C 24, 08
        nop                                             ; 675F _ 90
?_0837: mov     ecx, dword [ebp+10054H]                 ; 6760 _ 8B. 8D, 00010054
        sub     eax, 1                                  ; 6766 _ 83. E8, 01
        mov     ebx, dword [ecx+edx-4H]                 ; 6769 _ 8B. 5C 11, FC
        mov     dword [ecx+edx], ebx                    ; 676D _ 89. 1C 11
        sub     edx, 4                                  ; 6770 _ 83. EA, 04
        cmp     eax, edi                                ; 6773 _ 39. F8
        jnz     ?_0837                                  ; 6775 _ 75, E9
        mov     ebx, dword [esp+8H]                     ; 6777 _ 8B. 5C 24, 08
?_0838: mov     eax, dword [ebp+10054H]                 ; 677B _ 8B. 85, 00010054
        add     esi, 1                                  ; 6781 _ 83. C6, 01
        mov     dword [ebp+1004CH], esi                 ; 6784 _ 89. B5, 0001004C
        mov     dword [eax+edi*4], ebx                  ; 678A _ 89. 1C B8
        mov     edx, dword [ebx]                        ; 678D _ 8B. 13
        mov     dword [ebp+8H], 0                       ; 678F _ C7. 45, 08, 00000000
        mov     eax, dword [edx+0CH]                    ; 6796 _ 8B. 42, 0C
        lea     ecx, [eax-3H]                           ; 6799 _ 8D. 48, FD
        cmp     ecx, 1                                  ; 679C _ 83. F9, 01
        ja      ?_0835                                  ; 679F _ 77, 90
; Filling space: 7H
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H

ALIGN   8
?_0839: mov     eax, dword [esp+4CH]                    ; 67A8 _ 8B. 44 24, 4C
        mov     dword [edx+0CH], 4                      ; 67AC _ C7. 42, 0C, 00000004
        test    eax, eax                                ; 67B3 _ 85. C0
        je      ?_0846                                  ; 67B5 _ 0F 84, 000000A6
        mov     edx, dword [esp+4CH]                    ; 67BB _ 8B. 54 24, 4C
        mov     eax, ebx                                ; 67BF _ 89. D8
        call    addAttribute                            ; 67C1 _ E8, FFFFA07A
        jmp     ?_0809                                  ; 67C6 _ E9, FFFFFC93

?_0840: mov     esi, dword [esp+48H]                    ; 67CB _ 8B. 74 24, 48
        mov     edi, ?_0849                             ; 67CF _ BF, 00000000(d)
        mov     ecx, 5                                  ; 67D4 _ B9, 00000005
        repe cmpsb                                      ; 67D9 _ F3: A6
        setne   al                                      ; 67DB _ 0F 95. C0
        movzx   eax, al                                 ; 67DE _ 0F B6. C0
        mov     dword [ebp+10094H], eax                 ; 67E1 _ 89. 85, 00010094
        jmp     ?_0815                                  ; 67E7 _ E9, FFFFFD32

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_0841: mov     dword [esp], 32                         ; 67F0 _ C7. 04 24, 00000020
        call    malloc                                  ; 67F7 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 67FC _ 89. C3
        jmp     ?_0821                                  ; 67FE _ E9, FFFFFDAD

; Filling space: 5H
; Filler type: NOP
;       db 90H, 8DH, 74H, 26H, 00H

ALIGN   8
?_0842: mov     dword [esp], eax                        ; 6808 _ 89. 04 24
        call    malloc                                  ; 680B _ E8, FFFFFFFC(rel)
        mov     esi, eax                                ; 6810 _ 89. C6
        jmp     ?_0822                                  ; 6812 _ E9, FFFFFDE8

; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_0843: mov     dword [esp], 100                        ; 6820 _ C7. 04 24, 00000064
        call    malloc                                  ; 6827 _ E8, FFFFFFFC(rel)
        jmp     ?_0823                                  ; 682C _ E9, FFFFFE11

?_0844: mov     eax, dword [ebx+8H]                     ; 6831 _ 8B. 43, 08
        mov     ecx, dword [esp+0CH]                    ; 6834 _ 8B. 4C 24, 0C
        cmp     ecx, eax                                ; 6838 _ 39. C1
        je      ?_0833                                  ; 683A _ 0F 84, FFFFFEC9
        mov     eax, dword [eax+4H]                     ; 6840 _ 8B. 40, 04
        mov     dword [esp+4H], eax                     ; 6843 _ 89. 44 24, 04
        mov     eax, dword [ecx+4H]                     ; 6847 _ 8B. 41, 04
        mov     dword [esp], eax                        ; 684A _ 89. 04 24
        call    strcmp                                  ; 684D _ E8, FFFFFFFC(rel)
        jmp     ?_0834                                  ; 6852 _ E9, FFFFFEC5

?_0845: mov     eax, 1                                  ; 6857 _ B8, 00000001
        jmp     ?_0808                                  ; 685C _ E9, FFFFFBFA

?_0846: mov     dword [edx+8H], 11                      ; 6861 _ C7. 42, 08, 0000000B
        mov     eax, 11                                 ; 6868 _ B8, 0000000B
        jmp     ?_0809                                  ; 686D _ E9, FFFFFBEC

?_0847: mov     dword [ebx+4H], 0                       ; 6872 _ C7. 43, 04, 00000000
        jmp     ?_0824                                  ; 6879 _ E9, FFFFFDEC
; genxAddAttributeLiteral End of function

?_0848: ; Local function
        mov     dword [ebp+8H], 16                      ; 687E _ C7. 45, 08, 00000010
        mov     eax, 16                                 ; 6885 _ B8, 00000010
        jmp     ?_0809                                  ; 688A _ E9, FFFFFBCF

        nop                                             ; 688F _ 90

ALIGN   16
genxGetVersion:; Function begin
        mov     eax, ?_0882                             ; 6890 _ B8, 0000011D(d)
        ret                                             ; 6895 _ C3
; genxGetVersion End of function


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .rodata.str1.1 align=1 noexecute                ; section number 4, const

?_0849:                                                 ; byte
        db 78H, 6DH, 6CH, 6EH, 73H, 00H                 ; 0000 _ xmlns.

?_0850:                                                 ; byte
        db 78H, 6DH, 6CH, 6EH, 73H, 3AH, 25H, 73H       ; 0006 _ xmlns:%s
        db 00H                                          ; 000E _ .

?_0851:                                                 ; byte
        db 3CH, 00H                                     ; 000F _ <.

?_0852:                                                 ; byte
        db 3AH, 00H                                     ; 0011 _ :.

?_0853:                                                 ; byte
        db 20H, 00H                                     ; 0013 _  .

?_0854:                                                 ; byte
        db 3DH, 22H, 00H                                ; 0015 _ =".

?_0855:                                                 ; byte
        db 22H, 00H                                     ; 0018 _ ".

?_0856:                                                 ; byte
        db 3EH, 00H                                     ; 001A _ >.

?_0857:                                                 ; byte
        db 67H, 25H, 64H, 00H                           ; 001C _ g%d.

?_0858:                                                 ; byte
        db 53H, 75H, 63H, 63H, 65H, 73H, 73H, 00H       ; 0020 _ Success.

?_0859:                                                 ; byte
        db 42H, 61H, 64H, 20H, 55H, 54H, 46H, 38H       ; 0028 _ Bad UTF8
        db 00H                                          ; 0030 _ .

?_0860:                                                 ; byte
        db 4EH, 6FH, 6EH, 20H, 58H, 4DH, 4CH, 20H       ; 0031 _ Non XML 
        db 43H, 68H, 61H, 72H, 61H, 63H, 74H, 65H       ; 0039 _ Characte
        db 72H, 00H                                     ; 0041 _ r.

?_0861:                                                 ; byte
        db 42H, 61H, 64H, 20H, 4EH, 41H, 4DH, 45H       ; 0043 _ Bad NAME
        db 00H                                          ; 004B _ .

?_0862:                                                 ; byte
        db 4DH, 65H, 6DH, 6FH, 72H, 79H, 20H, 61H       ; 004C _ Memory a
        db 6CH, 6CH, 6FH, 63H, 61H, 74H, 69H, 6FH       ; 0054 _ llocatio
        db 6EH, 20H, 66H, 61H, 69H, 6CH, 65H, 64H       ; 005C _ n failed
        db 00H                                          ; 0064 _ .

?_0863:                                                 ; byte
        db 42H, 61H, 64H, 20H, 6EH, 61H, 6DH, 65H       ; 0065 _ Bad name
        db 73H, 70H, 61H, 63H, 65H, 20H, 6EH, 61H       ; 006D _ space na
        db 6DH, 65H, 00H                                ; 0075 _ me.

?_0864:                                                 ; byte
        db 49H, 6EH, 74H, 65H, 72H, 6EH, 61H, 6CH       ; 0078 _ Internal
        db 20H, 65H, 72H, 72H, 6FH, 72H, 00H            ; 0080 _  error.

?_0865:                                                 ; byte
        db 44H, 75H, 70H, 6CH, 69H, 63H, 61H, 74H       ; 0087 _ Duplicat
        db 65H, 20H, 70H, 72H, 65H, 66H, 69H, 78H       ; 008F _ e prefix
        db 00H                                          ; 0097 _ .

?_0866:                                                 ; byte
        db 43H, 61H, 6CH, 6CH, 20H, 6FH, 75H, 74H       ; 0098 _ Call out
        db 20H, 6FH, 66H, 20H, 73H, 65H, 71H, 75H       ; 00A0 _  of sequ
        db 65H, 6EH, 63H, 65H, 00H                      ; 00A8 _ ence.

?_0867:                                                 ; byte
        db 49H, 2FH, 4FH, 20H, 65H, 72H, 72H, 6FH       ; 00AD _ I/O erro
        db 72H, 00H                                     ; 00B5 _ r.

?_0868:                                                 ; byte
        db 4DH, 69H, 73H, 73H, 69H, 6EH, 67H, 20H       ; 00B7 _ Missing 
        db 61H, 74H, 74H, 72H, 69H, 62H, 75H, 74H       ; 00BF _ attribut
        db 65H, 20H, 76H, 61H, 6CH, 75H, 65H, 00H       ; 00C7 _ e value.

?_0869:                                                 ; byte
        db 4DH, 61H, 6CH, 66H, 6FH, 72H, 6DH, 65H       ; 00CF _ Malforme
        db 64H, 20H, 63H, 6FH, 6DH, 6DH, 65H, 6EH       ; 00D7 _ d commen
        db 74H, 20H, 62H, 6FH, 64H, 79H, 00H            ; 00DF _ t body.

?_0870:                                                 ; byte
        db 3FH, 3EH, 20H, 69H, 6EH, 20H, 50H, 49H       ; 00E6 _ ?> in PI
        db 00H                                          ; 00EE _ .

?_0871:                                                 ; byte
        db 78H, 6DH, 6CH, 00H                           ; 00EF _ xml.

?_0872:                                                 ; byte
        db 3CH, 2FH, 00H                                ; 00F3 _ </.

?_0873:                                                 ; byte
        db 26H, 23H, 78H, 44H, 3BH, 00H                 ; 00F6 _ &#xD;.

?_0874:                                                 ; byte
        db 26H, 6CH, 74H, 3BH, 00H                      ; 00FC _ &lt;.

?_0875:                                                 ; byte
        db 26H, 61H, 6DH, 70H, 3BH, 00H                 ; 0101 _ &amp;.

?_0876:                                                 ; byte
        db 26H, 67H, 74H, 3BH, 00H                      ; 0107 _ &gt;.

?_0877:                                                 ; byte
        db 0AH, 00H                                     ; 010C _ ..

?_0878:                                                 ; byte
        db 3CH, 21H, 2DH, 2DH, 00H                      ; 010E _ <!--.

?_0879:                                                 ; byte
        db 2DH, 2DH, 3EH, 00H                           ; 0113 _ -->.

?_0880:                                                 ; byte
        db 3CH, 3FH, 00H                                ; 0117 _ <?.

?_0881:                                                 ; byte
        db 3FH, 3EH, 00H                                ; 011A _ ?>.

?_0882:                                                 ; byte
        db 62H, 65H, 74H, 61H, 35H, 00H                 ; 011D _ beta5.


SECTION .rodata align=4 noexecute                       ; section number 5, const

?_0883:                                                 ; switch/case jump table
        dd ?_0087                                       ; 0000 _ 000009C0 (d)
        dd ?_0085                                       ; 0004 _ 00000990 (d)
        dd ?_0089                                       ; 0008 _ 000009F0 (d)
        dd ?_0089                                       ; 000C _ 000009F0 (d)
        dd ?_0083                                       ; 0010 _ 00000960 (d)
        dd ?_0089                                       ; 0014 _ 000009F0 (d)
        dd ?_0089                                       ; 0018 _ 000009F0 (d)
        dd ?_0089                                       ; 001C _ 000009F0 (d)
        dd ?_0089                                       ; 0020 _ 000009F0 (d)
        dd ?_0089                                       ; 0024 _ 000009F0 (d)
        dd ?_0089                                       ; 0028 _ 000009F0 (d)
        dd ?_0089                                       ; 002C _ 000009F0 (d)
        dd ?_0089                                       ; 0030 _ 000009F0 (d)
        dd ?_0089                                       ; 0034 _ 000009F0 (d)
        dd ?_0089                                       ; 0038 _ 000009F0 (d)
        dd ?_0089                                       ; 003C _ 000009F0 (d)
        dd ?_0089                                       ; 0040 _ 000009F0 (d)
        dd ?_0089                                       ; 0044 _ 000009F0 (d)
        dd ?_0089                                       ; 0048 _ 000009F0 (d)
        dd ?_0089                                       ; 004C _ 000009F0 (d)
        dd ?_0089                                       ; 0050 _ 000009F0 (d)
        dd ?_0089                                       ; 0054 _ 000009F0 (d)
        dd ?_0089                                       ; 0058 _ 000009F0 (d)
        dd ?_0089                                       ; 005C _ 000009F0 (d)
        dd ?_0089                                       ; 0060 _ 000009F0 (d)
        dd ?_0081                                       ; 0064 _ 00000930 (d)
        dd ?_0089                                       ; 0068 _ 000009F0 (d)
        dd ?_0089                                       ; 006C _ 000009F0 (d)
        dd ?_0089                                       ; 0070 _ 000009F0 (d)
        dd ?_0079                                       ; 0074 _ 00000900 (d)
        dd ?_0089                                       ; 0078 _ 000009F0 (d)
        dd ?_0089                                       ; 007C _ 000009F0 (d)
        dd ?_0089                                       ; 0080 _ 000009F0 (d)
        dd ?_0089                                       ; 0084 _ 000009F0 (d)
        dd ?_0089                                       ; 0088 _ 000009F0 (d)
        dd ?_0089                                       ; 008C _ 000009F0 (d)
        dd ?_0089                                       ; 0090 _ 000009F0 (d)
        dd ?_0089                                       ; 0094 _ 000009F0 (d)
        dd ?_0089                                       ; 0098 _ 000009F0 (d)
        dd ?_0089                                       ; 009C _ 000009F0 (d)
        dd ?_0089                                       ; 00A0 _ 000009F0 (d)
        dd ?_0089                                       ; 00A4 _ 000009F0 (d)
        dd ?_0089                                       ; 00A8 _ 000009F0 (d)
        dd ?_0089                                       ; 00AC _ 000009F0 (d)
        dd ?_0089                                       ; 00B0 _ 000009F0 (d)
        dd ?_0089                                       ; 00B4 _ 000009F0 (d)
        dd ?_0089                                       ; 00B8 _ 000009F0 (d)
        dd ?_0089                                       ; 00BC _ 000009F0 (d)
        dd ?_0089                                       ; 00C0 _ 000009F0 (d)
        dd ?_0089                                       ; 00C4 _ 000009F0 (d)
        dd ?_0089                                       ; 00C8 _ 000009F0 (d)
        dd ?_0073                                       ; 00CC _ 00000890 (d)


SECTION .rodata.str1.4 align=4 noexecute                ; section number 6, const

?_0884:                                                 ; byte
        db 4EH, 6FH, 20H, 53H, 74H, 61H, 72H, 74H       ; 0000 _ No Start
        db 2DH, 74H, 61H, 67H, 20H, 66H, 6FH, 72H       ; 0008 _ -tag for
        db 20H, 45H, 6EH, 64H, 45H, 6CH, 65H, 6DH       ; 0010 _  EndElem
        db 65H, 6EH, 74H, 20H, 63H, 61H, 6CH, 6CH       ; 0018 _ ent call
        db 00H, 00H, 00H, 00H                           ; 0020 _ ....

?_0885:                                                 ; byte
        db 54H, 61H, 72H, 67H, 65H, 74H, 20H, 6FH       ; 0024 _ Target o
        db 66H, 20H, 50H, 49H, 20H, 6DH, 61H, 74H       ; 002C _ f PI mat
        db 63H, 68H, 65H, 73H, 20H, 5BH, 78H, 58H       ; 0034 _ ches [xX
        db 5DH, 5BH, 6DH, 4DH, 5DH, 5BH, 6CH, 4CH       ; 003C _ ][mM][lL
        db 5DH, 00H, 00H, 00H                           ; 0044 _ ]...

?_0886:                                                 ; byte
        db 53H, 61H, 6DH, 65H, 20H, 61H, 74H, 74H       ; 0048 _ Same att
        db 72H, 69H, 62H, 75H, 74H, 65H, 20H, 73H       ; 0050 _ ribute s
        db 70H, 65H, 63H, 69H, 66H, 69H, 65H, 64H       ; 0058 _ pecified
        db 20H, 6DH, 6FH, 72H, 65H, 20H, 74H, 68H       ; 0060 _  more th
        db 61H, 6EH, 20H, 6FH, 6EH, 63H, 65H, 00H       ; 0068 _ an once.

?_0887:                                                 ; byte
        db 41H, 74H, 74H, 72H, 69H, 62H, 75H, 74H       ; 0070 _ Attribut
        db 65H, 20H, 63H, 61H, 6EH, 6EH, 6FH, 74H       ; 0078 _ e cannot
        db 20H, 62H, 65H, 20H, 69H, 6EH, 20H, 64H       ; 0080 _  be in d
        db 65H, 66H, 61H, 75H, 6CH, 74H, 20H, 6EH       ; 0088 _ efault n
        db 61H, 6DH, 65H, 73H, 70H, 61H, 63H, 65H       ; 0090 _ amespace
        db 00H, 00H, 00H, 00H                           ; 0098 _ ....

?_0888:                                                 ; byte
        db 44H, 65H, 63H, 6CH, 61H, 72H, 65H, 64H       ; 009C _ Declared
        db 20H, 6EH, 61H, 6DH, 65H, 73H, 70H, 61H       ; 00A4 _  namespa
        db 63H, 65H, 20H, 74H, 77H, 69H, 63H, 65H       ; 00AC _ ce twice
        db 20H, 77H, 69H, 74H, 68H, 20H, 64H, 69H       ; 00B4 _  with di
        db 66H, 66H, 65H, 72H, 65H, 6EH, 74H, 20H       ; 00BC _ fferent 
        db 70H, 72H, 65H, 66H, 69H, 78H, 65H, 73H       ; 00C4 _ prefixes
        db 20H, 6FH, 6EH, 20H, 6FH, 6EH, 65H, 20H       ; 00CC _  on one 
        db 65H, 6CH, 65H, 6DH, 65H, 6EH, 74H, 2EH       ; 00D4 _ element.
        db 00H, 00H, 00H, 00H                           ; 00DC _ ....

?_0889:                                                 ; byte
        db 44H, 65H, 63H, 6CH, 61H, 72H, 65H, 64H       ; 00E0 _ Declared
        db 20H, 61H, 20H, 64H, 65H, 66H, 61H, 75H       ; 00E8 _  a defau
        db 6CH, 74H, 20H, 6EH, 61H, 6DH, 65H, 73H       ; 00F0 _ lt names
        db 70H, 61H, 63H, 65H, 20H, 6FH, 6EH, 20H       ; 00F8 _ pace on 
        db 61H, 6EH, 20H, 65H, 6CH, 65H, 6DH, 65H       ; 0100 _ an eleme
        db 6EH, 74H, 20H, 77H, 68H, 69H, 63H, 68H       ; 0108 _ nt which
        db 20H, 69H, 73H, 20H, 69H, 6EH, 20H, 6EH       ; 0110 _  is in n
        db 6FH, 20H, 6EH, 61H, 6DH, 65H, 73H, 70H       ; 0118 _ o namesp
        db 61H, 63H, 65H, 00H                           ; 0120 _ ace.

?_0890:                                                 ; byte
        db 68H, 74H, 74H, 70H, 3AH, 2FH, 2FH, 77H       ; 0124 _ http://w
        db 77H, 77H, 2EH, 77H, 33H, 2EH, 6FH, 72H       ; 012C _ ww.w3.or
        db 67H, 2FH, 58H, 4DH, 4CH, 2FH, 31H, 39H       ; 0134 _ g/XML/19
        db 39H, 38H, 2FH, 6EH, 61H, 6DH, 65H, 73H       ; 013C _ 98/names
        db 70H, 61H, 63H, 65H, 00H                      ; 0144 _ pace.


SECTION .eh_frame align=4 noexecute                     ; section number 7, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 28H, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ (.......
        dd sendx-$-20H                                  ; 0020 _ 00000000 (rel)
        dd 00000040H, 080E4100H                         ; 0024 _ 64 135151872 
        dd 0E430283H, 0E0A5920H                         ; 002C _ 239272579 235559200 
        dd 0EC34108H, 5E0B4204H                         ; 0034 _ 247677192 1577796100 
        dd 0C341080EH, 0000040EH                        ; 003C _ -1019148274 1038 
        dd 0000003CH, 00000048H                         ; 0044 _ 60 72 
        dd sendx-$-0CH                                  ; 004C _ 00000040 (rel)
        dd 000000EAH, 080E4100H                         ; 0050 _ 234 135151872 
        dd 0E430285H, 4103870CH                         ; 0058 _ 239272581 1090750220 
        dd 0486100EH, 83140E41H                         ; 0060 _ 75894798 -2095837631 
        dd 300E4505H, 140E0A5BH                         ; 0068 _ 806241541 336464475 
        dd 100EC341H, 0C0EC641H                         ; 0070 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 0078 _ 135186241 68076865 
        dd 00000B46H, 00000038H                         ; 0080 _ 2886 56 
        dd 00000088H                                    ; 0088 _ 136 
        dd sendx-$+0A4H                                 ; 008C _ 00000130 (rel)
        dd 000000CFH, 080E4100H                         ; 0090 _ 207 135151872 
        dd 0E410286H, 4503830CH                         ; 0098 _ 239141510 1157858060 
        dd 0A50200EH, 0C3410C0EH                        ; 00A0 _ 173023246 -1019147250 
        dd 0C641080EH, 0B47040EH                        ; 00A8 _ -968816626 189203470 
        dd 0E0A7402H, 0EC3460CH                         ; 00B0 _ 235566082 247678476 
        dd 0EC64108H, 000B4504H                         ; 00B8 _ 247873800 738564 
        dd 0000006CH, 000000C4H                         ; 00C0 _ 108 196 
        dd sendx-$+138H                                 ; 00C8 _ 00000200 (rel)
        dd 00000433H, 080E4100H                         ; 00CC _ 1075 135151872 
        dd 0E450285H, 4103870CH                         ; 00D4 _ 239403653 1090750220 
        dd 0486100EH, 83140E41H                         ; 00DC _ 75894798 -2095837631 
        dd 400E4305H, 0A024903H                         ; 00E4 _ 1074676485 167921923 
        dd 0C343140EH, 0C641100EH                       ; 00EC _ -1019014130 -968814578 
        dd 0C7410C0EH, 0C541080EH                       ; 00F4 _ -952038386 -985593842 
        dd 0B46040EH, 0E0A8702H                         ; 00FC _ 189137934 235570946 
        dd 0EC34314H, 0EC64110H                         ; 0104 _ 247677716 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 010C _ 247939340 247808264 
        dd 020B4304H, 140E0A61H                         ; 0114 _ 34292484 336464481 
        dd 100EC343H, 0C0EC641H                         ; 011C _ 269402947 202294849 
        dd 080EC741H, 040EC541H                         ; 0124 _ 135186241 68076865 
        dd 00000B49H, 00000040H                         ; 012C _ 2889 64 
        dd 00000134H                                    ; 0134 _ 308 
        dd sendx-$+508H                                 ; 0138 _ 00000640 (rel)
        dd 000001F4H, 080E4100H                         ; 013C _ 500 135151872 
        dd 0E410285H, 4103870CH                         ; 0144 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 014C _ 75894798 -2095837631 
        dd 0D00E4605H, 01350308H                        ; 0154 _ -804370939 20251400 
        dd 41140E0AH, 41100EC3H                         ; 015C _ 1091833354 1091571395 
        dd 410C0EC6H, 41080EC7H                         ; 0164 _ 1091309254 1091047111 
        dd 45040EC5H, 0000000BH                         ; 016C _ 1157893829 11 
        dd 00000098H, 00000178H                         ; 0174 _ 152 376 
        dd sendx-$+6C4H                                 ; 017C _ 00000840 (rel)
        dd 000008D9H, 080E4100H                         ; 0180 _ 2265 135151872 
        dd 0E410285H, 4103870CH                         ; 0188 _ 239141509 1090750220 
        dd 0486100EH, 83140E43H                         ; 0190 _ 75894798 -2095837629 
        dd 400E4505H, 0E0AA102H                         ; 0198 _ 1074676997 235577602 
        dd 0EC34614H, 0EC64110H                         ; 01A0 _ 247678484 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 01A8 _ 247939340 247808264 
        dd 030B4B04H, 0E0A0292H                         ; 01B0 _ 51071748 235537042 
        dd 0EC34614H, 0EC64110H                         ; 01B8 _ 247678484 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 01C0 _ 247939340 247808264 
        dd 030B4504H, 0E0A03C2H                         ; 01C8 _ 51070212 235537346 
        dd 0EC34614H, 0EC64110H                         ; 01D0 _ 247678484 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 01D8 _ 247939340 247808264 
        dd 6A0B4504H, 46140E0AH                         ; 01E0 _ 1779123460 1175719434 
        dd 41100EC3H, 410C0EC6H                         ; 01E8 _ 1091571395 1091309254 
        dd 41080EC7H, 45040EC5H                         ; 01F0 _ 1091047111 1157893829 
        dd 016A030BH, 0C343140EH                        ; 01F8 _ 23724811 -1019014130 
        dd 0C641100EH, 0C7410C0EH                       ; 0200 _ -968814578 -952038386 
        dd 0C541080EH, 0000040EH                        ; 0208 _ -985593842 1038 
        dd 00000080H, 00000214H                         ; 0210 _ 128 532 
        dd sendx-$+0F08H                                ; 0218 _ 00001120 (rel)
        dd 000001A8H, 080E4100H                         ; 021C _ 424 135151872 
        dd 0E410285H, 4103870CH                         ; 0224 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 022C _ 75894798 -2095837631 
        dd 300E4505H, 0E0ABC02H                         ; 0234 _ 806241541 235584514 
        dd 0EC34114H, 0EC64110H                         ; 023C _ 247677204 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 0244 _ 247939340 247808264 
        dd 4A0B4104H, 43140E0AH                         ; 024C _ 1242251524 1125387786 
        dd 41100EC3H, 410C0EC6H                         ; 0254 _ 1091571395 1091309254 
        dd 41080EC7H, 41040EC5H                         ; 025C _ 1091047111 1090784965 
        dd 0A49020BH, 0C346140EH                        ; 0264 _ 172556811 -1018817522 
        dd 0C641100EH, 0C7410C0EH                       ; 026C _ -968814578 -952038386 
        dd 0C541080EH, 0B41040EH                        ; 0274 _ -985593842 188810254 
        dd 140E0A5FH, 100EC341H                         ; 027C _ 336464479 269402945 
        dd 0C0EC641H, 080EC741H                         ; 0284 _ 202294849 135186241 
        dd 040EC541H, 00000B45H                         ; 028C _ 68076865 2885 
        dd 00000054H, 00000298H                         ; 0294 _ 84 664 
        dd sendx-$+1034H                                ; 029C _ 000012D0 (rel)
        dd 00000280H, 080E4100H                         ; 02A0 _ 640 135151872 
        dd 0E410285H, 4303870CH                         ; 02A8 _ 239141509 1124304652 
        dd 0486100EH, 83140E41H                         ; 02B0 _ 75894798 -2095837631 
        dd 300E4305H, 0E0A5302H                         ; 02B8 _ 806241029 235557634 
        dd 0EC34114H, 0EC64110H                         ; 02C0 _ 247677204 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 02C8 _ 247939340 247808264 
        dd 020B4804H, 140E0A5EH                         ; 02D0 _ 34293764 336464478 
        dd 100EC341H, 0C0EC641H                         ; 02D8 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 02E0 _ 135186241 68076865 
        dd 00000B45H, 0000003CH                         ; 02E8 _ 2885 60 
        dd 000002F0H                                    ; 02F0 _ 752 
        dd sendx-$+125CH                                ; 02F4 _ 00001550 (rel)
        dd 000004DAH, 080E4100H                         ; 02F8 _ 1242 135151872 
        dd 0E410285H, 4103870CH                         ; 0300 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0308 _ 75894798 -2095837631 
        dd 300E4505H, 0E0A8C02H                         ; 0310 _ 806241541 235572226 
        dd 0EC34314H, 0EC64110H                         ; 0318 _ 247677716 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 0320 _ 247939340 247808264 
        dd 000B4504H, 0000003CH                         ; 0328 _ 738564 60 
        dd 00000330H                                    ; 0330 _ 816 
        dd sendx-$+16FCH                                ; 0334 _ 00001A30 (rel)
        dd 000001E4H, 080E4100H                         ; 0338 _ 484 135151872 
        dd 0E410285H, 4103870CH                         ; 0340 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0348 _ 75894798 -2095837631 
        dd 180E4305H, 140E0A5BH                         ; 0350 _ 403587845 336464475 
        dd 100EC341H, 0C0EC641H                         ; 0358 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 0360 _ 135186241 68076865 
        dd 00000B4AH, 00000040H                         ; 0368 _ 2890 64 
        dd 00000370H                                    ; 0370 _ 880 
        dd sendx-$+18ACH                                ; 0374 _ 00001C20 (rel)
        dd 000004B4H, 080E4100H                         ; 0378 _ 1204 135151872 
        dd 0E410285H, 4103870CH                         ; 0380 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0388 _ 75894798 -2095837631 
        dd 0B00E4805H, 011A0301H                        ; 0390 _ -1341241339 18481921 
        dd 41140E0AH, 41100EC3H                         ; 0398 _ 1091833354 1091571395 
        dd 410C0EC6H, 41080EC7H                         ; 03A0 _ 1091309254 1091047111 
        dd 46040EC5H, 0000000BH                         ; 03A8 _ 1174671045 11 
        dd 00000010H, 000003B4H                         ; 03B0 _ 16 948 
        dd sendx-$+1D28H                                ; 03B8 _ 000020E0 (rel)
        dd 0000000FH, 00000000H                         ; 03BC _ 15 0 
        dd 00000010H, 000003C8H                         ; 03C4 _ 16 968 
        dd ?_0252-$+3CCH                                ; 03CC _ 000020F0 (rel)
        dd 0000000BH, 00000000H                         ; 03D0 _ 11 0 
        dd 00000010H, 000003DCH                         ; 03D8 _ 16 988 
        dd sendx-$+1D20H                                ; 03E0 _ 00002100 (rel)
        dd 0000000FH, 00000000H                         ; 03E4 _ 15 0 
        dd 00000010H, 000003F0H                         ; 03EC _ 16 1008 
        dd sendx-$+1D1CH                                ; 03F4 _ 00002110 (rel)
        dd 0000000FH, 00000000H                         ; 03F8 _ 15 0 
        dd 00000010H, 00000404H                         ; 0400 _ 16 1028 
        dd ?_0250-$+408H                                ; 0408 _ 00002120 (rel)
        dd 0000000BH, 00000000H                         ; 040C _ 11 0 
        dd 00000010H, 00000418H                         ; 0414 _ 16 1048 
        dd sendx-$+1D14H                                ; 041C _ 00002130 (rel)
        dd 0000000BH, 00000000H                         ; 0420 _ 11 0 
        dd 00000054H, 0000042CH                         ; 0428 _ 84 1068 
        dd sendx-$+1D10H                                ; 0430 _ 00002140 (rel)
        dd 000004C7H, 080E4100H                         ; 0434 _ 1223 135151872 
        dd 0E410285H, 4103870CH                         ; 043C _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0444 _ 75894798 -2095837631 
        dd 300E4305H, 0A03F403H                         ; 044C _ 806241029 168031235 
        dd 0C341140EH, 0C641100EH                       ; 0454 _ -1019145202 -968814578 
        dd 0C7410C0EH, 0C541080EH                       ; 045C _ -952038386 -985593842 
        dd 0B41040EH, 0E0A6D02H                         ; 0464 _ 188810254 235564290 
        dd 0EC34114H, 0EC64110H                         ; 046C _ 247677204 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 0474 _ 247939340 247808264 
        dd 000B4504H, 0000004CH                         ; 047C _ 738564 76 
        dd 00000484H                                    ; 0484 _ 1156 
        dd ?_0281-$+488H                                ; 0488 _ 00002610 (rel)
        dd 000001CFH, 080E4100H                         ; 048C _ 463 135151872 
        dd 0E410285H, 4103870CH                         ; 0494 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 049C _ 75894798 -2095837631 
        dd 0AA20205H, 41100EC3H                         ; 04A4 _ 178389509 1091571395 
        dd 410C0EC6H, 41080EC7H                         ; 04AC _ 1091309254 1091047111 
        dd 47040EC5H, 0AE1020BH                         ; 04B4 _ 1191448261 182518283 
        dd 43100EC3H, 410C0EC6H                         ; 04BC _ 1125125827 1091309254 
        dd 41080EC7H, 4A040EC5H                         ; 04C4 _ 1091047111 1241779909 
        dd 0000000BH, 0000003CH                         ; 04CC _ 11 60 
        dd 000004D4H                                    ; 04D4 _ 1236 
        dd sendx-$+2308H                                ; 04D8 _ 000027E0 (rel)
        dd 00000302H, 080E4100H                         ; 04DC _ 770 135151872 
        dd 0E410285H, 4103870CH                         ; 04E4 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 04EC _ 75894798 -2095837631 
        dd 200E4305H, 0E0AF202H                         ; 04F4 _ 537805573 235598338 
        dd 0EC34114H, 0EC64110H                         ; 04FC _ 247677204 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 0504 _ 247939340 247808264 
        dd 000B4304H, 00000010H                         ; 050C _ 738052 16 
        dd 00000514H                                    ; 0514 _ 1300 
        dd sendx-$+25D8H                                ; 0518 _ 00002AF0 (rel)
        dd 00000063H, 00000000H                         ; 051C _ 99 0 
        dd 00000010H, 00000528H                         ; 0524 _ 16 1320 
        dd ?_0325-$+52CH                                ; 052C _ 00002B60 (rel)
        dd 00000010H, 00000000H                         ; 0530 _ 16 0 
        dd 00000010H, 0000053CH                         ; 0538 _ 16 1340 
        dd sendx-$+2630H                                ; 0540 _ 00002B70 (rel)
        dd 0000000FH, 00000000H                         ; 0544 _ 15 0 
        dd 00000040H, 00000550H                         ; 054C _ 64 1360 
        dd ?_0324-$+554H                                ; 0554 _ 00002B80 (rel)
        dd 0000074EH, 080E4100H                         ; 0558 _ 1870 135151872 
        dd 0E410285H, 4103870CH                         ; 0560 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0568 _ 75894798 -2095837631 
        dd 0C00E4605H, 01280301H                        ; 0570 _ -1072806395 19399425 
        dd 41140E0AH, 41100EC3H                         ; 0578 _ 1091833354 1091571395 
        dd 410C0EC6H, 41080EC7H                         ; 0580 _ 1091309254 1091047111 
        dd 4A040EC5H, 0000000BH                         ; 0588 _ 1241779909 11 
        dd 00000048H, 00000594H                         ; 0590 _ 72 1428 
        dd sendx-$+2D38H                                ; 0598 _ 000032D0 (rel)
        dd 00000469H, 080E4100H                         ; 059C _ 1129 135151872 
        dd 0E410287H, 4103860CH                         ; 05A4 _ 239141511 1090749964 
        dd 0483100EH, 03200E43H                         ; 05AC _ 75698190 52432451 
        dd 0E0A036AH, 0EC34310H                         ; 05B4 _ 235537258 247677712 
        dd 0EC6410CH, 0EC74108H                         ; 05BC _ 247873804 247939336 
        dd 630B4B04H, 43100E0AH                         ; 05C4 _ 1661684484 1125125642 
        dd 410C0EC3H, 41080EC6H                         ; 05CC _ 1091309251 1091047110 
        dd 48040EC7H, 0000000BH                         ; 05D4 _ 1208225479 11 
        dd 00000010H, 000005E0H                         ; 05DC _ 16 1504 
        dd sendx-$+315CH                                ; 05E4 _ 00003740 (rel)
        dd 00000033H, 00000000H                         ; 05E8 _ 51 0 
        dd 00000054H, 000005F4H                         ; 05F0 _ 84 1524 
        dd sendx-$+3188H                                ; 05F8 _ 00003780 (rel)
        dd 000002A4H, 080E4100H                         ; 05FC _ 676 135151872 
        dd 0E410285H, 4103870CH                         ; 0604 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 060C _ 75894798 -2095837631 
        dd 400E4305H, 140E0A68H                         ; 0614 _ 1074676485 336464488 
        dd 100EC341H, 0C0EC641H                         ; 061C _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 0624 _ 135186241 68076865 
        dd 0B7030B41H, 140E0A01H                        ; 062C _ -1224537279 336464385 
        dd 100EC343H, 0C0EC641H                         ; 0634 _ 269402947 202294849 
        dd 080EC741H, 040EC541H                         ; 063C _ 135186241 68076865 
        dd 00000B41H, 00000080H                         ; 0644 _ 2881 128 
        dd 0000064CH                                    ; 064C _ 1612 
        dd sendx-$+33E0H                                ; 0650 _ 00003A30 (rel)
        dd 00000576H, 080E4100H                         ; 0654 _ 1398 135151872 
        dd 0E410285H, 4103870CH                         ; 065C _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0664 _ 75894798 -2095837631 
        dd 400E4305H, 140E0A66H                         ; 066C _ 1074676485 336464486 
        dd 100EC343H, 0C0EC641H                         ; 0674 _ 269402947 202294849 
        dd 080EC741H, 040EC541H                         ; 067C _ 135186241 68076865 
        dd 7F030B45H, 140E0A03H                         ; 0684 _ 2130905925 336464387 
        dd 100EC343H, 0C0EC641H                         ; 068C _ 269402947 202294849 
        dd 080EC741H, 040EC541H                         ; 0694 _ 135186241 68076865 
        dd 8F020B43H, 43140E0AH                         ; 069C _ -1895691453 1125387786 
        dd 41100EC3H, 410C0EC6H                         ; 06A4 _ 1091571395 1091309254 
        dd 41080EC7H, 4B040EC5H                         ; 06AC _ 1091047111 1258557125 
        dd 0A61020BH, 0C343140EH                        ; 06B4 _ 174129675 -1019014130 
        dd 0C641100EH, 0C7410C0EH                       ; 06BC _ -968814578 -952038386 
        dd 0C541080EH, 0B41040EH                        ; 06C4 _ -985593842 188810254 
        dd 00000010H, 000006D0H                         ; 06CC _ 16 1744 
        dd sendx-$+38DCH                                ; 06D4 _ 00003FB0 (rel)
        dd 00000037H, 00000000H                         ; 06D8 _ 55 0 
        dd 00000010H, 000006E4H                         ; 06E0 _ 16 1764 
        dd sendx-$+3908H                                ; 06E8 _ 00003FF0 (rel)
        dd 00000037H, 00000000H                         ; 06EC _ 55 0 
        dd 00000010H, 000006F8H                         ; 06F4 _ 16 1784 
        dd sendx-$+3934H                                ; 06FC _ 00004030 (rel)
        dd 00000025H, 00000000H                         ; 0700 _ 37 0 
        dd 00000048H, 0000070CH                         ; 0708 _ 72 1804 
        dd sendx-$+3950H                                ; 0710 _ 00004060 (rel)
        dd 000000B4H, 080E4100H                         ; 0714 _ 180 135151872 
        dd 0E410287H, 4103860CH                         ; 071C _ 239141511 1090749964 
        dd 0483100EH, 0C30A7402H                        ; 0724 _ 75698190 -1022725118 
        dd 0C6410C0EH, 0C741080EH                       ; 072C _ -968815602 -952039410 
        dd 0B47040EH, 0EC30A57H                         ; 0734 _ 189203470 247663191 
        dd 0EC6410CH, 0EC74108H                         ; 073C _ 247873804 247939336 
        dd 510B4704H, 410C0EC3H                         ; 0744 _ 1359693572 1091309251 
        dd 41080EC6H, 00040EC7H                         ; 074C _ 1091047110 265927 
        dd 00000010H, 00000758H                         ; 0754 _ 16 1880 
        dd sendx-$+39C4H                                ; 075C _ 00004120 (rel)
        dd 00000025H, 00000000H                         ; 0760 _ 37 0 
        dd 00000024H, 0000076CH                         ; 0768 _ 36 1900 
        dd sendx-$+39E0H                                ; 0770 _ 00004150 (rel)
        dd 0000004EH, 080E4100H                         ; 0774 _ 78 135151872 
        dd 0A620283H, 45040EC3H                         ; 077C _ 174195331 1157893827 
        dd 0C30A4C0BH, 0B4C040EH                        ; 0784 _ -1022735349 189531150 
        dd 040EC34DH, 00000054H                         ; 078C _ 68076365 84 
        dd 00000794H                                    ; 0794 _ 1940 
        dd sendx-$+3A08H                                ; 0798 _ 000041A0 (rel)
        dd 000002E4H, 080E4100H                         ; 079C _ 740 135151872 
        dd 0E410285H, 4103870CH                         ; 07A4 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 07AC _ 75894798 -2095837631 
        dd 300E4305H, 0E0AB602H                         ; 07B4 _ 806241029 235582978 
        dd 0EC34314H, 0EC64110H                         ; 07BC _ 247677716 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 07C4 _ 247939340 247808264 
        dd 620B4504H, 46140E0AH                         ; 07CC _ 1644905732 1175719434 
        dd 43100EC3H, 410C0EC6H                         ; 07D4 _ 1125125827 1091309254 
        dd 41080EC7H, 4B040EC5H                         ; 07DC _ 1091047111 1258557125 
        dd 0000000BH, 00000050H                         ; 07E4 _ 11 80 
        dd 000007ECH                                    ; 07EC _ 2028 
        dd sendx-$+3CA0H                                ; 07F0 _ 00004490 (rel)
        dd 00000561H, 080E4100H                         ; 07F4 _ 1377 135151872 
        dd 0E410285H, 4103870CH                         ; 07FC _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0804 _ 75894798 -2095837631 
        dd 400E4305H, 140E0A67H                         ; 080C _ 1074676485 336464487 
        dd 100EC341H, 0C0EC641H                         ; 0814 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 081C _ 135186241 68076865 
        dd 0A7F0B46H, 0C341140EH                        ; 0824 _ 176098118 -1019145202 
        dd 0C641100EH, 0C7410C0EH                       ; 082C _ -968814578 -952038386 
        dd 0C541080EH, 0B45040EH                        ; 0834 _ -985593842 189072398 
        dd 0000006CH, 00000840H                         ; 083C _ 108 2112 
        dd sendx-$+41BCH                                ; 0844 _ 00004A00 (rel)
        dd 000005B9H, 080E4100H                         ; 0848 _ 1465 135151872 
        dd 0E410285H, 4103870CH                         ; 0850 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0858 _ 75894798 -2095837631 
        dd 400E4305H, 140E0A6BH                         ; 0860 _ 1074676485 336464491 
        dd 100EC341H, 0C0EC641H                         ; 0868 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 0870 _ 135186241 68076865 
        dd 54020B4AH, 41140E0AH                         ; 0878 _ 1409420106 1091833354 
        dd 41100EC3H, 410C0EC6H                         ; 0880 _ 1091571395 1091309254 
        dd 41080EC7H, 48040EC5H                         ; 0888 _ 1091047111 1208225477 
        dd 0334030BH, 41140E0AH                         ; 0890 _ 53740299 1091833354 
        dd 41100EC3H, 410C0EC6H                         ; 0898 _ 1091571395 1091309254 
        dd 41080EC7H, 48040EC5H                         ; 08A0 _ 1091047111 1208225477 
        dd 0000000BH, 0000006CH                         ; 08A8 _ 11 108 
        dd 000008B0H                                    ; 08B0 _ 2224 
        dd sendx-$+470CH                                ; 08B4 _ 00004FC0 (rel)
        dd 000005E4H, 080E4100H                         ; 08B8 _ 1508 135151872 
        dd 0E410285H, 4103870CH                         ; 08C0 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 08C8 _ 75894798 -2095837631 
        dd 500E4305H, 140E0A6DH                         ; 08D0 _ 1343111941 336464493 
        dd 100EC341H, 0C0EC641H                         ; 08D8 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 08E0 _ 135186241 68076865 
        dd 4B020B48H, 41140E0AH                         ; 08E8 _ 1258425160 1091833354 
        dd 41100EC3H, 410C0EC6H                         ; 08F0 _ 1091571395 1091309254 
        dd 41080EC7H, 41040EC5H                         ; 08F8 _ 1091047111 1090784965 
        dd 0363030BH, 41140E0AH                         ; 0900 _ 56820491 1091833354 
        dd 41100EC3H, 410C0EC6H                         ; 0908 _ 1091571395 1091309254 
        dd 41080EC7H, 49040EC5H                         ; 0910 _ 1091047111 1225002693 
        dd 0000000BH, 00000034H                         ; 0918 _ 11 52 
        dd 00000920H                                    ; 0920 _ 2336 
        dd sendx-$+4C8CH                                ; 0924 _ 000055B0 (rel)
        dd 00000417H, 080E4100H                         ; 0928 _ 1047 135151872 
        dd 0E410287H, 4103860CH                         ; 0930 _ 239141511 1090749964 
        dd 0483100EH, 02300E43H                         ; 0938 _ 75698190 36703811 
        dd 100E0A40H, 0C0EC341H                         ; 0940 _ 269355584 202294081 
        dd 080EC641H, 040EC741H                         ; 0948 _ 135185985 68077377 
        dd 00000B47H, 0000002CH                         ; 0950 _ 2887 44 
        dd 00000958H                                    ; 0958 _ 2392 
        dd sendx-$+5074H                                ; 095C _ 000059D0 (rel)
        dd 00000058H, 080E4100H                         ; 0960 _ 88 135151872 
        dd 0E430283H, 0E0A5920H                         ; 0968 _ 239272579 235559200 
        dd 0EC34108H, 580B4204H                         ; 0970 _ 247677192 1477132804 
        dd 43080E0AH, 45040EC3H                         ; 0978 _ 1124601354 1157893827 
        dd 0000000BH, 00000054H                         ; 0980 _ 11 84 
        dd 00000988H                                    ; 0988 _ 2440 
        dd sendx-$+50A4H                                ; 098C _ 00005A30 (rel)
        dd 000003CBH, 080E4100H                         ; 0990 _ 971 135151872 
        dd 0E410285H, 4103870CH                         ; 0998 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 09A0 _ 75894798 -2095837631 
        dd 300E4305H, 140E0A5AH                         ; 09A8 _ 806241029 336464474 
        dd 100EC343H, 0C0EC641H                         ; 09B0 _ 269402947 202294849 
        dd 080EC741H, 040EC541H                         ; 09B8 _ 135186241 68076865 
        dd 0BB020B49H, 43140E0AH                        ; 09C0 _ -1157493943 1125387786 
        dd 41100EC3H, 410C0EC6H                         ; 09C8 _ 1091571395 1091309254 
        dd 41080EC7H, 47040EC5H                         ; 09D0 _ 1091047111 1191448261 
        dd 0000000BH, 00000054H                         ; 09D8 _ 11 84 
        dd 000009E0H                                    ; 09E0 _ 2528 
        dd sendx-$+541CH                                ; 09E4 _ 00005E00 (rel)
        dd 000004EBH, 080E4100H                         ; 09E8 _ 1259 135151872 
        dd 0E410285H, 4103870CH                         ; 09F0 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 09F8 _ 75894798 -2095837631 
        dd 400E4305H, 140E0A5EH                         ; 0A00 _ 1074676485 336464478 
        dd 100EC343H, 0C0EC641H                         ; 0A08 _ 269402947 202294849 
        dd 080EC741H, 040EC541H                         ; 0A10 _ 135186241 68076865 
        dd 2B030B45H, 140E0A01H                         ; 0A18 _ 721619781 336464385 
        dd 100EC343H, 0C0EC641H                         ; 0A20 _ 269402947 202294849 
        dd 080EC741H, 040EC541H                         ; 0A28 _ 135186241 68076865 
        dd 00000B47H, 00000044H                         ; 0A30 _ 2887 68 
        dd 00000A38H                                    ; 0A38 _ 2616 
        dd sendx-$+58B4H                                ; 0A3C _ 000062F0 (rel)
        dd 0000012AH, 080E4100H                         ; 0A40 _ 298 135151872 
        dd 0E410287H, 4103860CH                         ; 0A48 _ 239141511 1090749964 
        dd 0483100EH, 02200E43H                         ; 0A50 _ 75698190 35655235 
        dd 100E0A59H, 0C0EC341H                         ; 0A58 _ 269355609 202294081 
        dd 080EC641H, 040EC741H                         ; 0A60 _ 135185985 68077377 
        dd 0BE020B46H, 0C341100EH                       ; 0A68 _ -1107162298 -1019146226 
        dd 0C6410C0EH, 0C741080EH                       ; 0A70 _ -968815602 -952039410 
        dd 0000040EH, 0000006CH                         ; 0A78 _ 1038 108 
        dd 00000A80H                                    ; 0A80 _ 2688 
        dd sendx-$+599CH                                ; 0A84 _ 00006420 (rel)
        dd 0000046FH, 080E4100H                         ; 0A88 _ 1135 135151872 
        dd 0E410285H, 4103870CH                         ; 0A90 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0A98 _ 75894798 -2095837631 
        dd 400E4305H, 140E0A7AH                         ; 0AA0 _ 1074676485 336464506 
        dd 100EC341H, 0C0EC641H                         ; 0AA8 _ 269402945 202294849 
        dd 080EC741H, 040EC541H                         ; 0AB0 _ 135186241 68076865 
        dd 04030B4BH, 140E0A02H                         ; 0AB8 _ 67308363 336464386 
        dd 100EC346H, 0C0EC641H                         ; 0AC0 _ 269402950 202294849 
        dd 080EC741H, 040EC541H                         ; 0AC8 _ 135186241 68076865 
        dd 0BD020B41H, 46140E0AH                        ; 0AD0 _ -1123939519 1175719434 
        dd 41100EC3H, 410C0EC6H                         ; 0AD8 _ 1091571395 1091309254 
        dd 41080EC7H, 44040EC5H                         ; 0AE0 _ 1091047111 1141116613 
        dd 0000000BH, 00000010H                         ; 0AE8 _ 11 16 
        dd 00000AF0H                                    ; 0AF0 _ 2800 
        dd sendx-$+5D9CH                                ; 0AF4 _ 00006890 (rel)
        dd 00000006H, 00000000H                         ; 0AF8 _ 6 0 


