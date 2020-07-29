VPATH = lib:fileio

all :syscall_speed

OBJ1 = syscall_speed.o get_num.o 

BINDIR = $(HOME)/zhouyq/linux/bin
LIB = $(HOME)/zhouyq/linux/lib
INCLUDEDIR = $(HOME)/zhouyq/linux/include

CFLAGS=-I /include -I${INCLUDEDIR} -I.  -g -Wall

syscall_speed:$(OBJ1)
	cc -o syscall_speed $(OBJ1)  
	mv syscall_speed $(BINDIR)




.PHONY :clean
clean:
	$(RM) *.o

