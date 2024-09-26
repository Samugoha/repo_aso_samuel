#!/bin/bash

if [[ $# -ne 2 ]] ;then
echo "ERROR parametro incorrecto"
 exit 1
fi
if [[ -f $1 ]]; then
else 
echo "ERROR parametro incorrecto" 
 exit 1
