CC = gcc
CFLAGS = -W -Wall -Wbad-function-cast -Wcast-align -Wcast-qual -Wmissing-prototypes -Wstrict-prototypes -Wshadow -Wundef -Wpointer-arith -O2 -fomit-frame-pointer -funroll-loops
.PHONY: all clean test

all: bcrypt.a

bcrypt_test1 : bcrypt.c
	$(CC) $(CFLAGS) -DTEST_BCRYPT_1 -o $@ $<

bcrypt_test2 : bcrypt.c
	$(CC) $(CFLAGS) -DTEST_BCRYPT_2 -o $@ $<

bcrypt_test2threads : bcrypt.c
	$(CC) $(CFLAGS) -pthread -DTEST_BCRYPT_2 -DTEST_THREADS -o $@ $<

test: bcrypt_test1 bcrypt_test2 bcrypt_test2threads

bcrypt.a: bcrypt.o
	ar r bcrypt.a bcrypt.o

bcrypt.o: bcrypt.c
	$(CC) $(CFLAGS) -c bcrypt.c

clean:
	rm -f *.o bcrypt_test1 bcrypt_test2 bcrypt_test2threads bcrypt.a *~ core
