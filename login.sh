#!/bin/bash

USER=vagrant
SENHA=vagrant


clear

echo
echo "Debian GNU/Linux jessie 8 tty2"
echo
echo -n "jessie login: "
read LOGIN
echo -n "Password: "
read -s PASS
echo


if [ $LOGIN == $USER ]; then
   if [ $PASS == $SENHA ]; then     
     
     echo "Seja bem vindo(a)!"  

else
         sleep 2 
	 echo 
	 echo "Login incorrect"
     fi
else
   	sleep 2 
        echo
	echo "Login incorrect"

      fi 

