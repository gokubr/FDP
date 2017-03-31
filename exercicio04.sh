#!/bin/bash
DIG=1;clear
valor(){ echo "Digite um valor:"
}
valor
read DIG; MENOR=$DIG
while (( $DIG != 0 )); do
	valor
	read DIG
	if (( $DIG != 0 )); then
	  NUM=$DIG
	  if (( $NUM <= $MENOR )); then
	    if (( $NUM < $MENOR )); then
		  MENOR=$NUM
		  QNT=1
		else
		   let QNT=($QNT+1)
	    fi
	  fi
	fi
done
echo "A menor variável é $MENOR e foi digitado $QNT vez(es)"
