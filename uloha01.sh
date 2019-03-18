#!/bin/sh

if [ "$1" == "--help" ]; then
    echo 'Pouziti: ./uloha01.sh [--typ|--help] [cesta_k_souboru]
    --typ
    	   a) Adresar
	   b) Soubor
	   c) symbolicky link
	   d) Fifo (roura)
	   e) Socket
	   f] Znakove zarizeni
	   g) Blokove zarizeni
	   h) Dvere
    --help
        pomoc...vysvetli zpusob pouziti skryptu

   Exit status:
     0 uspech
     1 chyba'
   exit 0
elif [ "$1" == "--typ" ]; then
   if test ! -e "$2" ; then
   	echo 'soubor neexistuje'
	exit 1
   else
      if test -d "$2" ; then
      echo 'Adresar'
      elif test -f "$2"; then
      echo 'Soubor'
      elif test -L "$2"; then
      echo 'Symbolicky link'
      elif test -p "$2"; then
      echo 'Fifo(roura)'
      elif test -s "$2"; then
      echo 'Socket'
      elif test -c "$2"; then
      echo 'Znakove zarizeni'
      elif test -b "$2"; then
      echo 'Blokove zarizeni'
      elif test -D "$2"; then
      echo 'Dvere'
      fi
      exit 0
fi
else
  echo 'chyba'
  exit 1
fi
