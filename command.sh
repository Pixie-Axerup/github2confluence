#!/bin/sh -l
echo "running md2cf script"
md2cf --host "$1" --token "$2" --parent-id "$3" --space "$4" --preface-markdown ["Content on this page is auto-generated from Github repository; do not edit here."] --strip-top-header "$5"
