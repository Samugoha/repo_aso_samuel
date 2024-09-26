#!/bin/bash

  echo " 1. sumar"
  echo " 2. restar"
  echo " 3. multiplicar"
  echo " 4. dividir"

read -p " selecione una opcion " opcion

 read -p "introduzca el primer numero" num1
 read -p "introduzca el segundo numero" num2


 case $opcion in
 1)
   resultado=$((num1+num2))
   echo $resultado
;;
 2)
  resultado=$((num1-num2))
   echo $resultado
;;
 3)
  resultado=$((num1*num2))
   echo $resultado
;;
 4)
  resultado=$((num1/num2))
   echo $resultado
;;
 esac
