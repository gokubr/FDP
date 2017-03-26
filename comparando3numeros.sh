#!/bin/bash
#Autor: Heitor
#Data de criação: 12/02/2017
#Modificação: 08:46hrs
#Peça para que digitem três números. Mostre qual o maior número e qual o menor.
#Exercício entregue no dia 17/02/2017 - FPG

clear  #limpa a tela

echo "Olá, bom dia. Seja bem vindo(a)!"		#imprime
sleep 2                   #aguarda 2 segundos

clear            #limpa a tela

echo -n "Por favor, digite um número: "  #imprime
read n1		#primeira variável - Entrada de dados
echo -n "Digite outro número: "
read n2		#segunda variável - Entrada de dados
echo -n "Digite só mais um número (Prometo que esse é o último): "
read n3		#terceira variável - Entrada de dados

if (( $n1 >= $n2 )) && (( $n1 >= $n3 )); then       #inicio - maior número
       echo -e "O maior número é: \033[01;34m $n1 \033[m"
fi

if (( $n2 > $n1 )) && (( $n2 >= $n3 )); then  
       echo -e "O maior número é: \033[01;34m $n2 \033[m"
fi

if (( $n3 > $n1 )) && (( $n3 > $n2 )); then        #final - maior número
       echo -e "O maior número é: \033[01;34m $n3 \033[m"
fi


if (( $n1 <= $n2 )) && (( $n1 <= $n3 )); then      #inicio - menor número
       echo -e "O menor número é: \033[01;31m $n1 \033[m"
fi

if (( $n2 < $n1 )) && (( $n2 <= $n3 )); then  
       echo -e "O menor número é: \033[01;31m $n2 \033[m"
fi

if (( $n3 < $n1 )) && (( $n3 < $n2 )); then        #final - menor número
       echo -e "O menor número é: \033[01;31m $n3 \033[m"
fi




