#!/bin/bash
#Autor: Heitor
#Data de criação: 10/02/2017
#Modificação: 11:00hrs
#Programa IF dentro do IF.


clear

echo "Você é menino ou menina?"
read SEXO
echo "Digite um númeo:"
read NUM01
echo "Digite outro número:"
read NUM02

if [ $SEXO = "menino" ]; then
       if (( $NUM01 > $NUM02 )); then
           echo "O maior número é $NUM01."
else
           echo "O maior número é $NUM02."
       fi

      if (( $NUM01 < $NUM02 )); then 
          echo "O menor número é $NUM01."
else
          echo "O menor número é $NUM02."
      fi
fi
