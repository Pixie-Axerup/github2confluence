#!/bin/sh -l
echo "running md2cf script"
echo $1
echo $2
echo $3
echo $4
echo $5
md2cf --host "$1" --token "$2" --parent-id "$3" --space "$4" --strip-top-header "$5"
