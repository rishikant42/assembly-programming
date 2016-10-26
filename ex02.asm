[ORG 0x100]
	mov	ax, [Num1]
	mov 	bx, [Num2]
	add	ax, bx
	mov	bx, [Num3]
	add	ax, bx
	mov	[Num4], ax
	mov	ax, 0x4C00
	int	0x21
;execution never comes at this line
Num1:	dw	5
Num2:	dw	10
Num3:	dw	15
Num4:	dw	0