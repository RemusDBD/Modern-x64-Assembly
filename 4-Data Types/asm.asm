.data
myByte db 78
myFloat real4 67.2

.code
dataType proc
	mov ax, ax

	db 12, 34, 56, 78

	mov ax, ax

	mov al, myByte
	mov eax, real4 ptr [myFloat]

	ret
dataType endp
end