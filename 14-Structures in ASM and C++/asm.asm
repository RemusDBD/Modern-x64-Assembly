.data
;MyUnion union
;	small db ?
;	medium dw ?
;	large dd ?
;	huge dq ?
;MyUnion ends

;pp MyUnion { 0ffffffffh }


MyClass struct
	i dd ?
MyClass ends

;MyStruct struct
;	c db ?
;	i dd ?
;	s dw ?
;	d real8 ?
;MyStruct ends

.code
SomeFunction proc
	mov [rcx].MyClass.i, 100 ; for asm doesn't care private/public

	;mov pp.large, 3400537897

	ret
SomeFunction endp
end