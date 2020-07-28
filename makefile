all :syscall_speed

SYSLIBS= -f -lcurses -f -lm -f -lnsl_s


OBJ1 = syscall_speed.o get_num.o 


BINDIR    = $(HOME)/zhouyq/linux/bin
LIB = $(HOME)/zhouyq/linux/lib
INCLUDEDIR = $(HOME)/zhouyq/linux/include

CFLAGS=-I /include -I${INCLUDEDIR} -I.  -g -belf

syscall_speed:$(OBJ1)
	cc -o MainCtrl $(OBJ1) -lcurses -lsocket 
	mv MainCtrl $(BINDIR)

.c.o:	
	cc ${CFLAGS} -c  $*.c



