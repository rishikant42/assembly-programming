[ORG 0x100]
	mov	al, [Num1]
	mov	bl, [Num1+1]
	add	al, bl
	mov	bl, [Num1+2]
	add	al, bl
	mov	[Num1+3], ax
	mov	ax, 0x4C00
	int	0x21
;execution never comes at this line

Num1:	db	5, 10, 15, 0
