# III. Crie um programa para ler os salários indefinidamente para calcular um 
# aumento, até que seja informado zero. Sabe-se que os funcionários que
# possuem salário atual até R$ 500,00 terão um aumento de 20%, os demais
# terão aumento de 10%.

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
