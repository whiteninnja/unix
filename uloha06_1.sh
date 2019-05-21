#!/bin/sh

sort $1 > f1

sort $2 > f2

sort $3 > f3

join f1 f2 | join - f3 | awk '{if($2==$4)printf "%s %s\n",$1,$4 }'

rm f1 f2 f3
