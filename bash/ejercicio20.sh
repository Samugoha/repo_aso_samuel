#!/bin/bash

if [ $# -ne 1]; then
  echo "uso: $0 <números>"
  exit 1
fi
 numero=$1

if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
  echo "error : introduce un número entero."
  exit 1
fi

if [ "$numero" -lt 2 ]; then
  echo "$numero no es primo."
  exit 0
fi

 primo=1
for (( i=2; i*i<=numero; i++ )); then
  primo=0
  break
 fi
done
