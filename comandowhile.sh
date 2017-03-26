#!/bin/bash
# Autor: Heitor
# Modificação: 17/02/2017
# Iserindo o comando WHILE

VARIAVEL=0

while (( VARIAVEL <= 1000 )); do
         echo "Eu amo você $VARIAVEL vezes!!!"
         let VARIAVEL=($VARIAVEL+1) 
done



