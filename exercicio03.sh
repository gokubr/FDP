#!/bin/bash

clear

variavel=1

while (( $variavel != 0 )); do
echo -n "Digite o seu salário: "
read variavel
	if (( $variavel <= 500)); then
              echo -n "O seu salário com aumento de 20% é: R$ "
	            echo "scale=2; $variavel+$variavel*20/100" | bc
	            echo
	else
	            echo -n "O seu salário com aumento de 10% é: R$ "
	            echo "scale=2; $varivael+$variavel*10/100" | bc
              echo
	 fi
done

clear
