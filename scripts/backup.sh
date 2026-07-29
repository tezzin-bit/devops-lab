#!/bin/bash

ORIGEM=$1
DESTINO=${2:-backups}
DATA=$(date +%Y-%m-%d_%H-%M-%S)

if [ -z "$ORIGEM" ]; then
 echo "Uso correto: ./scripts/backup.sh pasta-origem [pasta-destino]"
 exit 1
fi

if [ ! -d "$ORIGEM" ]; then
 echo "Erro: a pasta de origem '$ORIGEM' não existe."
 exit 1
fi

mkdir -p "$DESTINO"

NOME_BACKUP=$(basename "$ORIGEM")
ARQUIVO_BACKUP="${DESTINO}/${NOME_BACKUP}-${DATA}.tar.gz"

tar -czf "$ARQUIVO_BACKUP" "$ORIGEM"

echo "Backup criado com sucesso:"
echo "$ARQUIVO_BACKUP"
