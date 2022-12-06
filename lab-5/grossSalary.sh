#!/bin/sh
#gross salary
echo "enter basic salary of the employee:\c"
read b
da=`expr $b*10/100|bc`
hr=`expr $b*20/100|bc`
gr=`expr $b+$da+$hr|bc`
echo "gross sal:$gr"
