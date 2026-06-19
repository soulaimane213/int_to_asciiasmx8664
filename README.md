# int to ascii - x86_64 Assembly

a small program that converts an integer to a string and prints it , no printf no libc , just raw syscalls

## what it does

takes the number `12345` , converts it to ascii manually using division and prints it to stdout

## how it works

divide the number by 10 each loop , take the remainder , add 48 to get the ascii digit , store it , repeat until zero

## watch the explanation

i made a video explaining this step by step :

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch-red?logo=youtube)](https://www.youtube.com/watch?v=ErYJYoNRB_U&t=9s)

## build & run

```bash
nasm -f elf64 int_to_ascii.asm -o int_to_ascii.o
ld int_to_ascii.o -o int_to_ascii
./int_to_ascii
```
