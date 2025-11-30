; Criado por Arthur Ferreira Da Rosa
; ORGANIZAÇÃO E ARQUITETURA DE COMPUTADORES 2025/2º Semestre

; e) int A=4, B=2, C=0, D=0;
; while (D < 5) {
;   C += (A + B);
;   D++;
;}


inicio:
	MOV A, 4		; A = 4
	MOV B, 2		; B = 2
	MOV C, 0		; C = 0
	MOV D, 0		; D = 0

while:
	CMP D, 5		; Compara se D < 5
	JNC fim			; Se D >= 5 → fim
	JMP calculo 	; pula pro calculo


calculo:
	MOV A, 4		; Resete do A = 4
	ADD A, B		; A recebe o valor de A + B
	ADD C, A		; C = recebe o total do calculo A + B
	MOV A, D		; Move o valor de D para A
	INC	A			; Incrementa +1 no A
	MOV D, A		; Move o valor de A para D
    JMP while   	; volta pro inicio
	
fim:
	HLT			; fim