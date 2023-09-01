CFLAGS  = -Wall -g
LDFLAGS = -lX11 -lXtst -lpthread

all:	powerscroll pulseled

powerscroll:	powerscroll.o findpowermate.o
	$(CC) $(CFLAGS) findpowermate.o powerscroll.o -o powerscroll $(LDFLAGS)

pulseled:	pulseled.o findpowermate.o
	$(CC) $(CFLAGS) findpowermate.o pulseled.o -o pulseled $(LDFLAGS)

clean:
	rm -f *.o *~ powerscroll pulseled

%.o:    %.c
	$(CC) $(CFLAGS) -O2 -Wall -c $< -o $@
