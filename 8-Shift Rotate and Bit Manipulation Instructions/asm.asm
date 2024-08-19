.data
lastFlags dq 0	; 64 bit copy of flags register

.code
RestoreFlags proc
	push qword ptr [lastFlags]
	popfq
	ret
RestoreFlags endp

SaveFlags proc
	pushfq
	pop qword ptr [lastFlags]
	ret
SaveFlags endp

; int ShiftTest(unsigned long long *rcx)
 ShiftTest proc
	 mov rdx, qword ptr [rcx]	; Load parameter

	 call RestoreFlags	; Load the last flags

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; This is the operation we're testing!
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; You CAN'T use memory, only CL
	;; Shift Left / Right	: SHL,SHR
	;; Shift arithmetic		: SAR,SAL

	 rcr rdx, 1	; (<- Change this!) Perform shift/rotate operation
	
	;; Rotate Left / Right	: ROL, ROR
	;; Rotate With Carry	: RCL, RCR
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; End of operation
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	; Set up to return the result in *rcx, and the carry flag in eax
	 mov qword ptr [rcx], rdx	; Move result into *rcx

	 mov eax, 0		; Assume there's no carry
	 mov ecx, 1		; Move 1 into ecx
	 cmovc eax, ecx	; If the carry flag is set, move this 1 into EAX

	 call SaveFlags	; Save flags

	 ret
  ShiftTest endp

; ShiftDoubleTest proc
	; push rbx ; Save RBX

	; mov rax, qword ptr [rcx]	; Move param 1 into RAX
	; mov rbx, qword ptr [rdx]	; Move param 2 into RBX

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; This is the operation we're testing!
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Shift double Left/Right :SHRL, SH

	; shrd rax, rbx, 12	; (<- Change this!) Perform double operation
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; End of operation
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	; mov qword ptr [rdx], rax	; Place result into *rdx
	
	; pop rbx	; Restore caller's rbx

	; ret
; ShiftDoubleTest endp

END