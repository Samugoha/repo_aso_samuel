#!/bin/bash

read -p "dime un directorio a comprimir:" directorio

fecha=$(date +"%Y-%m-%d")
archivo"${fecha}-$(basename "$directorio").tar.gz"
tar -czf "$archivo" "$directorio"

