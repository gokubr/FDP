#!/bin/bash

USER=gokubr
SENHA=123456
SAIR=a

while [ $SAIR != b ]; do

QNT=1

clear

while (($QNT <= 5)); do

echo
echo "Debian GNU/Linux jessie 8 tty1"
echo
echo -n "jessie login: "
read LOGIN
echo -n "Password: "
read -s PASS
echo

if [ $LOGIN == $USER ]; then
   if [ $PASS == $SENHA ]; then     
     SAIR=b     
     QNT=6
     echo
     echo "Seja bem vindo(a)!"  
     echo
else
         sleep 2 
	 echo 
	 echo "Login incorrect"
         echo     
     fi
else
   	sleep 2 
        echo
	echo "Login incorrect"
        echo  
fi 
   let QNT=($QNT+1)
 done
done
