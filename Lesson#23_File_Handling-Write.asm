%include 'functions.asm'

section .text
global _start

_start:
	mov	ecx, 0777
	mov	ebx, filename
	mov	eax, 8
	int 	80h

	mov	edx, 12
	mov	ecx, contents
	mov	ebx, eax
	mov	eax, 4
	int	80h

	call	_quit

section .data
filename	db	'readme.txt',0h
contents	db	'Hello World!',0h
