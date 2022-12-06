#!/bin/sh
#convert temperature from fahranheit to celcius
echo "enter the temperature in fahrenheit:\c"
read f
temp=`expr $f - 32`
c=`expr $temp \* 5 / 9`
#c=`expr (5/9)\*($f-32)|bc`
echo "fahrenheit:$f -->celcius'$c'"
