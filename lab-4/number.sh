#!/bin/sh
# check whether the given number is zero,positive
echo "enter a number:\t"
read num
if [ $num -eq 0 ]
then
echo "number is zero"
elif [ $num -gt 0 ]
then
echo "number is positive"
else
echo "number is negative"
fi
