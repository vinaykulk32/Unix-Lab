#!/bin/sh
#Find patter in a given file
case $# in
0|1)echo "Usage :$0;exit 2";;
*)filename=$1
shift
for pattern in "$@";do
grep "$pattern" "$filename" || echo "Pattern not found"
done;;
esac
