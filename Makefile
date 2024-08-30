CFLAGS ?= -std=c89 -pedantic -O3

default:
	$(CC) $(CFLAGS) -o cdexec cdexec.c
	strip cdexec

clean:
	rm -f cdexec
