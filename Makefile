# compiler to use
CC = cc

# flags to pass compiler
CFLAGS = -ggdb3 -std=c11

# name for executable
EXE = main

# space-separated list of header files
HDRS = linkedlist.h

# space-separated list of source files
SRCS = main.c linkedlist.c

# automatically generated list of object files
OBJS = $(SRCS:.c=.o)


# default target
$(EXE): $(OBJS) $(HDRS) Makefile
	$(CC) $(CFLAGS) -o $@ $(OBJS)

# dependencies
$(OBJS): $(HDRS) Makefile

# housekeeping
clean:
	rm -f core $(EXE) *.o

run:
	./$(EXE)