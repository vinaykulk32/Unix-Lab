#!/bin/sh
#Use fo here document
IFS="|"
while echo "Enter department code:\c";do
read code
set -- `grep "^$code" <<DOCUMENT
01|Accounts|1234
02|Not Accounts|134
03|Definately Accounts|134
04|you think Accounts|123
05|I Told You Not Accounts|11234
DOCUMENT`
case $# in
3)echo "Department Name:$2\nEmp-Id of head of dept:$3\n"
shift 3;;
*)echo "Invalid Depatrment Code"
esac
done
