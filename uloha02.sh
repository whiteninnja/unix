#!/bin/sh

if [ "$1" == "--normal" ]; then
    for i in "$@"; do
	 echo "$i"
    done  
elif [ "$1" == "--reverse" ]; then
    for ((i=$# ;i>0;i--))
    do
    echo "${!i}"
    done
elif [ "$1" == "--subst" ]; then
    k=1
    for i in "$@"; do
    if [ $k -lt 4 ]; then
    k=$(($k+1))
    else
    l="$i"
    echo ${l//$2/$3}
    fi
done
elif [ "$1" == "--len" ]; then
   length=""
   for i in "$@"; do	
	length="$length  ${#i}"
	done
	echo $length
elif [ "$1" == "--help" ]; then
    echo 'Pouziti: uloha02.sh [OPTION] [args]
	pokud prvni argument je:  
		
		a)--normal ... vypise vsechny argumenty, kazdy na zvlastni radek

	        b) --reverse ... vypise vsechny argumenty v opacnem poradi

	        c) --subst ... zameni ve vsech argumentech (krome 1., 2. a 3. 
		               argumentu) retezec z druheho argumentu za retezec
			       v tretim argumentu 

	        d) --len ... vypise na 1 radek delky vsech argumentu oddelene
		             mezerami

	   	e) --help ... vypise napovedu na pouziti scriptu'
fi
exit 0
