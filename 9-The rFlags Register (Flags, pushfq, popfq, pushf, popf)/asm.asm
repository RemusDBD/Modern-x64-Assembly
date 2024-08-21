.code
FlagFunction proc

; test CY Carry flag = 1  unsinged overflow

	mov al, 255
	add al, 1

; test PE Parity Flag  = 1  even number of one bits in the lowest part

	mov eax, 3
	and eax, eax

	mov eax, 7
	and eax, eax

;  test AC Auxiliary Flag = 1 an overflow of the lowest 4 bit of the result

	mov ebx, 15
	add ebx, 1

;	test ZR Zero Flag = 1 the last result zero or not
	
	xor eax, eax
	add eax, 5

;	test PL Sign Flag = 1 last result was Negative ; = 0 Positive

	mov eax, 7
	mov ecx, 12

	sub eax, ecx ; PL = 1 
	add eax, ecx ; PL = 0

;	test UP Diretion Flag = 1 Reading strings forwards ; = 0 backwards
	; string instruction 

	std	; set the direction flag   UP = 1
	cld	; clear the direction flag UP = 0
	std

;	test OV Overflow flag = 1 sign changed and the orignial signs were the same
;	-5+5 won't set OV but -120+-120 would if using bytes

	mov rax, -1
	shr	rax, 1
	inc rax

	ret
FlagFunction endp
end