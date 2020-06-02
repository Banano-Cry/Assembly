%include 'functions.asm'

section .text
global _start

_start:
	mov 	ecx, 0777
	mov 	ebx, filename
	mov	eax, 8
	int	80h
	mov	ebx, eax
	mov eax, 1
	int 80h
	call 	_quit

section .data
filename	db	'readme.txt'
