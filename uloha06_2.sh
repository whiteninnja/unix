#!/bin/sh

sed -e '1d' -e 's/^"\(.*\)".*/\1/' "$1" | sort -   > f1

sed -e '1d' -e 's/.*"\(.*\)"$/\1/' "$2" | sort -  >f2

join -t $'\n' f1 f2

rm f1 f2
