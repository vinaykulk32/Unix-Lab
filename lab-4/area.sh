#!/bin/sh
#area of a circle
echo "enter the radius"
read r
area=`expr 3.142*$r*$r|bc`
echo "area of circle is $area"
