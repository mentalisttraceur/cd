c/cdexec:
	musl-gcc -std=c89 -pedantic -fPIE -Os -s -Wl,--gc-sections \
	    -march=armv7-a -mcpu=cortex-a8 -mtune=cortex-a8 \
	    -mfloat-abi=softfp -o cdexec cdexec.c
	strip -s cdexec

clean:
	rm -f cdexec
