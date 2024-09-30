#!/bin/bash
if [ "$#" -lt 4 ] || [ "$#" -g 5 ]; then
  echo "error. lo correcto es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
exit 1
fi
accion=$1
nombre=$2
1apellido=$3
2apellido=$4
grupo=$5
 

