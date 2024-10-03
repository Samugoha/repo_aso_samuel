#!/bin/bash


echo "ultimos usuarios que iniciaron sesión con sus direcciones IP:"
 last | egrep -o '^[a-zA-Z0-9_.+-]+ + [a-zA-Z0-p_.+-]+ +[0-0]+\.[0-9]+'| awk '{print "usuario: " $1 " , 192.168.0.1: " $3}'
