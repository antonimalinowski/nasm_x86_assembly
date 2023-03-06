This repo documents my progress in learning NASM x86 assembly language. Leisure time activity.

"Hello World" in nasm assembly:\
nasm -felf64 hello.asm && ld -o hello hello.o && ./hello

OR if you already have 'hello' executable simply do:\
./hello

To get (and run) the executable of files ending with .s do the following:\
nasm -f elf -o file.o file.s\
ld -m [elf_i386] file file.o\
./file\
echo $?

syntax:\
DB -> define byte (8 bits)\
DW -> define word (2 bytes)\
DD -> define doubleword\
DQ -> define quadword\
DT -> define ten bytes\
num DB 3 DUP(2) -> write 2 into memory 3 times (can be used to initialize data)\
RESB -> reserve byte\
MOV -> instruction to move data\
eax, ebx -> registers\
INT -> (interrupt) call kernel\
nasm -f elf -o file.o file.s -> output the file in the elf file format\
ld -m elf_i386 -o file file.o -> (load emulator) compile for 32 bits = output the file for intel_386 assembly\
gdb file -> debug program\
layout asm -> go into assembly mode showing all the informations related to my assembly program\
[num] -> go to the address where num is stored, get the value that's stored there and move that into the register\
echo $? -> echo out the status code\
bx -> 16 bits of the 32 bits ebx register\
bl -> 8 bits on the 'lower' half of the register (2^0, 2^1, 2^2, etc.)\
echo "set dissasembly-flavour intel" > ~ /.gdbinit -> setup intel syntax (as used by nasm) instead of AT&T syntax (as used by gdb)\
section .bss -> block starting symbol section is used for reserving space in memory