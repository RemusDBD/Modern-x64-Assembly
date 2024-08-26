.data
; my_integers1 dd 0, 1, 2, 3
; my_integers2 dd 5, 5, 5, 5

; myFloats1 real4 0.0, 1.0, 2.0, 3.0
; myFloats2 real4 7.0, 6.0, 5.0, 4.0

myFloats1 real8 0.0, 5.0
myFloats2 real8 7.0, 6.0


.code
TestSIMD proc
	; movdqu xmm0, xmmword ptr [my_integers1]
	; movdqu xmm1, xmmword ptr [my_integers2]

	; paddd xmm0, xmm1
	; psubd xmm0, xmm1

	; movaps xmm0, xmmword ptr [myFloats1]
	; movaps xmm1, xmmword ptr [myFloats2]

	; addps xmm0, xmm1
	; subps xmm0, xmm1
	; mulps xmm0, xmm1
	; divps xmm0, xmm1

	movapd xmm0, xmmword ptr [myFloats1]
	movapd xmm1, xmmword ptr [myFloats2]

	; addpd xmm0, xmm1
	; subpd xmm0, xmm1
	; mulpd xmm0, xmm1
	divpd xmm0, xmm1

	ret
TestSIMD endp
end