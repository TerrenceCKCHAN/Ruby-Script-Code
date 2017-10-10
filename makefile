# edit this file to build/clean chello as required for quesiton 6
.PHONY: all
all: main

chello: chello.o writeexit.o
	ld -N chello.o writeexit.o -o chello

chello.o: chello.c
	gcc -c chello.c -o chello.o

writeexit.o: writeexit.s
	as writeexit.s -o writeexit.o

clean:
	rm -rf *.o






