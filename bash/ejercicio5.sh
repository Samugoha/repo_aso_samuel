#!/bin/bash

read -p "introduce un numero" num1
read -p "introduce otro numero" num2
suma=$(echo "scale=2;$num1 + $num2" | bc)
media=$(echo "scale=2; $suma/2" | bc)
echo "la media aritmética es: $media"


