#!/bin/sh -l
echo "running md2cf script"
md2cf --host "$1" --token "$2" --parent-id "$3" --space "$4" --strip-top-header --beautify-folders --only-changed --preface-markdown "$5"
