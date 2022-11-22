#!/bin/sh
# Script to find a pattern in a file using if else statement
if grep $1 emp.lst
then
echo "pattern found";
else 
echo "pattern not found";
fi
