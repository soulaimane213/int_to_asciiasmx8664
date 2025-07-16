section .bss
	buffer resb  10




section .text
global _start
	_start:

	mov rax , 12345
	mov rdx , 0
	mov r8 , 0
	mov rsi ,buffer + 9
	mov rbx , 10


	convert_loop:
	xor rdx , rdx
	div rbx ; rax = 13 / rdx = 3 + 48
	add dl , 48
	mov byte [rsi] , dl
	dec rsi 
	inc r8
	cmp rax , 0
	jnz convert_loop
	
	inc rsi 

	;write syscall
	mov rax , 1
	mov rdi , 1
	mov rsi , rsi
	mov rdx , r8
	syscall


	;exit syscall
	mov rax , 60
	syscall




