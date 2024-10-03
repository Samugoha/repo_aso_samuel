#!/bin/bash

num=15
echo " adivina el número que estoy pensando."

while true; do
  read -p "introduce un numero (0 si no quieres seguir): " intento

if [ "$intento" -eq 0 ]; then
  echo "te has rendido. el numero era: $num"
  exit 0
fi

if ! [[ "$intento" =~ ^[0-9]+$ ]] || [ "$intento" -lt 1 ] || [ "$intento" -gt 100 ]; then
  echo "introduce un numero valido entre 1 y 100."
  continue
fi

if [ "$intento" -lt "$num" ]; then
 echo "el número es mayor."
elif [ "$intento" -gt "$num" ]; then
 echo "el número es menor."
else
 echo "has adivinado el número: $num"
  exit 0
fi
done

