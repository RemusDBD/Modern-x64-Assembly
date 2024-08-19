.code
; Syntaxx for instructions:
; AND DEST, SRC
; AND mem/reg, mem/reg/imm
; OR mem/reg, mem/reg/imm
; NOT mem/reg
; XOR mem/reg, mem/reg/imm

; Truth Table:
; A B	Out
; 0 0	0
; 0 1	0
; 1 0	0
; 1 1	1



BooleanFunction proc
	  ; AND
	mov eax, 1001100010011b
	mov ecx, 1001100010010b
	  ;   0001001100010010
	and eax, ecx

	  ; OR
	xor eax, ecx
	mov eax, 1001100010011b
	mov ecx, 1001100010010b
	  ;   0001001100010011
	or eax, ecx

	    ; NOT
	  mov eax, 1001100010011b
	    ;   1110110011101100 all the 1 becomes 0 ; all the 0 becomes 1
	  not eax

		; XOR in cpp calls ^/ hat
	  mov eax, 1001100010011b
	  mov ecx, 1001000010010b
		;	0000000100000001 when the numbers not equal = 1
	  xor eax, ecx

		; XNOR
	  mov eax, 1001100010011b
	  mov ecx, 1001000010010b
		;	1111111011111110
	  xor eax, ecx
	  not eax

		; NOR
	  mov eax, 1001100010011b
	  mov ecx, 1001000010010b
		;	1110110011101100 both are the input are 0 = 1

		; NAND
	  mov eax, 1001100010011b
	  mov ecx, 1001000010010b
	  	;	1110110111101101
	  and eax, ecx
	  not eax

	  	; NAND in AND
	  xor ecx, eax
	  mov eax, 1001100010011b
		;	1110110011101100 NAND the same value with itself = AND
	  and eax, ecx
	  not eax

		; NAND in OR
	  xor ecx, eax
	  mov eax, 1001100010011b
	  mov ecx, 1010001000110b
		;	0001011101010111
	  and eax, eax
	  not eax

	  and ecx, ecx
	  not ecx

	  and eax, ecx
	  not eax

	ret
BooleanFunction endp
end