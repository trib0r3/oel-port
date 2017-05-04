#!/bin/sh

FILE="strings.txt"

if [ $# -eq 1 ]; then 
  FILE=$1
fi

grep -oP -e "-> .*" $FILE | sed 's/-> //g' | sed 's/$/,/g' | sed '$ s/.$//'
