.data
.code
TestFunction proc
	push rbx

	; DIV reg/mem

	mov ax, 50
	mov bl, 3
	div bl ; AX

	; Result: AL
	; Remainder: AH

	pop rbx

	; Second Demo
	push rbx

	; DX:AX
	mov ax, 50
	xor dx, dx
	mov cx, 3
	div cx

	; Result: AX
	; Remainder : DX

	pop rbx

	; Third  Demo
	push rbx

	; EDX:EAX
	
	mov eax, 7871
	xor edx, edx
	mov ecx, 78
	div ecx

	; Result: EAX
	; Remainder : EDX

	pop rbx

	; Forth  Demo
	push rbx

	; RDX:RAX 
	; (be careful result need to fit into RAX or get an Integer Overflow crash)
	
	mov rax, 79871
	mov rdx, 4
	mov rbx, 1238
	div rbx
	; Result: RAX
	; Remainder : RDX

	pop rbx
	ret
TestFunction endp

; Returns the GCD of two unsigned 64 bit ints
GCD_ASM proc
	mov rax, 0 ; Error value
	cmp rcx, 0
	je Finished
	cmp rdx, 0
	je Finished

	push rbx
	mov rbx, rdx	; Free RDX so we can use DIV

LoopHead:
	xor rdx, rdx	; Clear RDX
	mov rax, rcx	; Move lower 64bits of dividend
	div rbx			; RDX will be remainder
	mov rcx, rbx	; Copy X to Y
	mov rbx, rdx	; Copy remainder to RBX

	cmp rdx,0
	jne LoopHead

	mov rax, rcx

	pop rbx

Finished:

	ret
GCD_ASM endp




end