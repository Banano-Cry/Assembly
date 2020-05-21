section .data
msg db '!Hello World!',0Ah

section .text
global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, 13
	int 80h

	mov ebx, 0
	mov eax, 1
	int 80h
