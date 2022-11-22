#!/bin/sh
#non interactive pattern finding
if grep $1 emp.lst
then
echo "pattern $1 found"
echo "number of args passed:\t$#"
echo "All the passed arguments are:\t$*"
else
echo "pattern not found"
fi
