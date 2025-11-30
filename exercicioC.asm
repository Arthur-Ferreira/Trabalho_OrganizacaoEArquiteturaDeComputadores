; Criado por Arthur Ferreira Da Rosa
; ORGANIZAÇÃO E ARQUITETURA DE COMPUTADORES 2025/2º Semestre

; c) int A=4, B=2, C=0;
; 	 C = (A + B) * 2;

inicio:
	MOV A, 4	; A = 4
	MOV B, 2	; B = 2
	MOV C, 0	; C = 0

calculo:
	ADD A, B	; A = A + B, total 6
	MOV C, A	; C = o total do calculo = 6
	MUL B		; A = A * B (6 * 2) = total do calculo = 12
	MOV C, A	; C = o total do calculo = 12

fim:
	HLT