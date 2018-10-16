#!/bin/bash
set -x
gcc -g -o $1.gdb $1.c
for opt in --strip-all --strip-debug --strip-dwo --strip-symbol=i --strip-unneeded
do
	gcc -o $1 $1.c
	fname=$1-$(sed 's/\-//g' <<< $opt)
	strip $opt $1 
	mv $1 $fname
done
