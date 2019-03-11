#!/bin/sh
if [test "$1" == "--typ"]; then
if test ! -e "$2" ; then
   echo "Cesta k souboru nenalezena"
   exit 1
else   
   if test -d "$2";then
   	echo "adresar";
   elif test -f "$2"; then
   	echo "soubor";
   elif test -L "$2";then 
     echo "Symbolicky link "
   elif test -p "$2";then
     echo "Pojmenovana roura"
   elif test -s "$2";then
     echo "Socket "
   elif test -c "$2";then
     echo "souborove zarizeni"
   elif test -D "$2";then
     echo "Dvere"
   else
     echo "Neumim urcit typ souboru "
     exit 1
  fi
  exit 0
fi
elif ["$1" == "--help"];then
   echo "Pouziti: uloha01.sh [--typ|--help] [cesta k souboru]"
   echo "  --typ       Vypise, zda je dany soubor adresar,soubor" 
   echo "              socket, dvere,souborove zarizeni, nebo symbolicky link"
   echo "  --help	Vypise navod k pouziti skriptu"
   echo" "
   echo "Exit status: "
   echo "  0 ... Vse ok"
   echo "  1 ... Doslo k chybe"
else
  echo "Zapomneli jste zadat urcujici parametr pro prubeh skriptu."
  echo "Nebo jste jej zadali nespravne"
  exit 1
fi
exit 0
