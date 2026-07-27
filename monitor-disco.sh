#!/bin/bash

LIMITE=${1:-80}

USO=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Uso atual do disco: ${USO}%"
echo "Limite configurado: ${LIMITE}%"

if [ "$USO" -ge "$LIMITE" ]; then
 echo "ALERTA: uso do disco acima do limite."
 exit 1
else
 echo "OK: uso do disco dentro do limite."
 exit 0
fi
