#!/bin/bash

if [[ $# -ne 2 ]] ;then
echo "ERROR parametro incorrecto"
 exit 1
fi
if [[ -f $1 ]]; then 
echo "el fichero es incorrecto"
else
 exit 1
fi


