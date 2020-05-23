;Calculate the len of a message
_len:
	push ebx
	mov ebx, eax
	
_nextchar:
	cmp byte [eax], 0
	jz _finished
	add eax, 1
	jmp _nextchar

_finished:
	sub eax, ebx
	pop ebx
	ret

;Print a message
_print:
	push edx
	push ecx
	push ebx
	push eax
	call _len

	mov edx, eax
	pop eax
	mov ecx, eax
	mov ebx, 1
	mov eax, 4
	int 80h

	pop ebx
	pop ecx
	pop edx
	ret

;Print a Linefeeds
_printLF:
	call _print
	push eax
	mov eax, 0Ah
	push eax
	mov eax, esp
	call _print
	pop eax
	pop eax
	ret


;Exit program
_quit:
	mov eax, 1
	mov ebx, 0
	int 80h
	ret 
