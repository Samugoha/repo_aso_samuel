#!/bin/bash

sum=0

while true; do
 read -p "introduce un número (0 para terminar): " num

if [ "$num" -eq 0 ]; then
  break
fi

  ((sum += num))
done

echo "la suma total es: $sum"

