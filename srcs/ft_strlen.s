section	.text
	global	_ft_strlen

_ft_strlen:
	mov		rax, 0 ; on initialise rax a 0
	jmp		_loop ;on rentre dans la fonction loop
_loop:
	cmp		[rdi + rax], byte 0x0 ; condition if (str[rax] == 0)
	jz		done ; si la condition est valide on jump a done
	inc		rax ; on incremente rax, rax est la valeur de retour
	jmp		_loop ; on jump sur loop
done:
	ret
