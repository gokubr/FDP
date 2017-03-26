#!/bin/bash
#Autor: Heitor	
#Modificação: 09:27hs
#Utilizando o comando READ

clear		#limpa a tela.

echo -n "Digite seu nome: " #aparecerá o nome na mesma linha devido ao "-n".
read VARIAVEL   #qualquer nome digitado será acrescentado ao read VARIAVEL. 
echo "Seja vem vindo(a) $VARIAVEL!"  #imprime o conteúdo ($) de VARIAVEL.
sleep 1 	#aguarda 1 segundo.
echo      #cada echo sozinho, pula uma linha. 
echo
echo


