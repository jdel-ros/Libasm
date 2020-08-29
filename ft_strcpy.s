section .text
	global _ft_strcpy

_ft_strcpy:             ;dst = rdi && src = rsi
	push	rcx
	mov		rcx, 0x0
	cmp		rsi, byte 0x0
	jz		return_false

_strcpy_loop:
	mov		dl, byte [rsi + rcx]
	mov		byte [rdi + rcx], dl
	cmp		[rsi + rcx] , byte 0x0
	jz		return_true
	inc		rcx
	jmp		_strcpy_loop

return_false:
	mov		rax, rsi
	pop		rcx
	ret

return_true:
	mov		rax, rdi
	pop		rcx
	ret
