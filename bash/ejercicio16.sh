#!/bin/bash

suma=0
for i in {1..1000}; do
  ((suma+=i))
done
  echo "la suma con for es: $suma"

suma=0
i=1
 while [ $i -le 1000 ]; do
  ((suma+=i))
  ((i++))
 done
  echo "la suma con while es: $suma"

suma=0
i=1
 until [ $i -gt 1000 ]; do
  ((suma+=i))
  ((i++))
 done
echo "la suma con until es : $suma"
