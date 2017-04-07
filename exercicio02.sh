# II. Faça um programa para solicitar a quantidade de números inteiros a serem
# lidos, em seguida ler os números e escrever o maior número dentre os
# informados.

#!/bin/bash

clear

a=0
b=0

echo -n  "Digite a quantidade de números inteiros a serem lidos: "
read c

while (( $c > $a )); do
   echo "Digite um número: "
   read n
       if (( $n > $b )); then 
      	b=$n
	  	
      fi
        let a=($a+1)
done	
echo "O maior número digitado foi: $b"
