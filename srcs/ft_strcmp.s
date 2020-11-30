section .text
	global _ft_strcmp

_ft_strcmp:
	push	rcx
	mov		rcx, 0x0
	cmp		rdi, 0x0
	je		_return_NULL
	cmp		rsi, 0x0
	je		_return_NULL	

_strcmp_loop:
	cmp		[rdi + rcx], byte 0x0
	je		_return_check_end
	cmp		[rsi + rcx], byte 0x0
	je		_return_sup
	mov		dl, byte [rdi + rcx]	
	cmp		dl, byte [rsi + rcx]
	jg		_return_sup
	jl		_return_inf
	inc		rcx
	jmp		_strcmp_loop

_return_check_end:
	cmp		[rsi + rcx], byte 0x0
	je		_return_equal
	jmp		_return_inf

_return_NULL:
	cmp		rdi, rsi
	jg		_return_sup
	jl		_return_inf
	jmp		_return_equal

_return_inf:
	pop		rcx
	mov		rax, -1
	ret

_return_sup:
	pop		rcx
	mov		rax, 1
	ret
	
_return_equal:
	pop		rcx
	mov		rax, 0
	ret
