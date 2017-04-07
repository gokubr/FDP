# V. Crie um programa para ler salários até que seja informado zero e escreva,
# em ordem crescente, os três maiores valores dos salários lidos.


#!/bin/bash

DIG=1; PRI=0; SEG=0; TER=0;

clear
while (( $DIG !=0 )); do
        echo "Digite seu salário:"
  	read DIG; SAL=$DIG
       [ $SAL == $PRI ] && SAL=0
       [ $SAL == $SEG ] && SAL=0
    if (( $SAL > $PRI )); then
        TER=$SEG
        SEG=$PRI
        PRI=$SAL
     else
           if (( $SAL > $SEG )); then
               TER=$SEG
               SEG=$SAL
            else
                 if (( $SAL >= $TER )); then
                      TER=$SAL
                  fi
           fi
   fi
done

echo "Os maiores valores respectivamente são $PRI , $SEG , $TER."

