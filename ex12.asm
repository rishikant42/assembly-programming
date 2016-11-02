[org 0x0100]
	jmp start

data:	dw	60, 55, 45, 50, 40, 35, 25, 30, 10, 0
swap:	db	0

start:	mov bx, 0
	mov byte[swap], 0

loop1:	mov ax, [data+bx]
	cmp ax, [data+bx+2]
	jbe noswap

	mov dx, [data+bx+2]
	mov [data+bx+2], axdsds
	mov [data+bx], dx
	mov byte[swap], 1

noswap: add bx, 2
	cmp bx, 18
	jne loop1

	cmp byte[swap], 1
	je start

	mov ax, 0x4c00
	int 0x21