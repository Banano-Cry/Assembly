%include	'functions.asm'

section	.text
global	_start

_start:
	mov	ecx, 777
	mov	ebx, filename
	mov	eax, 8		;Creat_Sys_Call
	int 	80h
	
	mov	edx, 12
	mov	ecx, contents
	mov	ebx, eax
	mov	eax, 4		;Write_Sys_Call
	int	80h

	mov	ecx, 0
	mov 	ebx, filename
	mov	eax, 5		;Open_Sys_Call
	int	80h

	mov	edx, 12
	mov	ecx, filecontent
	mov	ebx, eax
	mov	eax, 3		;Read_Sys_call
	int	80h

	mov	eax, filecontent
	call	_printLF
	call	_quit

section	.bss
filecontent	resb	255

section	.data
filename	db	'readme.txt',0h
contents	db	'Hello World!',0h
