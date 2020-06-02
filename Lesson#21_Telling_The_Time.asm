%include	'functions.asm'

section .text
global _start

_start:
	mov	eax, msg
	call	_print
	
	mov eax, 13
	int 80h
	
	call	_iprintLF
	call	_quit

section .data
msg	db	'Seconds since jan 01 1970: ', 0h
