#!/bin/sh
#leap year
echo "enter a year:\t\c"
read year
if [ $((year % 4)) -eq 0 ]
then
echo "year $year is leap year"
else
echo "not a leap year"
fi
