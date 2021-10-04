default:
	gcc -std=c89 -pedantic \
	    -fPIE -Os -s -Wl,--gc-sections \
	    -o cdexec cdexec.c
	strip -s cdexec

clean:
	rm -f cdexec
