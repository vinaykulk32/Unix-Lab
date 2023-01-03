#!/bin/sh
#script to change the filename extensions from txt to doc
for file in *.txt;do
left=`basename $file txt`
mv $file ${left}doc
done
