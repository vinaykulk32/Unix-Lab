#!/bin/sh
#program to validate the length of the name of the person
echo "enter the name"
read name
if [ `expr $name | wc -m` -gt 20 ];then
echo "invalid name length"
else
echo "valid name length"
fi
