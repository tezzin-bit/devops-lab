#!/bin/bash

URL=$1

if [ -z "$URL" ]; then
 echo "Uso correto: ./scripts/check-url.sh https://exemplo.com"
 exit 1
fi

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

echo "URL verificada: $URL"
echo "Status HTTP: $STATUS_CODE"

if [ "$STATUS_CODE" -ge 200 ] && [ "$STATUS_CODE" -lt 400 ]; then
 echo "OK: serviço respondendo."
 exit 0
else
 echo "ERRO: serviço indisponível ou retornando falha."
 exit 1
fi
