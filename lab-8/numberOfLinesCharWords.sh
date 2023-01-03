#!/bin/sh
#Shell script to check the number of lines,words and charecters in a file
echo "Enter the fileName:\c"
read file
if [ file -f $file ];then
echo "File exists"
echo "number of lines"
wc -l $file
echo "Number of charecters"
wc -c $file
echo "Number of words"
wc -w $file
else
echo "File Does not exists"
fi
