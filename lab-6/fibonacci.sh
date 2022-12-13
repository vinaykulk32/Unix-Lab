#!/bin/sh
#fibonaaci series
echo "enter the number n:"
read n
n1=0
n2=1
var=0
echo "$n1"
echo "$n2"
while [ $var -lt `expr $n-2|bc` ];do
n3=`expr $n1+$n2|bc`
n1=`expr $n2`
n2=`expr $n3`
var=`expr $var+1|bc`
echo $n2
done
