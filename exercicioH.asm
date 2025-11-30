; Criado por Arthur Ferreira Da Rosa
; ORGANIZAÇÃO E ARQUITETURA DE COMPUTADORES 2025/2º Semestre

; h)
; int A[3] = {1, 2, 3};
; int B[3] = {3, 2, 1};
; int C[3] = {0, 0, 0};
; int i = 0;
; for (i = 0; i < 3; i++) {
;   C[i] = A[i] + B[i];
; }

inicio:
    MOV D, A_array    ; D -> base de A[]
    MOV C, B_array    ; C -> base de B[]
    MOV B, C_array    ; B -> base de C[]

    MOV A, 0
    MOV [i], A

for_loop:
    MOV A, [i]
    CMP A, 3
    JAE fim

    MOV A, [D]        ; carrega elemento A[i] (indireto via D)
    ADD A, [C]        ; soma o elemento B[i] (indireto via C)
    MOV [B], A        ; escreve no local apontado por B

    INC D             ; D -> next A element
    INC C             ; C -> next B element
    INC B             ; B -> next C element

; i++
    MOV A, [i]
    INC A
    MOV [i], A

    JMP for_loop

fim:
    HLT

A_array:    DB 1
	        DB 2
	        DB 3
A_arrayend: DB 0

B_array:    DB 3
	        DB 2
	        DB 1
B_arrayend: DB 0

C_array:    DB 0
	        DB 0
	        DB 0
C_arrayend: DB 0

i: DB 0