#!/bin/sh
# script to calculate the dactorial of a number
echo "enter a number:\c"
read num
fact=1
i=1
while [ $i -le $num ];do
fact=`expr $i*$fact|bc`
i=`expr $i+1|bc`
done
echo "factorial of $num :$fact"
