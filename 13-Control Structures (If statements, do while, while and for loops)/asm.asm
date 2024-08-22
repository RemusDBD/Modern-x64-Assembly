.code
ifFunction proc

	push rbx

	;int a = 5;
	;int b = 7;
	;int c = 0;

	;if (a < b && a == 10)
	;	c = 1;

	mov eax, 10
	mov ebx, 70
	mov ecx, 0	; Result of both conditions
	mov r8d, 0

	mov edx, 1
	
	cmp eax, ebx
	cmovl ecx, edx	; Move 1 into ECX if A < B
	cmp eax, 10
	cmove r8d, edx	; Move 1 into R8D if A == 10

	and ecx, r8d

	pop rbx
	ret

ifFunction endp


whileFunction proc
	
	mov eax, 0	; EAX is i

	cmp eax, 5				; inital check
	jge Finished

LoopHead:
	; Body of the whileloop
	inc eax ; EAX++

	cmp eax, 5
	jl LoopHead

Finished:

	ret
whileFunction endp

DOwhileFunction proc

	mov eax, 0	; EAX is i

LoopHead:
	;Body of the do/whileloop
	inc eax ; EAX++

	cmp eax, 5
	jl LoopHead

Finished:

	ret
DOwhileFunction endp

forLoopFunction proc

	move eax, 0

	cmp eax, 10
	jge Finished

LoopHead:
	
	; Body of the loop

	inc eax

	cmp eax, 10
	jl LoopHead

Finished:

	ret
forLoopFunction endp

end