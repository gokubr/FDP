# I. Faça um programa que receba dois números inteiros quaisquer da entrada
# de dados e em seguida apresente todos os números impares existentes
# entre o intervalo formado pelos números informados.


#!/bin/bash

clear

echo -n  "Dgite um número: "
read NUM1
echo -n "Dgite um número: "
read NUM2
     if (( $NUM1 > $NUM2));then 
	MAIOR=$NUM1
 	MENOR=$NUM2
      else
	MENOR=$NUM1	
	MAIOR=$NUM2
    fi

echo -n "Números impares existentes entre o intervalo dos dois números: "
while (( $MAIOR > $MENOR )); do
let resultado=($MENOR%2)
	if (( $resultado != 0 ));then
	echo -n "$MENOR,"

	fi

let MENOR=($MENOR+1)
done

echo
echo
echo 
