SRCDIR=.
CC=gcc 
CFLAGS = -std=c99 -g -I$(SRCDIR)/include
LDFLAGS = -L$(SRCDIR)/lib
TARGETS=list_test
all: $(TARGETS) 

#helloworld.c的编译
helloworld:helloworld.o
	$(CC)  $(CFLAGS) -o $@  $^ $(LDFLAGS)

helloworld.o:helloworld.c
	$(CC)  $(CFLAGS) -o $@ -c $< $(LDFLAGS)

#main的编译
list_test:list_test.o
	$(CC)  -g  -o $@ $^ 
list_test.o:list_test.c
	$(CC)  -g  -o $@ -c $<

clean:
	rm -f *.o
