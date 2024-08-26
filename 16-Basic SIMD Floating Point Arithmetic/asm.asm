.data
; vec1 real4 1.0, 2.0, 3.0, 4.0  ; single float 
; vec2 real4 5.0, 6.0, 7.0, 8.0

; vec1 real8 1.0, 2.0  ; double float 
; vec2 real8 5.0, 6.0

; vec1 real4 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0 ; AVX float 
; vec2 real4 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 16.0

 vec1 real8 1.0, 2.0, 3.0, 4.0 ; AVX double float 
 vec2 real8 5.0, 6.0, 7.0, 8.0

.code
GoASM proc
	; movups xmm0, xmmword ptr [vec1]
	; movups xmm1, xmmword ptr [vec2]

	; addps xmm0, xmm1
	; addps xmm0, xmmword ptr [vec2]
	; subps xmm0, xmmword ptr [vec2]
	; mulps xmm0, xmmword ptr [vec2]
	; divps xmm0, xmmword ptr [vec2]

	; movapd xmm0, xmmword ptr [vec1]

	; addpd xmm0, xmmword ptr [vec2]
	; subpd xmm0, xmmword ptr [vec2]
	; mulpd xmm0, xmmword ptr [vec2]
	; divpd xmm0, xmmword ptr [vec2]

	; vmovups ymm0, ymmword ptr [vec1]
	; vmovups ymm1, ymmword ptr [vec2]

	; vaddps ymm2, ymm0, ymm1

	; vaddps ymm2, ymm0, ymmword ptr [vec2]
	; vsubps ymm2, ymm0, ymmword ptr [vec2]
	; vmulps ymm2, ymm0, ymmword ptr [vec2]
	; vdivps ymm2, ymm0, ymmword ptr [vec2]

	vmovupd ymm0, ymmword ptr [vec1]
	vmovupd ymm1, ymmword ptr [vec2]

	; vaddpd ymm2, ymm0, ymm1
	; vsubpd ymm2, ymm0, ymm1
	; vmulpd ymm2, ymm0, ymm1
	vdivpd ymm2, ymm0, ymm1

	ret
GoASM endp
end