%include 'functions.asm'

section .text
global _start
_start:
	mov eax, 90
	mov ebx, 9
	div ebx
	call _iprint

	mov eax, msg
	call _print
	
	mov eax, edx
	call _iprintLF

	call _quit

section .data
msg db ' remainder '
