%define THEATERS_COUNT 4 ; old is 3

@JMP 0x00434690 _TheaterNameStart_Update1
@JMP 0x00434765 _TheaterNameStart_Update2
@JMP 0x004346B8 _TheaterMixNameStart_Update1
@JMP 0x004346E0 _TheaterExtensionNameStart_Update1

@JMP 0x00434686 _Theaters_Count_Update1
@JMP 0x00434786 _Theaters_Count_Update2
@JMP 0x004346AE _Theaters_Count_Update3
@JMP 0x004346D6 _Theaters_Count_Update4
@JMP 0x0043779E _Theaters_Count_Update5

@JMP 0x004361FC _Theaters_Init_Code_Update1
@JMP 0x00437FB8 _Theaters_Init_Code_Update2
@JMP 0x00438161 _Theaters_Init_Code_Update3

_Theaters_Init_Code_Update3:
    push    str_DesertMix
    mov     ecx, [0x00469360]
    mov     dl, 1
    mov     eax, 0x00433C34
    call    0x00433E6C
    mov     [DesertMix], eax
    
    push    str_WinterMix
    mov     ecx, [0x00469360]
    mov     dl, 1
    mov     eax, 0x00433C34
    call    0x00433E6C
    mov     [WinterMix], eax
    
    push    str_JungleMix
    mov     ecx, [0x00469360]
    mov     dl, 1
    mov     eax, 0x00433C34
    call    0x00433E6C
    mov     [JungleMix], eax

.Ret:
    push    0x004384AC ; offset aTemperat_mix ; "\ftemperat.mix"
    jmp     0x00438166

_Theaters_Init_Code_Update2:
    lea     edx, [ebp-0x200]
    lea     eax, [ebp-0x300]
    call    0x00402AF8
    mov     edx, str_DesertMix
    lea     eax, [ebp-0x300]
    call    0x00402AA0
    lea     ecx, [ebp-0x300]
    mov     dl, 1
    mov     eax, 0x433C34
    call    0x00433CB0
    mov     [DesertMix], eax
    
    lea     edx, [ebp-0x200]
    lea     eax, [ebp-0x300]
    call    0x00402AF8
    mov     edx, str_JungleMix
    lea     eax, [ebp-0x300]
    call    0x00402AA0
    lea     ecx, [ebp-0x300]
    mov     dl, 1
    mov     eax, 0x433C34
    call    0x00433CB0
    mov     [JungleMix], eax
    
    lea     edx, [ebp-0x200]
    lea     eax, [ebp-0x300]
    call    0x00402AF8
    mov     edx, str_WinterMix
    lea     eax, [ebp-0x300]
    call    0x00402AA0
    lea     ecx, [ebp-0x300]
    mov     dl, 1
    mov     eax, 0x433C34
    call    0x00433CB0
    mov     [WinterMix], eax

.Ret:
    lea     edx, [ebp-0x200]
    jmp     0x00437FBE

_Theaters_Init_Code_Update1:
    cmp     ebx, 0
    jz      0x00436208
    cmp     ebx, 1
    jz      0x00436212
    cmp     ebx, 2
    jz      0x0043621C
    cmp     ebx, 3
    jz      .Desert_Theater
    cmp     ebx, 4
    jz      .Winter_Theater
    cmp     ebx, 5
    jz      .Jungle_Theater
    
    jmp     0x00436224

.Desert_Theater:
    mov     eax, [DesertMix]
    mov     [ebp-0xC], eax
    jmp     0x00436224

.Winter_Theater:
    mov     eax, [WinterMix]
    mov     [ebp-0xC], eax
    jmp     0x00436224

.Jungle_Theater:
    mov     eax, [JungleMix]
    mov     [ebp-0xC], eax
    jmp     0x00436224    


_Theaters_Count_Update5:
    cmp     ebx, THEATERS_COUNT
    jnz     0x00437761
    jmp     0x004377A3

_Theaters_Count_Update4:
    cmp     ebx, THEATERS_COUNT
    jge     0x004346EE
    jmp     0x004346DB

_Theaters_Count_Update3:
    cmp     ebx, THEATERS_COUNT
    jge     0x004346C6
    jmp     0x004346B3

_Theaters_Count_Update2:
    cmp     esi, THEATERS_COUNT
    jnz     0x0043476A
    jmp     0x0043478B

_Theaters_Count_Update1:
    cmp     ebx, THEATERS_COUNT
    jge     0x0043469E
    jmp     0x0043468B

_TheaterExtensionNameStart_Update1:
    add     edx, TemperateTheaterExtensionStart
    jmp     0x004346E6

_TheaterMixNameStart_Update1:
    add     edx, TemperateTheaterMIXStart
    jmp     0x004346BE

_TheaterNameStart_Update2:
    mov     ebx, TemperateTheaterStart
    jmp     0x0043476A

_TheaterNameStart_Update1:
    add     edx, TemperateTheaterStart
    jmp     0x00434696