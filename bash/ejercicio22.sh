#!/bin/bash

if [ $ -ne 1 ]; then 
  echo "uso: $0 <>"
  exit 1
fi

directorio=$1

 if [ !-d "$directorio" ]; then
  echo "error: $directorio no es valido"
  exit 1
fi

contador=0

  echo "entradas en el directorio $directorio"

for entrada in "$directorio"/*; do
 ((contador++))

if [-d "$entrada" ]; then
  echo 
