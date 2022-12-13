#!/bin/sh
#power of a number
echo "enter x and n for x^n"
read x n
ans=1
i=1
while [ $i -le $n ]
do
ans=`expr $ans*$x |bc`
i=`expr $i+1|bc`
done
echo "$x^$n:$ans"
