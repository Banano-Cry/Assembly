%include 'functions.asm'

section .text
global _start

_start:
	mov	eax, 2
	int	80h
	
	cmp	eax, 0
	jz	child

parent:
	mov	eax, parentMsg
	call	_printLF

	call	_quit

child:
	mov	eax, childMsg
	call	_printLF
	
	call	_quit

section .data
childMsg	db	'Child process',0h
parentMsg	db	'Parent process',0h
