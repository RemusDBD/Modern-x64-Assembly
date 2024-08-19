.data
bittyye db 7
myBte db 56
myCte db 67
.code
movleaFunction proc
	mov rax, 89
	mov cx, ax

	mov bittyye, cl
	mov al, bittyye

	mov rax, rax

	mov al, al

	lea rax, myBte ; Load the address of myBte into rax
	mov byte ptr [rax], 7 ; Move the value 7 into the memory location pointed to by rax (which is myBte)

	lea rbx, myCte ; Load the address of myCte into rbx
	mov rbx, 7 ; Move the value 7 into the rbx register (overwriting the address of myCte)

	ret
movleaFunction endp
end