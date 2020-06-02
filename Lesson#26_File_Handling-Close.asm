%include	'functions.asm'

section .text
global 	_start

_start:
	mov	ecx, 777
	mov	ebx, filename
	mov	eax, 8
	int	80h
	
	mov	edx, 12
	mov	ecx, contents
	mov	ebx, eax
	mov	eax, 4
	int	80h

	mov	ecx, 0
	mov	ebx, filename
	mov	eax, 5
	int	80h

	mov	edx, 12
	mov	ecx, filecontents
	mov	ebx, eax
	mov	eax, 3
	int	80h
	
	mov	eax, filecontents
	call	_printLF

	mov	ebx,eax
	mov	eax, 6
	int	80h

	call 	_quit

section	.bss
filecontents	resb	255

section	.data
filename	db	'readme.txt',0h
contents	db	'Hello World!',0h
