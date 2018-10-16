#!/bin/bash
#read -a arr
#echo ${arr[0]} 
#echo ${arr[1]} 
#read -d a test
#echo $test
#echo $test
#read  test
#echo $test
#

#read -e -i 'initial  sdf eet' test
#echo $test

#read -n 10 test
#echo $test
#echo $test
#read -N 10 test
#echo $test
#echo $test
#read -p "Enter ther number: " test
#echo $test
#echo $test
#read -s -p "Enter ther number: " test
#echo $test
#echo $test
#read -p "Enter ther number: " test
#read -r -p "Enter ther number: " test
#echo $test
#echo $test
#read -t10 -p "Enter ther number: " test
#echo $test
#echo $test
echo $$
exec 3<&0

read -u 3 test
echo $test
