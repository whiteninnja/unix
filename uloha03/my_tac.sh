#!/bin/sh

file=/tmp/helper.txt
cut -d ' '   /tmp/helper.txt

while IFS= read -r line
do
        # display line or do somthing on $line
	echo "$line"
done <"$file"

