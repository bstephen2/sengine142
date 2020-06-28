; Disassembly of file: md5.o
; Thu May 21 10:21:24 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global md5_init: function
global md5_append: function
global md5_finish: function

extern __stack_chk_fail                                 ; near
extern memcpy                                           ; near


SECTION .text   align=16 execute                        ; section number 1, code

md5_process:; Local function
        push    ebp                                     ; 0000 _ 55
        push    edi                                     ; 0001 _ 57
        push    esi                                     ; 0002 _ 56
        push    ebx                                     ; 0003 _ 53
        sub     esp, 152                                ; 0004 _ 81. EC, 00000098
        mov     edi, dword [eax+8H]                     ; 000A _ 8B. 78, 08
        mov     dword [esp+54H], eax                    ; 000D _ 89. 44 24, 54
        cmp     byte [w.1853], 0                        ; 0011 _ 80. 3D, 00000040(d), 00
        mov     dword [esp+44H], edi                    ; 0018 _ 89. 7C 24, 44
        mov     edi, dword [eax+0CH]                    ; 001C _ 8B. 78, 0C
        mov     dword [esp], edi                        ; 001F _ 89. 3C 24
        mov     edi, dword [eax+10H]                    ; 0022 _ 8B. 78, 10
        mov     eax, dword [eax+14H]                    ; 0025 _ 8B. 40, 14
        mov     dword [esp+4H], edi                     ; 0028 _ 89. 7C 24, 04
        mov     dword [esp+8H], eax                     ; 002C _ 89. 44 24, 08
        je      ?_002                                   ; 0030 _ 0F 84, 0000075A
        test    dl, 03H                                 ; 0036 _ F6. C2, 03
        jne     ?_004                                   ; 0039 _ 0F 85, 00000799
?_001:  mov     ebp, dword [esp]                        ; 003F _ 8B. 2C 24
        mov     eax, dword [edx]                        ; 0042 _ 8B. 02
        mov     edi, dword [esp+4H]                     ; 0044 _ 8B. 7C 24, 04
        mov     ebx, dword [esp+44H]                    ; 0048 _ 8B. 5C 24, 44
        mov     esi, eax                                ; 004C _ 89. C6
        mov     eax, ebp                                ; 004E _ 89. E8
        not     eax                                     ; 0050 _ F7. D0
        mov     ecx, edi                                ; 0052 _ 89. F9
        mov     dword [esp+48H], esi                    ; 0054 _ 89. 74 24, 48
        and     eax, dword [esp+8H]                     ; 0058 _ 23. 44 24, 08
        and     ecx, ebp                                ; 005C _ 21. E9
        or      eax, ecx                                ; 005E _ 09. C8
        mov     ecx, dword [edx+4H]                     ; 0060 _ 8B. 4A, 04
        lea     ebx, [ebx+eax-28955B88H]                ; 0063 _ 8D. 9C 03, D76AA478
        add     ebx, esi                                ; 006A _ 01. F3
        mov     esi, dword [esp+8H]                     ; 006C _ 8B. 74 24, 08
        ror     ebx, 25                                 ; 0070 _ C1. CB, 19
        add     ebx, ebp                                ; 0073 _ 01. EB
        mov     dword [esp+0CH], ecx                    ; 0075 _ 89. 4C 24, 0C
        mov     eax, ebx                                ; 0079 _ 89. D8
        lea     ecx, [esi+ecx-173848AAH]                ; 007B _ 8D. 8C 0E, E8C7B756
        not     eax                                     ; 0082 _ F7. D0
        mov     esi, ebp                                ; 0084 _ 89. EE
        and     esi, ebx                                ; 0086 _ 21. DE
        and     eax, edi                                ; 0088 _ 21. F8
        or      eax, esi                                ; 008A _ 09. F0
        mov     esi, dword [edx+8H]                     ; 008C _ 8B. 72, 08
        add     ecx, eax                                ; 008F _ 01. C1
        ror     ecx, 20                                 ; 0091 _ C1. C9, 14
        add     ecx, ebx                                ; 0094 _ 01. D9
        mov     eax, ecx                                ; 0096 _ 89. C8
        mov     dword [esp+4CH], esi                    ; 0098 _ 89. 74 24, 4C
        lea     esi, [edi+esi+242070DBH]                ; 009C _ 8D. B4 37, 242070DB
        not     eax                                     ; 00A3 _ F7. D0
        mov     edi, ecx                                ; 00A5 _ 89. CF
        and     edi, ebx                                ; 00A7 _ 21. DF
        and     eax, ebp                                ; 00A9 _ 21. E8
        or      eax, edi                                ; 00AB _ 09. F8
        mov     edi, dword [edx+0CH]                    ; 00AD _ 8B. 7A, 0C
        add     eax, esi                                ; 00B0 _ 01. F0
        ror     eax, 15                                 ; 00B2 _ C1. C8, 0F
        add     eax, ecx                                ; 00B5 _ 01. C8
        mov     dword [esp+10H], edi                    ; 00B7 _ 89. 7C 24, 10
        lea     edi, [ebp+edi-3E423112H]                ; 00BB _ 8D. BC 3D, C1BDCEEE
        mov     ebp, eax                                ; 00C2 _ 89. C5
        not     ebp                                     ; 00C4 _ F7. D5
        mov     esi, ebp                                ; 00C6 _ 89. EE
        mov     ebp, eax                                ; 00C8 _ 89. C5
        and     ebp, ecx                                ; 00CA _ 21. CD
        and     esi, ebx                                ; 00CC _ 21. DE
        or      esi, ebp                                ; 00CE _ 09. EE
        mov     ebp, dword [edx+10H]                    ; 00D0 _ 8B. 6A, 10
        add     esi, edi                                ; 00D3 _ 01. FE
        ror     esi, 10                                 ; 00D5 _ C1. CE, 0A
        add     esi, eax                                ; 00D8 _ 01. C6
        lea     edi, [ebx+ebp-0A83F051H]                ; 00DA _ 8D. BC 2B, F57C0FAF
        mov     ebx, esi                                ; 00E1 _ 89. F3
        mov     dword [esp+14H], ebp                    ; 00E3 _ 89. 6C 24, 14
        not     ebx                                     ; 00E7 _ F7. D3
        mov     ebp, esi                                ; 00E9 _ 89. F5
        and     ebp, eax                                ; 00EB _ 21. C5
        and     ebx, ecx                                ; 00ED _ 21. CB
        or      ebx, ebp                                ; 00EF _ 09. EB
        mov     ebp, dword [edx+14H]                    ; 00F1 _ 8B. 6A, 14
        add     ebx, edi                                ; 00F4 _ 01. FB
        ror     ebx, 25                                 ; 00F6 _ C1. CB, 19
        add     ebx, esi                                ; 00F9 _ 01. F3
        lea     edi, [ecx+ebp+4787C62AH]                ; 00FB _ 8D. BC 29, 4787C62A
        mov     ecx, ebx                                ; 0102 _ 89. D9
        mov     dword [esp+18H], ebp                    ; 0104 _ 89. 6C 24, 18
        not     ecx                                     ; 0108 _ F7. D1
        mov     ebp, ebx                                ; 010A _ 89. DD
        and     ebp, esi                                ; 010C _ 21. F5
        and     ecx, eax                                ; 010E _ 21. C1
        or      ecx, ebp                                ; 0110 _ 09. E9
        add     ecx, edi                                ; 0112 _ 01. F9
        mov     edi, dword [edx+18H]                    ; 0114 _ 8B. 7A, 18
        ror     ecx, 20                                 ; 0117 _ C1. C9, 14
        add     ecx, ebx                                ; 011A _ 01. D9
        mov     ebp, ecx                                ; 011C _ 89. CD
        mov     dword [esp+1CH], edi                    ; 011E _ 89. 7C 24, 1C
        lea     edi, [eax+edi-57CFB9EDH]                ; 0122 _ 8D. BC 38, A8304613
        mov     eax, ecx                                ; 0129 _ 89. C8
        not     eax                                     ; 012B _ F7. D0
        and     ebp, ebx                                ; 012D _ 21. DD
        and     eax, esi                                ; 012F _ 21. F0
        or      eax, ebp                                ; 0131 _ 09. E8
        mov     ebp, dword [edx+1CH]                    ; 0133 _ 8B. 6A, 1C
        add     eax, edi                                ; 0136 _ 01. F8
        ror     eax, 15                                 ; 0138 _ C1. C8, 0F
        add     eax, ecx                                ; 013B _ 01. C8
        lea     edi, [esi+ebp-2B96AFFH]                 ; 013D _ 8D. BC 2E, FD469501
        mov     esi, eax                                ; 0144 _ 89. C6
        mov     dword [esp+20H], ebp                    ; 0146 _ 89. 6C 24, 20
        not     esi                                     ; 014A _ F7. D6
        mov     ebp, eax                                ; 014C _ 89. C5
        and     ebp, ecx                                ; 014E _ 21. CD
        and     esi, ebx                                ; 0150 _ 21. DE
        or      esi, ebp                                ; 0152 _ 09. EE
        add     esi, edi                                ; 0154 _ 01. FE
        mov     edi, dword [edx+20H]                    ; 0156 _ 8B. 7A, 20
        ror     esi, 10                                 ; 0159 _ C1. CE, 0A
        add     esi, eax                                ; 015C _ 01. C6
        mov     ebp, esi                                ; 015E _ 89. F5
        mov     dword [esp+24H], edi                    ; 0160 _ 89. 7C 24, 24
        lea     edi, [ebx+edi+698098D8H]                ; 0164 _ 8D. BC 3B, 698098D8
        mov     ebx, esi                                ; 016B _ 89. F3
        not     ebx                                     ; 016D _ F7. D3
        and     ebp, eax                                ; 016F _ 21. C5
        and     ebx, ecx                                ; 0171 _ 21. CB
        or      ebx, ebp                                ; 0173 _ 09. EB
        mov     ebp, dword [edx+24H]                    ; 0175 _ 8B. 6A, 24
        add     ebx, edi                                ; 0178 _ 01. FB
        ror     ebx, 25                                 ; 017A _ C1. CB, 19
        add     ebx, esi                                ; 017D _ 01. F3
        lea     edi, [ecx+ebp-74BB0851H]                ; 017F _ 8D. BC 29, 8B44F7AF
        mov     ecx, ebx                                ; 0186 _ 89. D9
        mov     dword [esp+28H], ebp                    ; 0188 _ 89. 6C 24, 28
        not     ecx                                     ; 018C _ F7. D1
        mov     ebp, ebx                                ; 018E _ 89. DD
        and     ebp, esi                                ; 0190 _ 21. F5
        and     ecx, eax                                ; 0192 _ 21. C1
        or      ecx, ebp                                ; 0194 _ 09. E9
        add     ecx, edi                                ; 0196 _ 01. F9
        mov     edi, dword [edx+28H]                    ; 0198 _ 8B. 7A, 28
        ror     ecx, 20                                 ; 019B _ C1. C9, 14
        add     ecx, ebx                                ; 019E _ 01. D9
        mov     ebp, ecx                                ; 01A0 _ 89. CD
        mov     dword [esp+2CH], edi                    ; 01A2 _ 89. 7C 24, 2C
        lea     edi, [eax+edi-0A44FH]                   ; 01A6 _ 8D. BC 38, FFFF5BB1
        mov     eax, ecx                                ; 01AD _ 89. C8
        not     eax                                     ; 01AF _ F7. D0
        and     ebp, ebx                                ; 01B1 _ 21. DD
        and     eax, esi                                ; 01B3 _ 21. F0
        or      eax, ebp                                ; 01B5 _ 09. E8
        mov     ebp, dword [edx+2CH]                    ; 01B7 _ 8B. 6A, 2C
        add     eax, edi                                ; 01BA _ 01. F8
        ror     eax, 15                                 ; 01BC _ C1. C8, 0F
        add     eax, ecx                                ; 01BF _ 01. C8
        lea     edi, [esi+ebp-76A32842H]                ; 01C1 _ 8D. BC 2E, 895CD7BE
        mov     esi, eax                                ; 01C8 _ 89. C6
        mov     dword [esp+30H], ebp                    ; 01CA _ 89. 6C 24, 30
        not     esi                                     ; 01CE _ F7. D6
        mov     ebp, eax                                ; 01D0 _ 89. C5
        and     esi, ebx                                ; 01D2 _ 21. DE
        and     ebp, ecx                                ; 01D4 _ 21. CD
        or      esi, ebp                                ; 01D6 _ 09. EE
        add     esi, edi                                ; 01D8 _ 01. FE
        mov     edi, dword [edx+30H]                    ; 01DA _ 8B. 7A, 30
        ror     esi, 10                                 ; 01DD _ C1. CE, 0A
        add     esi, eax                                ; 01E0 _ 01. C6
        mov     ebp, esi                                ; 01E2 _ 89. F5
        mov     dword [esp+34H], edi                    ; 01E4 _ 89. 7C 24, 34
        lea     edi, [ebx+edi+6B901122H]                ; 01E8 _ 8D. BC 3B, 6B901122
        mov     ebx, esi                                ; 01EF _ 89. F3
        not     ebx                                     ; 01F1 _ F7. D3
        and     ebp, eax                                ; 01F3 _ 21. C5
        and     ebx, ecx                                ; 01F5 _ 21. CB
        or      ebx, ebp                                ; 01F7 _ 09. EB
        mov     ebp, dword [edx+34H]                    ; 01F9 _ 8B. 6A, 34
        add     ebx, edi                                ; 01FC _ 01. FB
        ror     ebx, 25                                 ; 01FE _ C1. CB, 19
        add     ebx, esi                                ; 0201 _ 01. F3
        lea     edi, [ecx+ebp-2678E6DH]                 ; 0203 _ 8D. BC 29, FD987193
        mov     ecx, ebx                                ; 020A _ 89. D9
        mov     dword [esp+38H], ebp                    ; 020C _ 89. 6C 24, 38
        not     ecx                                     ; 0210 _ F7. D1
        mov     ebp, ebx                                ; 0212 _ 89. DD
        and     ebp, esi                                ; 0214 _ 21. F5
        and     ecx, eax                                ; 0216 _ 21. C1
        or      ecx, ebp                                ; 0218 _ 09. E9
        add     ecx, edi                                ; 021A _ 01. F9
        ror     ecx, 20                                 ; 021C _ C1. C9, 14
        add     ecx, ebx                                ; 021F _ 01. D9
        mov     edi, ecx                                ; 0221 _ 89. CF
        not     edi                                     ; 0223 _ F7. D7
        mov     ebp, edi                                ; 0225 _ 89. FD
        mov     edi, dword [edx+38H]                    ; 0227 _ 8B. 7A, 38
        mov     dword [esp+3CH], edi                    ; 022A _ 89. 7C 24, 3C
        lea     edi, [eax+edi-5986BC72H]                ; 022E _ 8D. BC 38, A679438E
        mov     eax, ebp                                ; 0235 _ 89. E8
        mov     dword [esp+50H], ebp                    ; 0237 _ 89. 6C 24, 50
        mov     ebp, ecx                                ; 023B _ 89. CD
        and     eax, esi                                ; 023D _ 21. F0
        and     ebp, ebx                                ; 023F _ 21. DD
        mov     edx, dword [edx+3CH]                    ; 0241 _ 8B. 52, 3C
        or      eax, ebp                                ; 0244 _ 09. E8
        add     eax, edi                                ; 0246 _ 01. F8
        ror     eax, 15                                 ; 0248 _ C1. C8, 0F
        mov     dword [esp+40H], edx                    ; 024B _ 89. 54 24, 40
        lea     esi, [esi+edx+49B40821H]                ; 024F _ 8D. B4 16, 49B40821
        add     eax, ecx                                ; 0256 _ 01. C8
        mov     edi, eax                                ; 0258 _ 89. C7
        mov     ebp, eax                                ; 025A _ 89. C5
        not     edi                                     ; 025C _ F7. D7
        and     ebp, ecx                                ; 025E _ 21. CD
        mov     edx, edi                                ; 0260 _ 89. FA
        and     edx, ebx                                ; 0262 _ 21. DA
        or      edx, ebp                                ; 0264 _ 09. EA
        mov     ebp, dword [esp+50H]                    ; 0266 _ 8B. 6C 24, 50
        add     edx, esi                                ; 026A _ 01. F2
        mov     esi, dword [esp+0CH]                    ; 026C _ 8B. 74 24, 0C
        ror     edx, 10                                 ; 0270 _ C1. CA, 0A
        add     edx, eax                                ; 0273 _ 01. C2
        and     ebp, eax                                ; 0275 _ 21. C5
        lea     esi, [esi+ebx-9E1DA9EH]                 ; 0277 _ 8D. B4 1E, F61E2562
        mov     ebx, edx                                ; 027E _ 89. D3
        and     ebx, ecx                                ; 0280 _ 21. CB
        or      ebx, ebp                                ; 0282 _ 09. EB
        mov     ebp, edx                                ; 0284 _ 89. D5
        add     ebx, esi                                ; 0286 _ 01. F3
        mov     esi, dword [esp+1CH]                    ; 0288 _ 8B. 74 24, 1C
        and     edi, edx                                ; 028C _ 21. D7
        ror     ebx, 27                                 ; 028E _ C1. CB, 1B
        not     ebp                                     ; 0291 _ F7. D5
        add     ebx, edx                                ; 0293 _ 01. D3
        lea     esi, [esi+ecx-3FBF4CC0H]                ; 0295 _ 8D. B4 0E, C040B340
        mov     ecx, ebx                                ; 029C _ 89. D9
        and     ecx, eax                                ; 029E _ 21. C1
        or      ecx, edi                                ; 02A0 _ 09. F9
        mov     edi, ebp                                ; 02A2 _ 89. EF
        mov     ebp, dword [esp+48H]                    ; 02A4 _ 8B. 6C 24, 48
        add     ecx, esi                                ; 02A8 _ 01. F1
        mov     esi, dword [esp+30H]                    ; 02AA _ 8B. 74 24, 30
        and     edi, ebx                                ; 02AE _ 21. DF
        ror     ecx, 23                                 ; 02B0 _ C1. C9, 17
        add     ecx, ebx                                ; 02B3 _ 01. D9
        lea     esi, [esi+eax+265E5A51H]                ; 02B5 _ 8D. B4 06, 265E5A51
        mov     eax, ecx                                ; 02BC _ 89. C8
        and     eax, edx                                ; 02BE _ 21. D0
        or      eax, edi                                ; 02C0 _ 09. F8
        lea     edi, [ebp+edx-16493856H]                ; 02C2 _ 8D. BC 15, E9B6C7AA
        add     esi, eax                                ; 02C9 _ 01. C6
        mov     edx, ebx                                ; 02CB _ 89. DA
        ror     esi, 18                                 ; 02CD _ C1. CE, 12
        not     edx                                     ; 02D0 _ F7. D2
        add     esi, ecx                                ; 02D2 _ 01. CE
        and     edx, ecx                                ; 02D4 _ 21. CA
        mov     eax, esi                                ; 02D6 _ 89. F0
        and     eax, ebx                                ; 02D8 _ 21. D8
        or      eax, edx                                ; 02DA _ 09. D0
        mov     edx, dword [esp+18H]                    ; 02DC _ 8B. 54 24, 18
        add     eax, edi                                ; 02E0 _ 01. F8
        mov     edi, ecx                                ; 02E2 _ 89. CF
        ror     eax, 12                                 ; 02E4 _ C1. C8, 0C
        not     edi                                     ; 02E7 _ F7. D7
        add     eax, esi                                ; 02E9 _ 01. F0
        and     edi, esi                                ; 02EB _ 21. F7
        lea     ebx, [edx+ebx-29D0EFA3H]                ; 02ED _ 8D. 9C 1A, D62F105D
        mov     edx, eax                                ; 02F4 _ 89. C2
        and     edx, ecx                                ; 02F6 _ 21. CA
        or      edx, edi                                ; 02F8 _ 09. FA
        mov     edi, esi                                ; 02FA _ 89. F7
        add     ebx, edx                                ; 02FC _ 01. D3
        mov     edx, dword [esp+2CH]                    ; 02FE _ 8B. 54 24, 2C
        not     edi                                     ; 0302 _ F7. D7
        ror     ebx, 27                                 ; 0304 _ C1. CB, 1B
        and     edi, eax                                ; 0307 _ 21. C7
        add     ebx, eax                                ; 0309 _ 01. C3
        lea     ecx, [edx+ecx+2441453H]                 ; 030B _ 8D. 8C 0A, 02441453
        mov     edx, ebx                                ; 0312 _ 89. DA
        and     edx, esi                                ; 0314 _ 21. F2
        or      edx, edi                                ; 0316 _ 09. FA
        mov     edi, dword [esp+40H]                    ; 0318 _ 8B. 7C 24, 40
        add     ecx, edx                                ; 031C _ 01. D1
        ror     ecx, 23                                 ; 031E _ C1. C9, 17
        add     ecx, ebx                                ; 0321 _ 01. D9
        lea     edi, [edi+esi-275E197FH]                ; 0323 _ 8D. BC 37, D8A1E681
        mov     esi, eax                                ; 032A _ 89. C6
        mov     edx, ecx                                ; 032C _ 89. CA
        not     esi                                     ; 032E _ F7. D6
        and     edx, eax                                ; 0330 _ 21. C2
        and     esi, ebx                                ; 0332 _ 21. DE
        or      edx, esi                                ; 0334 _ 09. F2
        add     edx, edi                                ; 0336 _ 01. FA
        mov     edi, dword [esp+14H]                    ; 0338 _ 8B. 7C 24, 14
        ror     edx, 18                                 ; 033C _ C1. CA, 12
        add     edx, ecx                                ; 033F _ 01. CA
        lea     esi, [edi+eax-182C0438H]                ; 0341 _ 8D. B4 07, E7D3FBC8
        mov     edi, ebx                                ; 0348 _ 89. DF
        mov     eax, edx                                ; 034A _ 89. D0
        not     edi                                     ; 034C _ F7. D7
        and     eax, ebx                                ; 034E _ 21. D8
        and     edi, ecx                                ; 0350 _ 21. CF
        or      eax, edi                                ; 0352 _ 09. F8
        add     esi, eax                                ; 0354 _ 01. C6
        mov     eax, dword [esp+28H]                    ; 0356 _ 8B. 44 24, 28
        ror     esi, 12                                 ; 035A _ C1. CE, 0C
        add     esi, edx                                ; 035D _ 01. D6
        lea     edi, [eax+ebx+21E1CDE6H]                ; 035F _ 8D. BC 18, 21E1CDE6
        mov     ebx, ecx                                ; 0366 _ 89. CB
        mov     eax, esi                                ; 0368 _ 89. F0
        not     ebx                                     ; 036A _ F7. D3
        and     eax, ecx                                ; 036C _ 21. C8
        and     ebx, edx                                ; 036E _ 21. D3
        or      eax, ebx                                ; 0370 _ 09. D8
        mov     ebx, dword [esp+3CH]                    ; 0372 _ 8B. 5C 24, 3C
        add     eax, edi                                ; 0376 _ 01. F8
        ror     eax, 27                                 ; 0378 _ C1. C8, 1B
        add     eax, esi                                ; 037B _ 01. F0
        lea     edi, [ebx+ecx-3CC8F82AH]                ; 037D _ 8D. BC 0B, C33707D6
        mov     ebx, edx                                ; 0384 _ 89. D3
        mov     ecx, eax                                ; 0386 _ 89. C1
        not     ebx                                     ; 0388 _ F7. D3
        and     ecx, edx                                ; 038A _ 21. D1
        and     ebx, esi                                ; 038C _ 21. F3
        or      ecx, ebx                                ; 038E _ 09. D9
        mov     ebx, dword [esp+10H]                    ; 0390 _ 8B. 5C 24, 10
        add     ecx, edi                                ; 0394 _ 01. F9
        mov     edi, esi                                ; 0396 _ 89. F7
        ror     ecx, 23                                 ; 0398 _ C1. C9, 17
        not     edi                                     ; 039B _ F7. D7
        add     ecx, eax                                ; 039D _ 01. C1
        and     edi, eax                                ; 039F _ 21. C7
        lea     ebx, [ebx+edx-0B2AF279H]                ; 03A1 _ 8D. 9C 13, F4D50D87
        mov     edx, ecx                                ; 03A8 _ 89. CA
        and     edx, esi                                ; 03AA _ 21. F2
        or      edx, edi                                ; 03AC _ 09. FA
        add     ebx, edx                                ; 03AE _ 01. D3
        mov     edx, dword [esp+24H]                    ; 03B0 _ 8B. 54 24, 24
        ror     ebx, 18                                 ; 03B4 _ C1. CB, 12
        add     ebx, ecx                                ; 03B7 _ 01. CB
        lea     edi, [edx+esi+455A14EDH]                ; 03B9 _ 8D. BC 32, 455A14ED
        mov     esi, eax                                ; 03C0 _ 89. C6
        mov     edx, ebx                                ; 03C2 _ 89. DA
        not     esi                                     ; 03C4 _ F7. D6
        and     edx, eax                                ; 03C6 _ 21. C2
        and     esi, ecx                                ; 03C8 _ 21. CE
        or      edx, esi                                ; 03CA _ 09. F2
        mov     esi, dword [esp+38H]                    ; 03CC _ 8B. 74 24, 38
        add     edx, edi                                ; 03D0 _ 01. FA
        ror     edx, 12                                 ; 03D2 _ C1. CA, 0C
        add     edx, ebx                                ; 03D5 _ 01. DA
        lea     edi, [esi+eax-561C16FBH]                ; 03D7 _ 8D. BC 06, A9E3E905
        mov     esi, ecx                                ; 03DE _ 89. CE
        mov     eax, edx                                ; 03E0 _ 89. D0
        not     esi                                     ; 03E2 _ F7. D6
        and     eax, ecx                                ; 03E4 _ 21. C8
        and     esi, ebx                                ; 03E6 _ 21. DE
        or      eax, esi                                ; 03E8 _ 09. F0
        add     eax, edi                                ; 03EA _ 01. F8
        mov     edi, dword [esp+4CH]                    ; 03EC _ 8B. 7C 24, 4C
        ror     eax, 27                                 ; 03F0 _ C1. C8, 1B
        add     eax, edx                                ; 03F3 _ 01. D0
        lea     esi, [edi+ecx-3105C08H]                 ; 03F5 _ 8D. B4 0F, FCEFA3F8
        mov     edi, ebx                                ; 03FC _ 89. DF
        mov     ecx, eax                                ; 03FE _ 89. C1
        not     edi                                     ; 0400 _ F7. D7
        and     ecx, ebx                                ; 0402 _ 21. D9
        and     edi, edx                                ; 0404 _ 21. D7
        or      ecx, edi                                ; 0406 _ 09. F9
        add     esi, ecx                                ; 0408 _ 01. CE
        mov     ecx, dword [esp+20H]                    ; 040A _ 8B. 4C 24, 20
        ror     esi, 23                                 ; 040E _ C1. CE, 17
        add     esi, eax                                ; 0411 _ 01. C6
        lea     edi, [ecx+ebx+676F02D9H]                ; 0413 _ 8D. BC 19, 676F02D9
        mov     ebx, edx                                ; 041A _ 89. D3
        mov     ecx, esi                                ; 041C _ 89. F1
        not     ebx                                     ; 041E _ F7. D3
        and     ecx, edx                                ; 0420 _ 21. D1
        and     ebx, eax                                ; 0422 _ 21. C3
        or      ecx, ebx                                ; 0424 _ 09. D9
        mov     ebx, dword [esp+34H]                    ; 0426 _ 8B. 5C 24, 34
        add     ecx, edi                                ; 042A _ 01. F9
        ror     ecx, 18                                 ; 042C _ C1. C9, 12
        add     ecx, esi                                ; 042F _ 01. F1
        lea     edi, [ebx+edx-72D5B376H]                ; 0431 _ 8D. BC 13, 8D2A4C8A
        mov     ebx, eax                                ; 0438 _ 89. C3
        mov     edx, ecx                                ; 043A _ 89. CA
        not     ebx                                     ; 043C _ F7. D3
        and     edx, eax                                ; 043E _ 21. C2
        and     ebx, esi                                ; 0440 _ 21. F3
        or      edx, ebx                                ; 0442 _ 09. DA
        mov     ebx, dword [esp+18H]                    ; 0444 _ 8B. 5C 24, 18
        add     edx, edi                                ; 0448 _ 01. FA
        mov     edi, dword [esp+0CH]                    ; 044A _ 8B. 7C 24, 0C
        ror     edx, 12                                 ; 044E _ C1. CA, 0C
        add     edx, ecx                                ; 0451 _ 01. CA
        lea     ebx, [ebx+eax-5C6BEH]                   ; 0453 _ 8D. 9C 03, FFFA3942
        mov     eax, ecx                                ; 045A _ 89. C8
        xor     eax, esi                                ; 045C _ 31. F0
        xor     eax, edx                                ; 045E _ 31. D0
        add     eax, ebx                                ; 0460 _ 01. D8
        mov     ebx, dword [esp+24H]                    ; 0462 _ 8B. 5C 24, 24
        ror     eax, 28                                 ; 0466 _ C1. C8, 1C
        add     eax, edx                                ; 0469 _ 01. D0
        lea     esi, [ebx+esi-788E097FH]                ; 046B _ 8D. B4 33, 8771F681
        mov     ebx, edx                                ; 0472 _ 89. D3
        xor     ebx, ecx                                ; 0474 _ 31. CB
        xor     ebx, eax                                ; 0476 _ 31. C3
        add     ebx, esi                                ; 0478 _ 01. F3
        mov     esi, dword [esp+30H]                    ; 047A _ 8B. 74 24, 30
        ror     ebx, 21                                 ; 047E _ C1. CB, 15
        add     ebx, eax                                ; 0481 _ 01. C3
        lea     esi, [esi+ecx+6D9D6122H]                ; 0483 _ 8D. B4 0E, 6D9D6122
        mov     ecx, eax                                ; 048A _ 89. C1
        xor     ecx, edx                                ; 048C _ 31. D1
        xor     ecx, ebx                                ; 048E _ 31. D9
        add     ecx, esi                                ; 0490 _ 01. F1
        mov     esi, dword [esp+3CH]                    ; 0492 _ 8B. 74 24, 3C
        ror     ecx, 16                                 ; 0496 _ C1. C9, 10
        add     ecx, ebx                                ; 0499 _ 01. D9
        lea     esi, [esi+edx-21AC7F4H]                 ; 049B _ 8D. B4 16, FDE5380C
        mov     edx, ebx                                ; 04A2 _ 89. DA
        xor     edx, eax                                ; 04A4 _ 31. C2
        xor     edx, ecx                                ; 04A6 _ 31. CA
        add     edx, esi                                ; 04A8 _ 01. F2
        lea     esi, [edi+eax-5B4115BCH]                ; 04AA _ 8D. B4 07, A4BEEA44
        ror     edx, 9                                  ; 04B1 _ C1. CA, 09
        mov     eax, ecx                                ; 04B4 _ 89. C8
        add     edx, ecx                                ; 04B6 _ 01. CA
        xor     eax, ebx                                ; 04B8 _ 31. D8
        mov     edi, ebp                                ; 04BA _ 89. EF
        xor     eax, edx                                ; 04BC _ 31. D0
        add     eax, esi                                ; 04BE _ 01. F0
        mov     esi, dword [esp+14H]                    ; 04C0 _ 8B. 74 24, 14
        ror     eax, 28                                 ; 04C4 _ C1. C8, 1C
        add     eax, edx                                ; 04C7 _ 01. D0
        lea     esi, [esi+ebx+4BDECFA9H]                ; 04C9 _ 8D. B4 1E, 4BDECFA9
        mov     ebx, edx                                ; 04D0 _ 89. D3
        xor     ebx, ecx                                ; 04D2 _ 31. CB
        xor     ebx, eax                                ; 04D4 _ 31. C3
        add     ebx, esi                                ; 04D6 _ 01. F3
        mov     esi, dword [esp+20H]                    ; 04D8 _ 8B. 74 24, 20
        ror     ebx, 21                                 ; 04DC _ C1. CB, 15
        add     ebx, eax                                ; 04DF _ 01. C3
        lea     esi, [esi+ecx-944B4A0H]                 ; 04E1 _ 8D. B4 0E, F6BB4B60
        mov     ecx, eax                                ; 04E8 _ 89. C1
        xor     ecx, edx                                ; 04EA _ 31. D1
        xor     ecx, ebx                                ; 04EC _ 31. D9
        add     ecx, esi                                ; 04EE _ 01. F1
        mov     esi, dword [esp+2CH]                    ; 04F0 _ 8B. 74 24, 2C
        ror     ecx, 16                                 ; 04F4 _ C1. C9, 10
        add     ecx, ebx                                ; 04F7 _ 01. D9
        lea     esi, [esi+edx-41404390H]                ; 04F9 _ 8D. B4 16, BEBFBC70
        mov     edx, ebx                                ; 0500 _ 89. DA
        xor     edx, eax                                ; 0502 _ 31. C2
        xor     edx, ecx                                ; 0504 _ 31. CA
        add     edx, esi                                ; 0506 _ 01. F2
        mov     esi, dword [esp+38H]                    ; 0508 _ 8B. 74 24, 38
        ror     edx, 9                                  ; 050C _ C1. CA, 09
        add     edx, ecx                                ; 050F _ 01. CA
        lea     esi, [esi+eax+289B7EC6H]                ; 0511 _ 8D. B4 06, 289B7EC6
        mov     eax, ecx                                ; 0518 _ 89. C8
        xor     eax, ebx                                ; 051A _ 31. D8
        lea     ebx, [ebp+ebx-155ED806H]                ; 051C _ 8D. 9C 1D, EAA127FA
        xor     eax, edx                                ; 0523 _ 31. D0
        mov     ebp, dword [esp+4CH]                    ; 0525 _ 8B. 6C 24, 4C
        add     esi, eax                                ; 0529 _ 01. C6
        mov     eax, edx                                ; 052B _ 89. D0
        ror     esi, 28                                 ; 052D _ C1. CE, 1C
        xor     eax, ecx                                ; 0530 _ 31. C8
        add     esi, edx                                ; 0532 _ 01. D6
        xor     eax, esi                                ; 0534 _ 31. F0
        add     ebx, eax                                ; 0536 _ 01. C3
        mov     eax, dword [esp+10H]                    ; 0538 _ 8B. 44 24, 10
        ror     ebx, 21                                 ; 053C _ C1. CB, 15
        add     ebx, esi                                ; 053F _ 01. F3
        lea     ecx, [eax+ecx-2B10CF7BH]                ; 0541 _ 8D. 8C 08, D4EF3085
        mov     eax, esi                                ; 0548 _ 89. F0
        xor     eax, edx                                ; 054A _ 31. D0
        xor     eax, ebx                                ; 054C _ 31. D8
        add     eax, ecx                                ; 054E _ 01. C8
        mov     ecx, dword [esp+1CH]                    ; 0550 _ 8B. 4C 24, 1C
        ror     eax, 16                                 ; 0554 _ C1. C8, 10
        add     eax, ebx                                ; 0557 _ 01. D8
        lea     ecx, [ecx+edx+4881D05H]                 ; 0559 _ 8D. 8C 11, 04881D05
        mov     edx, ebx                                ; 0560 _ 89. DA
        xor     edx, esi                                ; 0562 _ 31. F2
        xor     edx, eax                                ; 0564 _ 31. C2
        add     ecx, edx                                ; 0566 _ 01. D1
        mov     edx, dword [esp+28H]                    ; 0568 _ 8B. 54 24, 28
        ror     ecx, 9                                  ; 056C _ C1. C9, 09
        add     ecx, eax                                ; 056F _ 01. C1
        lea     esi, [edx+esi-262B2FC7H]                ; 0571 _ 8D. B4 32, D9D4D039
        mov     edx, eax                                ; 0578 _ 89. C2
        xor     edx, ebx                                ; 057A _ 31. DA
        xor     edx, ecx                                ; 057C _ 31. CA
        add     esi, edx                                ; 057E _ 01. D6
        mov     edx, dword [esp+34H]                    ; 0580 _ 8B. 54 24, 34
        ror     esi, 28                                 ; 0584 _ C1. CE, 1C
        add     esi, ecx                                ; 0587 _ 01. CE
        lea     ebx, [edx+ebx-1924661BH]                ; 0589 _ 8D. 9C 1A, E6DB99E5
        mov     edx, ecx                                ; 0590 _ 89. CA
        xor     edx, eax                                ; 0592 _ 31. C2
        xor     edx, esi                                ; 0594 _ 31. F2
        add     edx, ebx                                ; 0596 _ 01. DA
        mov     ebx, dword [esp+40H]                    ; 0598 _ 8B. 5C 24, 40
        ror     edx, 21                                 ; 059C _ C1. CA, 15
        add     edx, esi                                ; 059F _ 01. F2
        lea     ebx, [ebx+eax+1FA27CF8H]                ; 05A1 _ 8D. 9C 03, 1FA27CF8
        mov     eax, esi                                ; 05A8 _ 89. F0
        xor     eax, ecx                                ; 05AA _ 31. C8
        lea     ecx, [ebp+ecx-3B53A99BH]                ; 05AC _ 8D. 8C 0D, C4AC5665
        xor     eax, edx                                ; 05B3 _ 31. D0
        add     ebx, eax                                ; 05B5 _ 01. C3
        mov     eax, edx                                ; 05B7 _ 89. D0
        ror     ebx, 16                                 ; 05B9 _ C1. CB, 10
        xor     eax, esi                                ; 05BC _ 31. F0
        lea     esi, [edi+esi-0BD6DDBCH]                ; 05BE _ 8D. B4 37, F4292244
        add     ebx, edx                                ; 05C5 _ 01. D3
        mov     edi, dword [esp+3CH]                    ; 05C7 _ 8B. 7C 24, 3C
        xor     eax, ebx                                ; 05CB _ 31. D8
        add     ecx, eax                                ; 05CD _ 01. C1
        mov     eax, edx                                ; 05CF _ 89. D0
        ror     ecx, 9                                  ; 05D1 _ C1. C9, 09
        not     eax                                     ; 05D4 _ F7. D0
        add     ecx, ebx                                ; 05D6 _ 01. D9
        or      eax, ecx                                ; 05D8 _ 09. C8
        xor     eax, ebx                                ; 05DA _ 31. D8
        add     eax, esi                                ; 05DC _ 01. F0
        mov     esi, dword [esp+20H]                    ; 05DE _ 8B. 74 24, 20
        ror     eax, 26                                 ; 05E2 _ C1. C8, 1A
        add     eax, ecx                                ; 05E5 _ 01. C8
        lea     esi, [esi+edx+432AFF97H]                ; 05E7 _ 8D. B4 16, 432AFF97
        mov     edx, ebx                                ; 05EE _ 89. DA
        not     edx                                     ; 05F0 _ F7. D2
        or      edx, eax                                ; 05F2 _ 09. C2
        xor     edx, ecx                                ; 05F4 _ 31. CA
        add     edx, esi                                ; 05F6 _ 01. F2
        lea     esi, [edi+ebx-546BDC59H]                ; 05F8 _ 8D. B4 1F, AB9423A7
        ror     edx, 22                                 ; 05FF _ C1. CA, 16
        mov     ebx, ecx                                ; 0602 _ 89. CB
        add     edx, eax                                ; 0604 _ 01. C2
        mov     edi, dword [esp+18H]                    ; 0606 _ 8B. 7C 24, 18
        not     ebx                                     ; 060A _ F7. D3
        or      ebx, edx                                ; 060C _ 09. D3
        xor     ebx, eax                                ; 060E _ 31. C3
        add     ebx, esi                                ; 0610 _ 01. F3
        lea     esi, [edi+ecx-36C5FC7H]                 ; 0612 _ 8D. B4 0F, FC93A039
        ror     ebx, 17                                 ; 0619 _ C1. CB, 11
        mov     ecx, eax                                ; 061C _ 89. C1
        add     ebx, edx                                ; 061E _ 01. D3
        mov     edi, dword [esp+34H]                    ; 0620 _ 8B. 7C 24, 34
        not     ecx                                     ; 0624 _ F7. D1
        or      ecx, ebx                                ; 0626 _ 09. D9
        xor     ecx, edx                                ; 0628 _ 31. D1
        add     ecx, esi                                ; 062A _ 01. F1
        lea     esi, [edi+eax+655B59C3H]                ; 062C _ 8D. B4 07, 655B59C3
        ror     ecx, 11                                 ; 0633 _ C1. C9, 0B
        mov     eax, edx                                ; 0636 _ 89. D0
        add     ecx, ebx                                ; 0638 _ 01. D9
        not     eax                                     ; 063A _ F7. D0
        mov     edi, dword [esp+0CH]                    ; 063C _ 8B. 7C 24, 0C
        or      eax, ecx                                ; 0640 _ 09. C8
        xor     eax, ebx                                ; 0642 _ 31. D8
        add     eax, esi                                ; 0644 _ 01. F0
        mov     esi, dword [esp+10H]                    ; 0646 _ 8B. 74 24, 10
        ror     eax, 26                                 ; 064A _ C1. C8, 1A
        add     eax, ecx                                ; 064D _ 01. C8
        lea     esi, [esi+edx-70F3336EH]                ; 064F _ 8D. B4 16, 8F0CCC92
        mov     edx, ebx                                ; 0656 _ 89. DA
        not     edx                                     ; 0658 _ F7. D2
        or      edx, eax                                ; 065A _ 09. C2
        xor     edx, ecx                                ; 065C _ 31. CA
        add     edx, esi                                ; 065E _ 01. F2
        mov     esi, dword [esp+2CH]                    ; 0660 _ 8B. 74 24, 2C
        ror     edx, 22                                 ; 0664 _ C1. CA, 16
        add     edx, eax                                ; 0667 _ 01. C2
        lea     esi, [esi+ebx-100B83H]                  ; 0669 _ 8D. B4 1E, FFEFF47D
        mov     ebx, ecx                                ; 0670 _ 89. CB
        not     ebx                                     ; 0672 _ F7. D3
        or      ebx, edx                                ; 0674 _ 09. D3
        xor     ebx, eax                                ; 0676 _ 31. C3
        add     ebx, esi                                ; 0678 _ 01. F3
        lea     esi, [edi+ecx-7A7BA22FH]                ; 067A _ 8D. B4 0F, 85845DD1
        ror     ebx, 17                                 ; 0681 _ C1. CB, 11
        mov     ecx, eax                                ; 0684 _ 89. C1
        add     ebx, edx                                ; 0686 _ 01. D3
        not     ecx                                     ; 0688 _ F7. D1
        mov     edi, dword [esp+40H]                    ; 068A _ 8B. 7C 24, 40
        or      ecx, ebx                                ; 068E _ 09. D9
        xor     ecx, edx                                ; 0690 _ 31. D1
        add     ecx, esi                                ; 0692 _ 01. F1
        mov     esi, dword [esp+24H]                    ; 0694 _ 8B. 74 24, 24
        ror     ecx, 11                                 ; 0698 _ C1. C9, 0B
        add     ecx, ebx                                ; 069B _ 01. D9
        lea     esi, [esi+eax+6FA87E4FH]                ; 069D _ 8D. B4 06, 6FA87E4F
        mov     eax, edx                                ; 06A4 _ 89. D0
        not     eax                                     ; 06A6 _ F7. D0
        or      eax, ecx                                ; 06A8 _ 09. C8
        xor     eax, ebx                                ; 06AA _ 31. D8
        add     eax, esi                                ; 06AC _ 01. F0
        lea     esi, [edi+edx-1D31920H]                 ; 06AE _ 8D. B4 17, FE2CE6E0
        ror     eax, 26                                 ; 06B5 _ C1. C8, 1A
        mov     edx, ebx                                ; 06B8 _ 89. DA
        add     eax, ecx                                ; 06BA _ 01. C8
        mov     edi, dword [esp+1CH]                    ; 06BC _ 8B. 7C 24, 1C
        not     edx                                     ; 06C0 _ F7. D2
        or      edx, eax                                ; 06C2 _ 09. C2
        xor     edx, ecx                                ; 06C4 _ 31. CA
        add     edx, esi                                ; 06C6 _ 01. F2
        lea     esi, [edi+ebx-5CFEBCECH]                ; 06C8 _ 8D. B4 1F, A3014314
        ror     edx, 22                                 ; 06CF _ C1. CA, 16
        mov     ebx, ecx                                ; 06D2 _ 89. CB
        add     edx, eax                                ; 06D4 _ 01. C2
        mov     edi, dword [esp+38H]                    ; 06D6 _ 8B. 7C 24, 38
        not     ebx                                     ; 06DA _ F7. D3
        or      ebx, edx                                ; 06DC _ 09. D3
        xor     ebx, eax                                ; 06DE _ 31. C3
        add     ebx, esi                                ; 06E0 _ 01. F3
        lea     esi, [edi+ecx+4E0811A1H]                ; 06E2 _ 8D. B4 0F, 4E0811A1
        ror     ebx, 17                                 ; 06E9 _ C1. CB, 11
        mov     ecx, eax                                ; 06EC _ 89. C1
        add     ebx, edx                                ; 06EE _ 01. D3
        mov     edi, dword [esp+14H]                    ; 06F0 _ 8B. 7C 24, 14
        not     ecx                                     ; 06F4 _ F7. D1
        or      ecx, ebx                                ; 06F6 _ 09. D9
        xor     ecx, edx                                ; 06F8 _ 31. D1
        add     ecx, esi                                ; 06FA _ 01. F1
        lea     esi, [edi+eax-8AC817EH]                 ; 06FC _ 8D. B4 07, F7537E82
        ror     ecx, 11                                 ; 0703 _ C1. C9, 0B
        mov     eax, edx                                ; 0706 _ 89. D0
        add     ecx, ebx                                ; 0708 _ 01. D9
        mov     edi, dword [esp+30H]                    ; 070A _ 8B. 7C 24, 30
        not     eax                                     ; 070E _ F7. D0
        or      eax, ecx                                ; 0710 _ 09. C8
        xor     eax, ebx                                ; 0712 _ 31. D8
        add     eax, esi                                ; 0714 _ 01. F0
        lea     esi, [edi+edx-42C50DCBH]                ; 0716 _ 8D. B4 17, BD3AF235
        ror     eax, 26                                 ; 071D _ C1. C8, 1A
        mov     edx, ebx                                ; 0720 _ 89. DA
        add     eax, ecx                                ; 0722 _ 01. C8
        not     edx                                     ; 0724 _ F7. D2
        mov     edi, dword [esp+44H]                    ; 0726 _ 8B. 7C 24, 44
        or      edx, eax                                ; 072A _ 09. C2
        xor     edx, ecx                                ; 072C _ 31. CA
        add     edx, esi                                ; 072E _ 01. F2
        lea     esi, [ebp+ebx+2AD7D2BBH]                ; 0730 _ 8D. B4 1D, 2AD7D2BB
        ror     edx, 22                                 ; 0737 _ C1. CA, 16
        mov     ebx, ecx                                ; 073A _ 89. CB
        mov     ebp, dword [esp+54H]                    ; 073C _ 8B. 6C 24, 54
        add     edx, eax                                ; 0740 _ 01. C2
        not     ebx                                     ; 0742 _ F7. D3
        or      ebx, edx                                ; 0744 _ 09. D3
        xor     ebx, eax                                ; 0746 _ 31. C3
        add     ebx, esi                                ; 0748 _ 01. F3
        lea     esi, [eax+edi]                          ; 074A _ 8D. 34 38
        ror     ebx, 17                                 ; 074D _ C1. CB, 11
        not     eax                                     ; 0750 _ F7. D0
        mov     dword [ebp+8H], esi                     ; 0752 _ 89. 75, 08
        mov     esi, dword [esp]                        ; 0755 _ 8B. 34 24
        add     ebx, edx                                ; 0758 _ 01. D3
        or      eax, ebx                                ; 075A _ 09. D8
        xor     eax, edx                                ; 075C _ 31. D0
        add     edx, dword [esp+8H]                     ; 075E _ 03. 54 24, 08
        lea     edi, [ebx+esi]                          ; 0762 _ 8D. 3C 33
        mov     esi, dword [esp+28H]                    ; 0765 _ 8B. 74 24, 28
        add     ebx, dword [esp+4H]                     ; 0769 _ 03. 5C 24, 04
        mov     dword [ebp+14H], edx                    ; 076D _ 89. 55, 14
        lea     ecx, [esi+ecx-14792C6FH]                ; 0770 _ 8D. 8C 0E, EB86D391
        add     eax, ecx                                ; 0777 _ 01. C8
        mov     dword [ebp+10H], ebx                    ; 0779 _ 89. 5D, 10
        ror     eax, 11                                 ; 077C _ C1. C8, 0B
        add     eax, edi                                ; 077F _ 01. F8
        mov     dword [ebp+0CH], eax                    ; 0781 _ 89. 45, 0C
        add     esp, 152                                ; 0784 _ 81. C4, 00000098
        pop     ebx                                     ; 078A _ 5B
        pop     esi                                     ; 078B _ 5E
        pop     edi                                     ; 078C _ 5F
        pop     ebp                                     ; 078D _ 5D
        ret                                             ; 078E _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_002:  lea     ecx, [esp+58H]                          ; 0790 _ 8D. 4C 24, 58
        lea     ebx, [edx+40H]                          ; 0794 _ 8D. 5A, 40
; Filling space: 9H
; Filler type: mov with same source and destination
;       db 89H, 0F6H, 8DH, 0BCH, 27H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_003:  movzx   eax, byte [edx+1H]                      ; 07A0 _ 0F B6. 42, 01
        add     edx, 4                                  ; 07A4 _ 83. C2, 04
        add     ecx, 4                                  ; 07A7 _ 83. C1, 04
        movzx   esi, byte [edx-4H]                      ; 07AA _ 0F B6. 72, FC
        shl     eax, 8                                  ; 07AE _ C1. E0, 08
        add     esi, eax                                ; 07B1 _ 01. C6
        movzx   eax, byte [edx-2H]                      ; 07B3 _ 0F B6. 42, FE
        shl     eax, 16                                 ; 07B7 _ C1. E0, 10
        add     esi, eax                                ; 07BA _ 01. C6
        movzx   eax, byte [edx-1H]                      ; 07BC _ 0F B6. 42, FF
        shl     eax, 24                                 ; 07C0 _ C1. E0, 18
        add     eax, esi                                ; 07C3 _ 01. F0
        mov     dword [ecx-4H], eax                     ; 07C5 _ 89. 41, FC
        cmp     edx, ebx                                ; 07C8 _ 39. DA
        jnz     ?_003                                   ; 07CA _ 75, D4
        lea     edx, [esp+58H]                          ; 07CC _ 8D. 54 24, 58
        jmp     ?_001                                   ; 07D0 _ E9, FFFFF86A

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H

ALIGN   8
?_004:  mov     eax, dword [edx]                        ; 07D8 _ 8B. 02
        mov     dword [esp+58H], eax                    ; 07DA _ 89. 44 24, 58
        mov     eax, dword [edx+4H]                     ; 07DE _ 8B. 42, 04
        mov     dword [esp+5CH], eax                    ; 07E1 _ 89. 44 24, 5C
        mov     eax, dword [edx+8H]                     ; 07E5 _ 8B. 42, 08
        mov     dword [esp+60H], eax                    ; 07E8 _ 89. 44 24, 60
        mov     eax, dword [edx+0CH]                    ; 07EC _ 8B. 42, 0C
        mov     dword [esp+64H], eax                    ; 07EF _ 89. 44 24, 64
        mov     eax, dword [edx+10H]                    ; 07F3 _ 8B. 42, 10
        mov     dword [esp+68H], eax                    ; 07F6 _ 89. 44 24, 68
        mov     eax, dword [edx+14H]                    ; 07FA _ 8B. 42, 14
        mov     dword [esp+6CH], eax                    ; 07FD _ 89. 44 24, 6C
        mov     eax, dword [edx+18H]                    ; 0801 _ 8B. 42, 18
        mov     dword [esp+70H], eax                    ; 0804 _ 89. 44 24, 70
        mov     eax, dword [edx+1CH]                    ; 0808 _ 8B. 42, 1C
        mov     dword [esp+74H], eax                    ; 080B _ 89. 44 24, 74
        mov     eax, dword [edx+20H]                    ; 080F _ 8B. 42, 20
        mov     dword [esp+78H], eax                    ; 0812 _ 89. 44 24, 78
        mov     eax, dword [edx+24H]                    ; 0816 _ 8B. 42, 24
        mov     dword [esp+7CH], eax                    ; 0819 _ 89. 44 24, 7C
        mov     eax, dword [edx+28H]                    ; 081D _ 8B. 42, 28
        mov     dword [esp+80H], eax                    ; 0820 _ 89. 84 24, 00000080
        mov     eax, dword [edx+2CH]                    ; 0827 _ 8B. 42, 2C
        mov     dword [esp+84H], eax                    ; 082A _ 89. 84 24, 00000084
        mov     eax, dword [edx+30H]                    ; 0831 _ 8B. 42, 30
        mov     dword [esp+88H], eax                    ; 0834 _ 89. 84 24, 00000088
        mov     eax, dword [edx+34H]                    ; 083B _ 8B. 42, 34
        mov     dword [esp+8CH], eax                    ; 083E _ 89. 84 24, 0000008C
        mov     eax, dword [edx+38H]                    ; 0845 _ 8B. 42, 38
        mov     dword [esp+90H], eax                    ; 0848 _ 89. 84 24, 00000090
        mov     eax, dword [edx+3CH]                    ; 084F _ 8B. 42, 3C
        lea     edx, [esp+58H]                          ; 0852 _ 8D. 54 24, 58
        mov     dword [esp+94H], eax                    ; 0856 _ 89. 84 24, 00000094
        jmp     ?_001                                   ; 085D _ E9, FFFFF7DD

; Filling space: 0EH
; Filler type: lea with same source and destination
;       db 8DH, 0B4H, 26H, 00H, 00H, 00H, 00H, 8DH
;       db 0BCH, 27H, 00H, 00H, 00H, 00H

ALIGN   16

md5_init:; Function begin
        mov     eax, dword [esp+4H]                     ; 0870 _ 8B. 44 24, 04
        mov     dword [eax+4H], 0                       ; 0874 _ C7. 40, 04, 00000000
        mov     dword [eax], 0                          ; 087B _ C7. 00, 00000000
        mov     dword [eax+8H], 1732584193              ; 0881 _ C7. 40, 08, 67452301
        mov     dword [eax+0CH], -271733879             ; 0888 _ C7. 40, 0C, EFCDAB89
        mov     dword [eax+10H], -1732584194            ; 088F _ C7. 40, 10, 98BADCFE
        mov     dword [eax+14H], 271733878              ; 0896 _ C7. 40, 14, 10325476
        ret                                             ; 089D _ C3
; md5_init End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

md5_append:; Function begin
        push    ebp                                     ; 08A0 _ 55
        push    edi                                     ; 08A1 _ 57
        push    esi                                     ; 08A2 _ 56
        push    ebx                                     ; 08A3 _ 53
        sub     esp, 28                                 ; 08A4 _ 83. EC, 1C
        mov     esi, dword [esp+30H]                    ; 08A7 _ 8B. 74 24, 30
        mov     eax, dword [esp+34H]                    ; 08AB _ 8B. 44 24, 34
        mov     edi, dword [esp+38H]                    ; 08AF _ 8B. 7C 24, 38
        mov     ecx, dword [esi]                        ; 08B3 _ 8B. 0E
        mov     dword [esp+0CH], eax                    ; 08B5 _ 89. 44 24, 0C
        lea     ebx, [edi*8]                            ; 08B9 _ 8D. 1C FD, 00000000
        mov     eax, ecx                                ; 08C0 _ 89. C8
        shr     eax, 3                                  ; 08C2 _ C1. E8, 03
        and     eax, 3FH                                ; 08C5 _ 83. E0, 3F
        test    edi, edi                                ; 08C8 _ 85. FF
        jle     ?_007                                   ; 08CA _ 7E, 50
        mov     edx, edi                                ; 08CC _ 89. FA
        add     ecx, ebx                                ; 08CE _ 01. D9
        sar     edx, 29                                 ; 08D0 _ C1. FA, 1D
        mov     dword [esi], ecx                        ; 08D3 _ 89. 0E
        add     edx, dword [esi+4H]                     ; 08D5 _ 03. 56, 04
        cmp     ebx, ecx                                ; 08D8 _ 39. CB
        mov     dword [esi+4H], edx                     ; 08DA _ 89. 56, 04
        jbe     ?_005                                   ; 08DD _ 76, 06
        add     edx, 1                                  ; 08DF _ 83. C2, 01
        mov     dword [esi+4H], edx                     ; 08E2 _ 89. 56, 04
?_005:  test    eax, eax                                ; 08E5 _ 85. C0
        jz      ?_009                                   ; 08E7 _ 74, 4F
        lea     ebp, [eax+edi]                          ; 08E9 _ 8D. 2C 38
        mov     ebx, edi                                ; 08EC _ 89. FB
        cmp     ebp, 64                                 ; 08EE _ 83. FD, 40
        jle     ?_006                                   ; 08F1 _ 7E, 0C
        mov     ebx, 64                                 ; 08F3 _ BB, 00000040
        mov     ebp, 64                                 ; 08F8 _ BD, 00000040
        sub     ebx, eax                                ; 08FD _ 29. C3
?_006:  mov     ecx, dword [esp+0CH]                    ; 08FF _ 8B. 4C 24, 0C
        lea     eax, [esi+eax+18H]                      ; 0903 _ 8D. 44 06, 18
        mov     dword [esp+8H], ebx                     ; 0907 _ 89. 5C 24, 08
        mov     dword [esp], eax                        ; 090B _ 89. 04 24
        mov     dword [esp+4H], ecx                     ; 090E _ 89. 4C 24, 04
        call    memcpy                                  ; 0912 _ E8, FFFFFFFC(rel)
        cmp     ebp, 63                                 ; 0917 _ 83. FD, 3F
        jg      ?_008                                   ; 091A _ 7F, 0C
?_007:  add     esp, 28                                 ; 091C _ 83. C4, 1C
        pop     ebx                                     ; 091F _ 5B
        pop     esi                                     ; 0920 _ 5E
        pop     edi                                     ; 0921 _ 5F
        pop     ebp                                     ; 0922 _ 5D
        ret                                             ; 0923 _ C3

; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_008:  lea     edx, [esi+18H]                          ; 0928 _ 8D. 56, 18
        mov     eax, esi                                ; 092B _ 89. F0
        sub     edi, ebx                                ; 092D _ 29. DF
        add     dword [esp+0CH], ebx                    ; 092F _ 01. 5C 24, 0C
        call    md5_process                             ; 0933 _ E8, FFFFF6C8
?_009:  cmp     edi, 63                                 ; 0938 _ 83. FF, 3F
        jle     ?_011                                   ; 093B _ 7E, 36
        mov     ebx, dword [esp+0CH]                    ; 093D _ 8B. 5C 24, 0C
        mov     ebp, edi                                ; 0941 _ 89. FD
        nop                                             ; 0943 _ 90
; Filling space: 4H
; Filler type: lea with same source and destination
;       db 8DH, 74H, 26H, 00H

ALIGN   8
?_010:  mov     edx, ebx                                ; 0948 _ 89. DA
        mov     eax, esi                                ; 094A _ 89. F0
        sub     ebp, 64                                 ; 094C _ 83. ED, 40
        call    md5_process                             ; 094F _ E8, FFFFF6AC
        add     ebx, 64                                 ; 0954 _ 83. C3, 40
        cmp     ebp, 63                                 ; 0957 _ 83. FD, 3F
        jg      ?_010                                   ; 095A _ 7F, EC
        sub     edi, 64                                 ; 095C _ 83. EF, 40
        mov     edx, edi                                ; 095F _ 89. FA
        shr     edx, 6                                  ; 0961 _ C1. EA, 06
        lea     eax, [edx+1H]                           ; 0964 _ 8D. 42, 01
        shl     edx, 6                                  ; 0967 _ C1. E2, 06
        shl     eax, 6                                  ; 096A _ C1. E0, 06
        sub     edi, edx                                ; 096D _ 29. D7
        add     dword [esp+0CH], eax                    ; 096F _ 01. 44 24, 0C
?_011:  test    edi, edi                                ; 0973 _ 85. FF
        jz      ?_007                                   ; 0975 _ 74, A5
        mov     eax, dword [esp+0CH]                    ; 0977 _ 8B. 44 24, 0C
        add     esi, 24                                 ; 097B _ 83. C6, 18
        mov     dword [esp+38H], edi                    ; 097E _ 89. 7C 24, 38
        mov     dword [esp+30H], esi                    ; 0982 _ 89. 74 24, 30
        mov     dword [esp+34H], eax                    ; 0986 _ 89. 44 24, 34
        add     esp, 28                                 ; 098A _ 83. C4, 1C
        pop     ebx                                     ; 098D _ 5B
        pop     esi                                     ; 098E _ 5E
        pop     edi                                     ; 098F _ 5F
        pop     ebp                                     ; 0990 _ 5D
        jmp     memcpy                                  ; 0991 _ E9, FFFFFFFC(rel)
; md5_append End of function

; Filling space: 0AH
; Filler type: lea with same source and destination
;       db 8DH, 76H, 00H, 8DH, 0BCH, 27H, 00H, 00H
;       db 00H, 00H

ALIGN   16

md5_finish:; Function begin
        push    ebp                                     ; 09A0 _ 55
        push    edi                                     ; 09A1 _ 57
        push    esi                                     ; 09A2 _ 56
        push    ebx                                     ; 09A3 _ 53
        sub     esp, 60                                 ; 09A4 _ 83. EC, 3C
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 09A7 _ 65: A1, 00000014
        mov     dword [esp+2CH], eax                    ; 09AD _ 89. 44 24, 2C
        xor     eax, eax                                ; 09B1 _ 31. C0
        mov     ebx, dword [esp+50H]                    ; 09B3 _ 8B. 5C 24, 50
        mov     esi, dword [esp+54H]                    ; 09B7 _ 8B. 74 24, 54
        mov     eax, dword [ebx]                        ; 09BB _ 8B. 03
        mov     edx, eax                                ; 09BD _ 89. C2
        mov     byte [esp+24H], al                      ; 09BF _ 88. 44 24, 24
        shr     edx, 8                                  ; 09C3 _ C1. EA, 08
        mov     byte [esp+25H], dl                      ; 09C6 _ 88. 54 24, 25
        mov     edx, eax                                ; 09CA _ 89. C2
        shr     edx, 16                                 ; 09CC _ C1. EA, 10
        mov     byte [esp+26H], dl                      ; 09CF _ 88. 54 24, 26
        mov     edx, eax                                ; 09D3 _ 89. C2
        shr     eax, 3                                  ; 09D5 _ C1. E8, 03
        shr     edx, 24                                 ; 09D8 _ C1. EA, 18
        mov     byte [esp+27H], dl                      ; 09DB _ 88. 54 24, 27
        mov     edx, dword [ebx+4H]                     ; 09DF _ 8B. 53, 04
        mov     dword [esp+4H], pad.1879                ; 09E2 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], ebx                        ; 09EA _ 89. 1C 24
        mov     ecx, edx                                ; 09ED _ 89. D1
        mov     byte [esp+28H], dl                      ; 09EF _ 88. 54 24, 28
        shr     ecx, 8                                  ; 09F3 _ C1. E9, 08
        mov     byte [esp+29H], cl                      ; 09F6 _ 88. 4C 24, 29
        mov     ecx, edx                                ; 09FA _ 89. D1
        shr     edx, 24                                 ; 09FC _ C1. EA, 18
        mov     byte [esp+2BH], dl                      ; 09FF _ 88. 54 24, 2B
        mov     edx, eax                                ; 0A03 _ 89. C2
        mov     eax, 55                                 ; 0A05 _ B8, 00000037
        sub     eax, edx                                ; 0A0A _ 29. D0
        shr     ecx, 16                                 ; 0A0C _ C1. E9, 10
        and     eax, 3FH                                ; 0A0F _ 83. E0, 3F
        mov     byte [esp+2AH], cl                      ; 0A12 _ 88. 4C 24, 2A
        add     eax, 1                                  ; 0A16 _ 83. C0, 01
        mov     dword [esp+8H], eax                     ; 0A19 _ 89. 44 24, 08
        call    md5_append                              ; 0A1D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebx]                        ; 0A22 _ 8B. 03
        mov     edx, dword [ebx+4H]                     ; 0A24 _ 8B. 53, 04
        mov     ecx, eax                                ; 0A27 _ 89. C1
        add     eax, 64                                 ; 0A29 _ 83. C0, 40
        shr     ecx, 3                                  ; 0A2C _ C1. E9, 03
        mov     dword [ebx], eax                        ; 0A2F _ 89. 03
        and     ecx, 3FH                                ; 0A31 _ 83. E1, 3F
        cmp     eax, 63                                 ; 0A34 _ 83. F8, 3F
        ja      ?_012                                   ; 0A37 _ 77, 06
        add     edx, 1                                  ; 0A39 _ 83. C2, 01
        mov     dword [ebx+4H], edx                     ; 0A3C _ 89. 53, 04
?_012:  test    ecx, ecx                                ; 0A3F _ 85. C9
        jne     ?_015                                   ; 0A41 _ 0F 85, 000000A9
        lea     ecx, [ebx+18H]                          ; 0A47 _ 8D. 4B, 18
        mov     eax, 8                                  ; 0A4A _ B8, 00000008
        lea     edi, [esp+24H]                          ; 0A4F _ 8D. 7C 24, 24
?_013:  mov     dword [esp+8H], eax                     ; 0A53 _ 89. 44 24, 08
        mov     dword [esp+4H], edi                     ; 0A57 _ 89. 7C 24, 04
        mov     dword [esp], ecx                        ; 0A5B _ 89. 0C 24
        call    memcpy                                  ; 0A5E _ E8, FFFFFFFC(rel)
?_014:  mov     eax, dword [ebx+8H]                     ; 0A63 _ 8B. 43, 08
        mov     byte [esi], al                          ; 0A66 _ 88. 06
        mov     eax, dword [ebx+8H]                     ; 0A68 _ 8B. 43, 08
        shr     eax, 8                                  ; 0A6B _ C1. E8, 08
        mov     byte [esi+1H], al                       ; 0A6E _ 88. 46, 01
        movzx   eax, word [ebx+0AH]                     ; 0A71 _ 0F B7. 43, 0A
        mov     byte [esi+2H], al                       ; 0A75 _ 88. 46, 02
        movzx   eax, byte [ebx+0BH]                     ; 0A78 _ 0F B6. 43, 0B
        mov     byte [esi+3H], al                       ; 0A7C _ 88. 46, 03
        mov     eax, dword [ebx+0CH]                    ; 0A7F _ 8B. 43, 0C
        mov     byte [esi+4H], al                       ; 0A82 _ 88. 46, 04
        mov     eax, dword [ebx+0CH]                    ; 0A85 _ 8B. 43, 0C
        shr     eax, 8                                  ; 0A88 _ C1. E8, 08
        mov     byte [esi+5H], al                       ; 0A8B _ 88. 46, 05
        movzx   eax, word [ebx+0EH]                     ; 0A8E _ 0F B7. 43, 0E
        mov     byte [esi+6H], al                       ; 0A92 _ 88. 46, 06
        movzx   eax, byte [ebx+0FH]                     ; 0A95 _ 0F B6. 43, 0F
        mov     byte [esi+7H], al                       ; 0A99 _ 88. 46, 07
        mov     eax, dword [ebx+10H]                    ; 0A9C _ 8B. 43, 10
        mov     byte [esi+8H], al                       ; 0A9F _ 88. 46, 08
        mov     eax, dword [ebx+10H]                    ; 0AA2 _ 8B. 43, 10
        shr     eax, 8                                  ; 0AA5 _ C1. E8, 08
        mov     byte [esi+9H], al                       ; 0AA8 _ 88. 46, 09
        movzx   eax, word [ebx+12H]                     ; 0AAB _ 0F B7. 43, 12
        mov     byte [esi+0AH], al                      ; 0AAF _ 88. 46, 0A
        movzx   eax, byte [ebx+13H]                     ; 0AB2 _ 0F B6. 43, 13
        mov     byte [esi+0BH], al                      ; 0AB6 _ 88. 46, 0B
        mov     eax, dword [ebx+14H]                    ; 0AB9 _ 8B. 43, 14
        mov     byte [esi+0CH], al                      ; 0ABC _ 88. 46, 0C
        mov     eax, dword [ebx+14H]                    ; 0ABF _ 8B. 43, 14
        shr     eax, 8                                  ; 0AC2 _ C1. E8, 08
        mov     byte [esi+0DH], al                      ; 0AC5 _ 88. 46, 0D
        movzx   eax, word [ebx+16H]                     ; 0AC8 _ 0F B7. 43, 16
        mov     byte [esi+0EH], al                      ; 0ACC _ 88. 46, 0E
        movzx   eax, byte [ebx+17H]                     ; 0ACF _ 0F B6. 43, 17
        mov     byte [esi+0FH], al                      ; 0AD3 _ 88. 46, 0F
        mov     eax, dword [esp+2CH]                    ; 0AD6 _ 8B. 44 24, 2C
; Note: Absolute memory address without relocation
        xor     eax, dword [gs:14H]                     ; 0ADA _ 65: 33. 05, 00000014
        jne     ?_018                                   ; 0AE1 _ 0F 85, 00000096
        add     esp, 60                                 ; 0AE7 _ 83. C4, 3C
        pop     ebx                                     ; 0AEA _ 5B
        pop     esi                                     ; 0AEB _ 5E
        pop     edi                                     ; 0AEC _ 5F
        pop     ebp                                     ; 0AED _ 5D
        ret                                             ; 0AEE _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_015:  cmp     ecx, 56                                 ; 0AF0 _ 83. F9, 38
        jg      ?_017                                   ; 0AF3 _ 7F, 7B
        mov     dword [esp+14H], 8                      ; 0AF5 _ C7. 44 24, 14, 00000008
        mov     ebp, 8                                  ; 0AFD _ BD, 00000008
?_016:  lea     eax, [ebx+ecx+18H]                      ; 0B02 _ 8D. 44 0B, 18
        mov     dword [esp+18H], ecx                    ; 0B06 _ 89. 4C 24, 18
        mov     ecx, dword [esp+14H]                    ; 0B0A _ 8B. 4C 24, 14
        lea     edi, [esp+24H]                          ; 0B0E _ 8D. 7C 24, 24
        mov     dword [esp], eax                        ; 0B12 _ 89. 04 24
        mov     dword [esp+4H], edi                     ; 0B15 _ 89. 7C 24, 04
        mov     dword [esp+8H], ecx                     ; 0B19 _ 89. 4C 24, 08
        call    memcpy                                  ; 0B1D _ E8, FFFFFFFC(rel)
        mov     ecx, dword [esp+18H]                    ; 0B22 _ 8B. 4C 24, 18
        add     ecx, ebp                                ; 0B26 _ 01. E9
        cmp     ecx, 63                                 ; 0B28 _ 83. F9, 3F
        jle     ?_014                                   ; 0B2B _ 0F 8E, FFFFFF32
        lea     ecx, [ebx+18H]                          ; 0B31 _ 8D. 4B, 18
        mov     dword [esp+18H], 8                      ; 0B34 _ C7. 44 24, 18, 00000008
        mov     eax, ebx                                ; 0B3C _ 89. D8
        sub     dword [esp+18H], ebp                    ; 0B3E _ 29. 6C 24, 18
        mov     edx, ecx                                ; 0B42 _ 89. CA
        mov     dword [esp+1CH], ecx                    ; 0B44 _ 89. 4C 24, 1C
        call    md5_process                             ; 0B48 _ E8, FFFFF4B3
        mov     eax, dword [esp+18H]                    ; 0B4D _ 8B. 44 24, 18
        mov     ecx, dword [esp+1CH]                    ; 0B51 _ 8B. 4C 24, 1C
        test    eax, eax                                ; 0B55 _ 85. C0
        je      ?_014                                   ; 0B57 _ 0F 84, FFFFFF06
        add     edi, dword [esp+14H]                    ; 0B5D _ 03. 7C 24, 14
        mov     eax, dword [esp+18H]                    ; 0B61 _ 8B. 44 24, 18
        jmp     ?_013                                   ; 0B65 _ E9, FFFFFEE9

; Filling space: 6H
; Filler type: lea with same source and destination
;       db 8DH, 0B6H, 00H, 00H, 00H, 00H

ALIGN   8
?_017:  mov     ebp, 64                                 ; 0B70 _ BD, 00000040
        sub     ebp, ecx                                ; 0B75 _ 29. CD
        mov     dword [esp+14H], ebp                    ; 0B77 _ 89. 6C 24, 14
        jmp     ?_016                                   ; 0B7B _ EB, 85
; md5_finish End of function

?_018:  ; Local function
; Note: Function does not end with ret or jmp
        call    __stack_chk_fail                        ; 0B7D _ E8, FFFFFFFC(rel)


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .rodata align=32 noexecute                      ; section number 4, const

pad.1879:                                               ; zword
        db 80H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0008 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0020 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0028 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0030 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........

w.1853: dd 00000001H                                    ; 0040 _ 1 


SECTION .eh_frame align=4 noexecute                     ; section number 5, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 40H, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ @.......
        dd md5_process-$-20H                            ; 0020 _ 00000000 (rel)
        dd 00000862H, 080E4100H                         ; 0024 _ 2146 135151872 
        dd 0E410285H, 4103870CH                         ; 002C _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 0034 _ 75894798 -2095837631 
        dd 0AC0E4605H, 07800301H                        ; 003C _ -1408350715 125829889 
        dd 41140E0AH, 41100EC3H                         ; 0044 _ 1091833354 1091571395 
        dd 410C0EC6H, 41080EC7H                         ; 004C _ 1091309254 1091047111 
        dd 42040EC5H, 0000000BH                         ; 0054 _ 1107562181 11 
        dd 00000010H, 00000060H                         ; 005C _ 16 96 
        dd md5_process-$+80CH                           ; 0064 _ 00000870 (rel)
        dd 0000002EH, 00000000H                         ; 0068 _ 46 0 
        dd 00000050H, 00000074H                         ; 0070 _ 80 116 
        dd md5_process-$+828H                           ; 0078 _ 000008A0 (rel)
        dd 000000F6H, 080E4100H                         ; 007C _ 246 135151872 
        dd 0E410285H, 4103870CH                         ; 0084 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 008C _ 75894798 -2095837631 
        dd 300E4305H, 0E0A7802H                         ; 0094 _ 806241029 235567106 
        dd 0EC34114H, 0EC64110H                         ; 009C _ 247677204 247873808 
        dd 0EC7410CH, 0EC54108H                         ; 00A4 _ 247939340 247808264 
        dd 020B4504H, 41140E65H                         ; 00AC _ 34292996 1091833445 
        dd 41100EC3H, 410C0EC6H                         ; 00B4 _ 1091571395 1091309254 
        dd 41080EC7H, 00040EC5H                         ; 00BC _ 1091047111 265925 
        dd 0000003CH, 000000C8H                         ; 00C4 _ 60 200 
        dd md5_process-$+8D4H                           ; 00CC _ 000009A0 (rel)
        dd 000001E2H, 080E4100H                         ; 00D0 _ 482 135151872 
        dd 0E410285H, 4103870CH                         ; 00D8 _ 239141509 1090750220 
        dd 0486100EH, 83140E41H                         ; 00E0 _ 75894798 -2095837631 
        dd 500E4305H, 0A014303H                         ; 00E8 _ 1343111941 167854851 
        dd 0C341140EH, 0C641100EH                       ; 00F0 _ -1019145202 -968814578 
        dd 0C7410C0EH, 0C541080EH                       ; 00F8 _ -952038386 -985593842 
        dd 0B42040EH                                    ; 0100 _ 188875790 


