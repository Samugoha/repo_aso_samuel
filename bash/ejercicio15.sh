#!/bin/bash
if [ "$" -ne 1 ]; then
  echo "uso: ./tabla_multiplicar.sh <número>"
  exit 1
fi
n=$1
if ! [[ "$n" =~ ^ -?[0-0]+$ ]]; then
  echo "error: proporciona un número entero."
  exit 1
fi
echo "tabla de multiplicar de $n:"
for i in {1..10} do
  resultado=$((i * n))
  echo "$1 x $n= $resultado"
done
