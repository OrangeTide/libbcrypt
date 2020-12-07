CC = gcc
CFLAGS = -W -Wall -Wbad-function-cast -Wcast-align -Wcast-qual -Wmissing-prototypes -Wstrict-prototypes -Wshadow -Wundef -Wpointer-arith -O2 -fomit-frame-pointer -funroll-loops
.PHONY: all clean test

all: bcrypt.a

test: bcrypt.c
	$(CC) $(CFLAGS) -DTEST_BCRYPT -c bcrypt.c
	$(CC) -o bcrypt_test bcrypt.o

bcrypt.a: bcrypt.o
	ar r bcrypt.a bcrypt.o

bcrypt.o: bcrypt.c
	$(CC) $(CFLAGS) -c bcrypt.c

clean:
	rm -f *.o bcrypt_test bcrypt.a *~ core
