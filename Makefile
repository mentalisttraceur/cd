default:
	gcc -std=c89 -pedantic -fPIE -Os -o cdexec cdexec.c
	strip cdexec

clean:
	rm -f cdexec
