section	.text
	global	_ft_strlen

_ft_strlen:
	mov		rax, 0
	jmp		_loop
_loop:
	cmp		[rdi + rax], byte 0x0
	jz		done
	inc		rax
	jmp		_loop
done:
	ret	
