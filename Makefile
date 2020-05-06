#Makefile
.SUFFIXES: .c .o

vpath %.h include
vpath %.c src
%.o: %.c
	gcc  -c $< -I./include
%: %.o
	gcc -o $@ $^ 
hello: hello.o print.o
hello.o: hello.c hello.h
print.o: print.c

