#!/bin/sh -
no_arguments=': need directory or option argument' &&
no_such=': No such file or directory'
not_directory=': Not a directory'
no_permission=': Permission denied'
s=`! ./cdexec 2>&1` && l=`! ./cdexec -- 2>&1` && test x"$s" = x"$l" &&
test x"$s" = x'./cd'"$no_arguments" &&
s=`./cd -h 2>&1` && l=`./cd --help 2>&1` && test x"$s" = x"$l" &&
s=`./cd -V 2>&1` && l=`./cd --version 2>&1` && test x"$s" = x"$l" &&
./cd --version | sed '1 q' | grep -qE '^cd [0-9]+\.[0-9]*\.[0-9]$' &&
test x"`./cd --version | sed '1 d'`" = x &&
error=`! ./cd -x 2>&1` && test "$error" = './cd: unrecognized option: -x' &&
s=`! ./cd / pwd 2>&1` && test x"$s" = x/ &&
s=`! ./cd /root 2>&1` && test x"$s" = x"$no_arguments" &&
s=`! ./cd -- ./cd 2>&1` && test x"$s" = x"$no_arguments" &&
s=`! ./cd ./cd q 2>&1` && test x"$s" = xq"$no_arguments" &&
s=`! ./cd ./cd q -- 2>&1` && test x"$s" = xq"$no_arguments" &&
s=`! ./cd -- ./cd q 2>&1` && test x"$s" = xq"$no_arguments" &&
s=`! ./cd -- ./cd q -- 2>&1` && test x"$s" = xq"$no_arguments" &&
s=`! ./cd ./cd -- 2>&1` && test x"$s" = x--"$no_arguments" &&
s=`! ./cd ./cd -- -- 2>&1` && test x"$s" = x--"$no_arguments" &&
s=`! ./cd -- ./cd -- 2>&1` && test x"$s" = x--"$no_arguments" &&
s=`! ./cd -- ./cd -- -- 2>&1` && test x"$s" = x--"$no_arguments" &&
s=`! ./cd e 2>&1` && test x"$s" = x'exec0: e'"$no_such" &&
s=`! ./cd -- e 2>&1` && test x"$s" = x'./cd: e'"$no_such" &&
s=`! ./cd -- -- 2>&1` && test x"$s" = x'./cd: --'"$no_such" &&
echo 'All passed'
