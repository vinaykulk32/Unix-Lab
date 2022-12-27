#!/bin/sh
#count the number of vowels in a string
echo "Enter the string"
read str
counter=0
i=1
len=${#str}
while [ $i -le $len ];do
ch=$(echo $str | cut -c "$i")
if [ $ch = "a" -o $ch = "e" -o $ch = "i" -o $ch = "o" -o $ch =  "u" ];then
counter=`expr $counter+1|bc`
fi
i=`expr $i+1|bc`
done
echo $counter
