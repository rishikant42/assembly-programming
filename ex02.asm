[ORG 0x100]
	mov	ax, [Num1]      ; load first number in ax  
	mov 	bx, [Num2]    ; load second number in bx
	add	ax, bx          ; accumulate sum in ax
	mov	bx, [Num3]      ; load third number in bx
	add	ax, bx          ; accumulate sum in ax
	mov	[Num4], ax      ; store sum in num4
	mov	ax, 0x4C00      ; terminate program
	int	0x21
;execution never comes at this line
Num1:	dw	5
Num2:	dw	10
Num3:	dw	15
Num4:	dw	0
