.data
myfloat real4 45.6

.code
CallMeMaybe proc
	movsd xmm0, real4 ptr [myfloat]
	ret
CallMeMaybe endp
end