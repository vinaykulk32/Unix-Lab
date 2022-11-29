#!/bin/sh
#biggest of three numbers
echo "enter three numbers:\n"
read a
read b
read c
if [ $a -gt $b -a  $a -gt $c ]
then
echo "$a is the biggest"
elif [ $b -gt $a -a $b -gt $c ]
then
echo "$b is the biggest"
else
echo "$c is the biggest"
fi
