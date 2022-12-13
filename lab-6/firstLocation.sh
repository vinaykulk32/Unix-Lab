#!/bin.sh
#program to return the location of the first occurance of the charecter in a given string
echo "enter the string and charecter"
read string ch
echo `expr "$string" : [^$ch]*$ch`
