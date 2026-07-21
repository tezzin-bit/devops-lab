#!/bin/bash

NOME_PROJETO=$1

if [ -z "$NOME_PROJETO" ]; then
 echo "Uso correto: ./criar-projeto.sh nome-do-projeto"
 exit 1
fi

if [ -d "$NOME_PROJETO" ]; then
 echo "Erro: o projeto '$NOME_PROJETO' já existe."
 exit 1
fi

mkdir "$NOME_PROJETO"
mkdir "$NOME_PROJETO/src"
mkdir "$NOME_PROJETO/docs"
mkdir "$NOME_PROJETO/tests"

touch "$NOME_PROJETO/README.md"

echo "# $NOME_PROJETO" > "$NOME_PROJETO/README.md"
echo "Projeto criado com sucesso: $NOME_PROJETO"
