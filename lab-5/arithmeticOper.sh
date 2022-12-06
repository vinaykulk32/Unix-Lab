#!/bin/sh
#arithmetic operation on two numbers
echo "two numbers:"
read a
read b
echo "1-->add\n2-->subtract\n3-->multiply\n4-->divde\n\n"
read ch
echo "answer:\n"
case "$ch" in
1) echo `expr $a+$b|bc`;;
2) echo `expr $a-$b|bc`;;
3) echo `expr $a*$b|bc`;;
4) echo `expr $a/$b|bc`;;
*) echo "invalid choice";;
esac
