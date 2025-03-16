OpenGL must be installed to run this program
NASM x86-64 must be installed

Compiling and Building Assembly code
nasm -f elf64 Main.asm

Compiling and Building CPP code
g++ -c main.cpp -lGL -lGLU -lglut

Linking built Assembly and CPP code
g++ Main.o main.o -o Main -lGL -lGLU -lglut
