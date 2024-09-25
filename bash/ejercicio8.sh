#!/bin/bash
read -p  "dime un numero.." num1
read -p "dime otro numero.." num2

if [[ $num1 -gt $num2 ]];then
  echo "$num1 es mayor"
elif [[ $num2 -gt $num1 ]];then
  echo "$num2 es mayor"
else 
  echo "son iguales"
fi
