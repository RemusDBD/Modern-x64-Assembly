.data
myQWordVar sqword 0

.code
arithmeticFunction proc
	; //ADD
	mov rax, 5
	mov rcx, 12

	add rax, rcx

	xor rdx, rdx ;				Clear rdx (set rdx to 0)
	mov rax, 2147483648 ;		Move the value 2147483648 into rax
	add rdx, rax ;				Add the value in rax (2147483648) to rdx
	mov myQWordVar,	RDX	;		Store the value of rdx into myQWordVar

	xor rbx, rbx ;				Clear rbx (set rbx to 0)
	add rbx, 2147483648 ;		Add the immediate value 2147483648 to rbx 
	;
	; the immediate value is treated as a 32-bit integer. If the most significant bit (31st bit) 
	; of the immediate value is set to 1, it is interpreted as a negative value in two's complement representation.
	; This can lead to sign extension when the immediate value is extended to 64 bits, 
	; resulting in a negative value in a 64-bit register."
	; 
	; Hexadecimal (32-bit): 0x80000000
	; 32-Binary: 1000 0000 0000 0000 0000 0000 0000 0000
	; Hexadecimal (64-bit): 0xFFFFFFFF80000000
	; 64-Binary: 1111 1111 1111 1111 1111 1111 1111 1111 1000 0000 0000 0000 0000 0000 0000 0000
	; 
	; Potential Vulnerable : CWE-194
	;
	mov myQWordVar, RBX	;		Store the value of rbx into myQWordVar

	; //INC - increment a register or value
	xor rax, rax
	mov rax, 7
	inc rax
	; // unsigned overflow but no carry flag in INC
	mov al, 255
	inc al
	; // with carry flag
	mov al, 255
	add al, 1

	; //DEC - decrement a register or value
	xor rax, rax
	mov rax, 7
	dec al
	; // unsigned overflow but no carry flag in DEC
	xor al, al
	mov al, 0
	dec al
	; // with carry flag
	xor al, al
	mov al, 0
	sub al, 1

	ret
arithmeticFunction endp
end