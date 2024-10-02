#!/bin/bash

filas=5

for (( i=1; i<=filas; i++ )); do
  for (( s=1; s<=i; s++ )); do
   echo -n "$i"
 done
  echo
done
