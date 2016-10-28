[ORG 0x100]
	mov	ax, [Num1]
	mov 	bx, [Num1+2]
	add	ax, bx
	mov	bx, [Num1+4]
	add	ax, bx
	mov	[Num1+6], ax
	mov	ax, 0x4C00              ; terminate program
	int	0x21
;execution never comes at this line
Num1:	dw	5
	dw	10
	dw	15
	dw	0

;or
; Num1:	dw	5, 10, 15, 0
