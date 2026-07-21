#!/bin/bash

NOME=$1
PASTA_ATUAL=$(pwd)

if [ -z "$NOME" ]; then
   echo "Uso correto: ./script.sh seu_nome"
   exit 1
fi

echo "Olá, $NOME!"
echo "Você está no diretório: $PASTA_ATUAL"

echo "Arquivos daqui:"
ls -l
