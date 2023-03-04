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