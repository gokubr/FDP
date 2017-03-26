#!/bin/bash
#Autor: Heitor
#Criação: 10/02/2017
#Modificação: 10:19hs
#Programa para conhecer a condição IF.

clear   #limpa a tela.
echo "Qual o seu nome?" 	#imprime o que está dentro das aspas.
read NOME 	#acrescenta algo a read NOME - Entrada de dados.
echo "Você é menino ou menina?"
read SEXO
if [ $SEXO = "menino" ]; then
        echo "Safadinho! Seu nome é $NOME."

else

       echo "Espertinha! Seu nome é $NOME."

fi
