; Criado por Arthur Ferreira Da Rosa
; ORGANIZAÇÃO E ARQUITETURA DE COMPUTADORES 2025/2º Semestre

; d) int A=4, B=2, C=2, D=0;
; 	 D = (A + B) * C;

inicio:
	MOV A, 4	; A = 4
	MOV B, 2	; B = 2
	MOV C, 2	; C = 2
	MOV D, 0	; D = 0

calculo:
	ADD A, B	; A recebe o valor de A + B
	MOV D, A	; D recebe o total do calculo A + B
	MUL C		; A = A * C (6 * 2) = total do calculo = 12
	MOV D, A	; D = o total do calculo = 12

fim:	
	HLT