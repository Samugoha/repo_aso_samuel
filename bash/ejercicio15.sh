#!/bin/bash

numero=$1

for (( a=0; a<=10; a++ ));do


  resultado=$((numero *a))
  echo "$numero x $a =$resultado"


done
