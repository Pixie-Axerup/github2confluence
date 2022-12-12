#!/bin/sh -l
echo "running script"
md2cf --host "$1" --token "$2" --parent-id "$3" --space "$4" --strip-top-header "$5"
