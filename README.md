Requirements:
linux machine
NASM
g++
glut installed

How to Compile:
nasm -f elf64 Main.asm
g++ -c main.cpp -lGL -lGLU -lglut
g++ Main.o main.o -o Main -lGL -lGLU -lglut
