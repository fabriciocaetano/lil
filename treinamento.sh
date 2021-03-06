#! /bin/bash

if [ "$1" == "" ]; then
echo "digite o caminho do arquivo como argumento, ex: ./treinamento <CAMINHO DO ARQUIVO>"
exit;
fi
input=$1

echo "digite o nome do arquivo que será salvo em CSV:"
read vari;
echo "variaveis até o momento:"
echo "variavel de local: $1"
echo "variavel de caminho: $vari.csv"
echo "dados do arquivo:"
echo "ENTER para exibir."
read
cat $1
echo
echo "aperte quaquer tecla para continuar ..."
read
clear
cat $1 | cut -d ":" -f3 >> $vari.csv
clear

echo "resultado: ENTER..."
read
cat $vari.csv
echo
echo "aperte ENTER para iniciar treinamento."
read
echo "iniciando treinamento ..."
echo "para interromper o treinamento, aperte CTRL+C"
cat $vari.csv | python3 train.py
