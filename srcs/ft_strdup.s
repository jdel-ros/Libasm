section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
	cmp		rdi, 0x0 ;if (str == NULL)
	je		_error_dup ; si oui error
	call	_ft_strlen
	inc		rax
	push	rdi ; on met sur une pile rdi, pour utiliser le registre
	mov		rdi, rax ; rdi prends la valeur de rax
	call	_malloc
	cmp		rax, 0x0
	je		_error_dup
	pop		rdi ;on prend l 'element sur le dessus de la pile pour le mettre dans rdi
	push	rsi
	mov		rsi, rdi ; rsi second argument (src)
	mov		rdi, rax ; rdi premier argument (dst)
	call	_ft_strcpy
	pop		rsi
	ret

_error_dup:
	mov		rax, 0x0
	ret
