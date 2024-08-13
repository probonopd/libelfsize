CC = gcc
CFLAGS = -Wall -Werror -I./libelfsize
LDFLAGS = -L./libelfsize
LIBS = -lelfsize

all: elfsize

elfsize: main.o libelfsize/libelfsize.a
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $< $(LIBS)

main.o: main.c
	$(CC) $(CFLAGS) -c -o $@ $<

libelfsize/libelfsize.a: libelfsize/elfsize.o
	ar rcs $@ $<

libelfsize/elfsize.o: libelfsize/elfsize.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f elfsize main.o libelfsize/elfsize.o libelfsize/libelfsize.a

.PHONY: all clean
