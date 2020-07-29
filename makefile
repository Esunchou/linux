VPATH = lib:fileio


all :syscall_speed

SYSLIBS= -f -lcurses -f -lm -f -lnsl_s


OBJ1 = syscall_speed.o get_num.o 


BINDIR = $(HOME)/zhouyq/linux/bin
LIB = $(HOME)/zhouyq/linux/lib
INCLUDEDIR = $(HOME)/zhouyq/linux/include

CFLAGS=-I /include -I${INCLUDEDIR} -I.  -g -Wall

syscall_speed:$(OBJ1)
	cc -o syscall_speed $(OBJ1)  
	mv syscall_speed $(BINDIR)


getnum.o:	
	cc ${CFLAGS} -c  getnum.c

syscall_speed.o:	
	cc ${CFLAGS} -c  syscall_speed.c

.PHONY :clean
clean:
	$(RM) *.o

