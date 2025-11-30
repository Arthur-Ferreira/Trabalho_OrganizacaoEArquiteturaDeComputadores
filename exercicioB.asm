; Criado por Arthur Ferreira Da Rosa
; ORGANIZAÇÃO E ARQUITETURA DE COMPUTADORES 2025/2º Semestre

; a) int A=4, B=2, C=0;
; 	 C = A - B;

inicio:
	MOV A, 4	; A = 4
	MOV B, 2	; B = 2
	MOV C, 0	; C = 0

calculo:
	SUB A, B	; A = A - B, total 2
	MOV C, A	; C = o total do calculo = 2
	
fim:
	HLT