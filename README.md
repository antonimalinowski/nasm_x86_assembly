This repo stores documents my progress in learning NASM x86 assembly language. Leisure time activity.

syntax:
MOV -> instruction to move data
eax, ebx -> registers
INT -> (interrupt)
nasm -f elf -o program.o program.s -> output the file in the elf file format
ld -m elf_i386 -o program program.o -> (load emulator) compile for 32 bits = output the file for intel_386 assembly
gdb program -> debug program
layout asm -> go into assembly mode showing all the informations related to my assembly program
[num] -> go to the address where num is stored, get the value that's stored there and move that into the register
echo $? -> echo out the status code
bx -> 16 bits of the 32 bits ebx register
bl -> 8 bits on the 'lower' half of the register (2^0, 2^1, 2^2, etc.)