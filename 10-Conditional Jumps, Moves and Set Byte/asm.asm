.code
ConditionalFunction proc
	; Conditional Jumps
	
	mov eax, -9
	add eax, -12
	jo Overflowed		; jo  =	jump on overflow
	jno DidntOverflow	; jno = jump not overflow

Overflowed:			; label
	mov rax, 12

DidntOverflow:		; label
	mov rax, 15

	; Conditional Moves

	push rbx

	mov ebx, 67
	mov eax, -1
	add eax, 1
	cmovc eax, ebx ; if the carry flag is set = 1 should move

	pop rbx

	; Demo for is 78 below or above 90

	mov rax, 78
	mov rbx, 90

	cmp rax, rbx
	jb WasBelow ; jb = jump below
	ja WasAbove ; ja = jump above

WasBelow:
	pop rbx
	

WasAbove:
	pop rbx
	

	; Demo move sign

	push rbx

	mov rbx, 100
	
	mov rax, 50
	mov rcx, 90
	sub rax, rcx

	cmovs rax, rbx

	pop rbx

	; Demo JG & JL greater & less than signed data

	push rbx

	mov eax, -9
	mov ecx, 100
	cmp eax, ecx
	setl bl

	pop rbx
	ret

ConditionalFunction endp
end