; Criado por Arthur Ferreira Da Rosa
; ORGANIZAÇÃO E ARQUITETURA DE COMPUTADORES 2025/2º Semestre

; f) int A=0, B=0, C=0, D=0;
; while (D < 10) {
;	if(D < 5){
;		A++;
;	} else {
;		B++;
;	}
;   C += (A + B);
; 	D++;
;}


inicio:
	MOV A, [vA]	; A = 0
	MOV B, [vB]	; B = 0
	MOV C, [vC]	; C = 0
	MOV D, [vD]	; D = 0

while:
	
	CMP D, 10	; Compara se D < 5
	JNC fim		; Se D >= 5 → fim
	JMP if		; pula pro calculo

if:
	CMP D, 5	; Compara se D < 5
	JB incA		; Se D <= 5 → incA
	JNC incB	; Se D >= 5 → incB

incA:
	MOV A, [vA]
	INC A
	MOV [vA], A
	JMP calculo 	; pula pro calculo

incB:
	MOV B, [vB]
	INC B
	MOV [vB], B
	JMP calculo 	; pula pro calculo

calculo:
	MOV A, [vA]
	ADD A, [vB]	; A = A + B, total 6
	ADD C, A	; C = o total do calculo = 6
	MOV A, D	; A = A * B (6 * 2) = total do calculo = 12
	INC	A		; incrementa +1 no D
	MOV D, A	; D
    JMP while  ; volta pro inicio
	
fim:
	HLT			; fim

	vA: DB 0
	vB: DB 0
	vC: DB 0
	vD: DB 0