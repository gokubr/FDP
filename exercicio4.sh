#!/bin/bash

clear


echo "Digite o ano que estamos:"
read ano
echo "Digite o ano do seu nascimento: "
read nasc

let idade=($ano-$nasc)

if (( $idade >= 18 && $idade <=70 )); then
      echo "O seu voto é obrigatório."
      echo 
else
     
        if (( $idade >= 16 && $idade <=17 )); then    
               echo "O seu voto é facultativo."
               echo
            else
                  if (($idade >70 )); then
                      echo "O seu voto é facultativo."
                      echo
                  else
			if (($idade <=15 )); then
                          echo "Você ainda não pode votar." 
                          echo   
                        
                        fi
                  fi 
           fi
fi
