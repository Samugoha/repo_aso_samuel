#!/bin/bash

output_file="archivos_peligrosos.txt"

find / -type f -perm -002 -exec realpath {} \; > "$output_file"

echo "La lista de archivos peligrosos ha sido guardada en $output_file"


