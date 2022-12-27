#!/bin/sh
# Print the pass class of the student
echo "Enter the name,number,and marks of three subjects:\n"
read name number sub1 sub2 sub3
if [ $sub1 -lt 50 -o $sub2 -lt 50 -o $sub3 -lt 50 ];then
echo "Fail"
else
sum=`expr $sub1+$sub2+$sub3|bc`
avg=`expr $sum/3|bc`
if [ $avg -gt 90 ];then
echo "Distinction"
elif [ $avg -gt 60 ];then 
echo "First Class"
else
echo "Second Class"
fi
fi
