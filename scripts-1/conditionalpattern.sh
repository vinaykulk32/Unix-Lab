#!/bin/sh
#non interactive pattern finding
grep $1 emp.lst && echo "pattern $1 found"
grep $1 emp.lst || echo "pattern $1 not found"
