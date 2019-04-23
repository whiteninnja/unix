#!/bin/sh

FILE=$(mktemp /tmp/help.XXXXXX)
cat - > $FILE
K=$( cat $FILE | wc -l )
if [ $# -eq 2 ]; then
  if [ "$1" == "-n" ]; then
    A=$2
  else
    exit 1
  fi
elif [ $# -eq 0 ]; then 
  A=1
else 
  exit 1
fi
H=$(($K % $A ))
for (( i = $A; i <= $K ; i=i+A))
do
    cat $FILE | tail -n $i | head -n $A
done
if [ $H -ne 0 ]; then
   cat $FILE | tail -n $K  | head -n $H
fi
rm "$FILE"
