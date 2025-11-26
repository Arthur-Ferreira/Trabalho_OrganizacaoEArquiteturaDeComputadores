; Criado por Arthur Ferreira Da Rosa
; ORGANIZAÇÃO E ARQUITETURA DE COMPUTADORES 2025/2º Semestre

; d) int A=4, B=2, C=2, D=0;
; 	 C = (A + B) * 2;

inicio:
	MOV A, 4	; A = 4
	MOV B, 2	; B = 2
	MOV C, 2	; C = 2
	MOV D, 0	; A = 0

calculo:
	ADD A, B	; A = A + B, total 6
	MOV D, A	; D = o total do calculo = 6

multiplicacao:
	MUL D, C		; D = D * 2 = total da multiplicacao 12
	
	HLT