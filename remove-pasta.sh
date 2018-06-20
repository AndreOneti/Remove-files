#!/bin/bash

read -p "Entre com o nome do arquivo a ser excluido: " arquivo
if [ -d $arquivo ]
then
	rm -r $arquivo
	if [ $? -eq 0 ]
	then
		echo "Removido com sucesso!"
	else
		echo "Falha na remoção"
	fi
elif [ -e $arquivo ]
then
	rm -r $arquivo
	if [ $? -eq 0 ]
	then
		echo "Arquivo removido"
	else
		echo "Falha na remoção"
	fi
else
	echo "Arquivo não encontrado!"
fi
