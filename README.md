This repo documents my progress in learning NASM x86 assembly language. Leisure time activity.

To get (and run) the executable of files ending with .s do the following:
nasm -f elf -o file.o file.s
ld -m [elf_i386] file file.o
./file
echo $?

syntax:
MOV -> instruction to move data
eax, ebx -> registers
INT -> (interrupt)
nasm -f elf -o file.o file.s -> output the file in the elf file format
ld -m elf_i386 -o file file.o -> (load emulator) compile for 32 bits = output the file for intel_386 assembly
gdb file -> debug program
layout asm -> go into assembly mode showing all the informations related to my assembly program
[num] -> go to the address where num is stored, get the value that's stored there and move that into the register
echo $? -> echo out the status code
bx -> 16 bits of the 32 bits ebx register
bl -> 8 bits on the 'lower' half of the register (2^0, 2^1, 2^2, etc.)
echo "set dissasembly-flavour intel" > ~ /.gdbinit -> setup intel syntax (as used by gdb)