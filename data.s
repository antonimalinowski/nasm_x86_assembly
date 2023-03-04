section .data
	num DD 5

section .text
global _start

_start:
	MOV eax,1
	MOV ebx,1
	INT 80h
