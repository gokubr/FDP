#!/bin/bash

#------------------CRIAR USUÁRIO-----------------------------------------

CUSR(){

NUSER=$(dialog  						\
		--stdout --title 'Criar novo usuário'		\
		--inputbox 'Digite o nome do usuário:'		\
		0 0)

useradd $NUSER 2> /tmp/erro.txt
erro=$(cat /tmp/erro.txt)
[ -z $erro ] && dialog						\
		--title 'Parabéns!' 				\
		--msgbox 'Usuário criado com sucesso.' 		\
		 0 0 || dialog --msgbox "$erro" 0 0; rm /tmp/erro.txt

GUSR

}

#------------------DELETAR USUÁRIO-----------------------------------------

DUSR(){

DUSER=$(dialog  						\
		--stdout --title 'Deletar usuário'		\
		--inputbox 'Digite o nome do usuário:'		\
		0 0)

userdel $DUSER 2> /tmp/erro.txt
erro=$(cat /tmp/erro.txt)
[ -z $erro ] && dialog						\
		--title 'Parabéns!' 				\
		--msgbox 'Usuário deletado com sucesso.' 	\
		 0 0 || dialog --msgbox "$erro" 0 0; rm /tmp/erro.txt

GUSR

}

#------------------ALTERAR A SENHA DO USUÁRIO-----------------------------------------

PUSR(){

USR=$(dialog  						        \
		--stdout --title 'Alterar a senha do usuário'	\
		--inputbox 'Digite o nome do usuário:'		\
		0 0)

PASS=$(dialog							\
               	--stdout --title 'Alterar a senha do usuário'	\
		--passwordbox 'Digite a senha:'		        \
		0 0)

(echo $PASS ; echo $PASS) | passwd $USR

GUSR

}

#------------------LISTAR USUÁRIOS DO SISTEMA-----------------------------------------

LUSR(){
        tail -f /etc/passwd > out &
	dialog							\
		--title 'Listando todos os usuários'		\
		--tailbox out					\
		0 0
	
GUSR

}

#------------------CRIAR GRUPO-----------------------------------------

CGRU(){

NGRUP=$(dialog  						\
		--stdout --title 'Criar novo grupo'		\
		--inputbox 'Digite o nome do grupo:'		\
		0 0)

groupadd $NGRUP 2> /tmp/erro.txt
erro=$(cat /tmp/erro.txt)
[ -z $erro ] && dialog						\
		--title 'Parabéns!' 				\
		--msgbox 'Grupo criado com sucesso.' 		\
		 0 0 || dialog --msgbox "$erro" 0 0; rm /tmp/erro.txt

GUSR

}

#------------------DELETAR GRUPO-----------------------------------------

DGRU(){

DGRUP=$(dialog  						\
		--stdout --title 'Deletar grupo'		\
		--inputbox 'Digite o nome do grupo:'		\
		0 0)

groupdel $DGRUP 2> /tmp/erro.txt
erro=$(cat /tmp/erro.txt)
[ -z $erro ] && dialog						\
		--title 'Parabéns!' 				\
		--msgbox 'Grupo deletado com sucesso.' 	 	\
		 0 0 || dialog --msgbox "$erro" 0 0; rm /tmp/erro.txt

GUSR

}

#------------------LISTAR GRUPOS DO SISTEMA-----------------------------------------

LGRU(){
        tail -f /etc/group > out &
	dialog							\
		--title 'Listando todos os grupos'		\
		--tailbox out					\
		0 0
	
GUSR

}

#------------------ADICIONAR USUÁRIO A UM GRUPO-----------------------------------------

AGRU(){
       
USR=$(dialog							        \
		--stdout						\
		--title 'Adicionar usuário'				\
		--inputbox 'Digite o nome do usuário:'		        \
		0 0)

GRU=$(dialog								\
		--stdout						\
		--title 'Selecionar grupo'				\
		--inputbox 'Digite o nome do grupo:'			\
		0 0)

gpasswd -a $USR $GRU 2> /tmp/erro.txt
erro=$(cat /tmp/erro.txt)
[ -z $erro ] && dialog							\
		--title 'Parabéns!' 					\
		--msgbox 'Usuário adicionado com sucesso.'  	 	\
		 0 0 || dialog --msgbox "$erro" 0 0; rm /tmp/erro.txt

GUSR

}

#------------------REMOVER USUÁRIO DE UM GRUPO-----------------------------------------

RGRU(){
       
USR=$(dialog							        \
		--stdout						\
		--title 'Remover usuário'				\
		--inputbox 'Digite o nome do usuário:'		        \
		0 0)

GRU=$(dialog								\
		--stdout						\
		--title 'Selecionar grupo'				\
		--inputbox 'Digite o nome do grupo:'			\
		0 0)

gpasswd -d $USR $GRU 2> /tmp/erro.txt
erro=$(cat /tmp/erro.txt)
[ -z $erro ] && dialog							\
		--title 'Parabéns!' 					\
		--msgbox 'Usuário removido com sucesso.'   	 	\
		 0 0 || dialog --msgbox "$erro" 0 0; rm /tmp/erro.txt

GUSR

}

#-------------------SUB MENU USUÁRIO-------------------------------------

GUSR() {

USER=$(dialog							\
	--stdout						\
        --title 'Gerenciamento de usuário'                      \
        --menu 'Escolha uma opção:' 0 0 0			\
	1 'Criar usuário'					\
	2 'Deletar usuário'					\
	3 'Alterar a senha do usuário'                          \
	4 'Listar usuários do sitema'				\
	5 'Criar grupo'						\
	6 'Deletar grupo'					\
	7 'Listar grupos do sistema'				\
	8 'Adicionar usuário a um grupo'			\
	9 'Remover usuário de um grupo'				\
	10 'Sair')						\
	

case $USER in
	1) CUSR ;;
	2) DUSR ;;
	3) PUSR ;;
	4) LUSR ;;
	5) CGRU ;;
	6) DGRU ;;
	7) LGRU ;;
	8) AGRU ;;
	9) RGRU ;;
	10) MENU ;;
	*) dialog ; MENU ;;
esac
} 
	
#---------------------MENU PRINCIPAL-----------------------------------------------

MENU(){

OPCAO=$(dialog						\
	--stdout 					\
	--title 'MENU'					\
	--menu 'Escolha uma opção do menu:'		\
	0 0 0						\
	1 'Gerenciar arquivos'				\
	2 'Gerenciar usuarios'				\
	3 'Gerenciar rede'				\
	4 'Gerenciar dispositivos'			\
	5 'Gerenciar pacotes'				\
	6 'Sair')

case $OPCAO in
	1) GARQ ;;
	2) GUSR ;;
	3) GRED ;;
	4) GDIS ;;
	5) GPAC ;;
	6) FIM	;;
	*) dialog --title 'Opção invalida.' 
		  --msgbox 'Pressione enter para voltar.' 0 0 ; MENU ;;
esac
}


#---------------------------FIM----------------------------------------------------

FIM(){
clear
	echo 'Até breve. volte sempre !'
	exit 0
}
#-----------------------------USUARIO E SENHA----------------------------
USER=""
PASS=""

USUARIO=$(dialog							\
		--stdout						\
		--title 'Usuário'					\
		--inputbox 'Digite o nome do seu usuário:'		\
		0 0)

SENHA=$(dialog								\
		--stdout						\
		--title 'Senha'						\
		--passwordbox 'Digite a sua senha:'			\
		0 0)
[ $USUARIO == $USER ] && [ $SENHA == $PASS ] && MENU || FIM
#-------------------------------------------------------------------------









