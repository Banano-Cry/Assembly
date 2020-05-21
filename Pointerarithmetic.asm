section .data
msg db "An instance of pointer arithmetic",0Ah

section .text
global _start

_start:

	mov ebx, msg
	mov eax, msg

nextchar:
	cmp byte [eax], 0
	jz finished
	add eax, 1
	jmp nextchar

finished:
	sub eax, ebx
	mov edx, eax
	mov ecx, msg
	mov eax, 4
	mov ebx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
