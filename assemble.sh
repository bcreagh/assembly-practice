#!/bin/bash

#this is a simple script for assembling and linking nasm assembly code
#it is intended mainly for revision purposes, rather than practical purposes

#usage:
#    Assuming you have a file called "source.asm",
#    ./assemble.sh source

#This will produce an object file called "source.o" and an executable file called "source" 

nasm -f elf64 -o $1'.o' $1'.asm'
ld $1'.o' -o $1
