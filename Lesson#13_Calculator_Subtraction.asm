%include 'functions.asm'
	
section .text
global _start
_start:

	mov eax, 90
	mov ebx, 9
	sub eax, ebx
	call _iprintLF

	call _quit
