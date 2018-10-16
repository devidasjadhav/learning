#!/bin/bash
set -x
gcc -S $1.c
gcc -o $1 $1.c
for opt in -O0 -O1 -O2 -O3 -Og -Ofast
do
	gcc $opt -o $1$opt $1.c
	cp $1.c $1$opt.c
	gcc $opt  -S $1$opt.c
	rm $1$opt.c
done
