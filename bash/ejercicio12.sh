#!/bin/bash

hora=$(date  + "%H")

if [[ "$hora" -ge 8 ]] && [["$hora" -l 15 ]] ; then
  echo "Buenos dias"

fi 
elif [[ "$hora" -ge 15 ]] && ["$hora" -lt 15 ]]; then
  echo "buenas tardes"
 else 
  echo "buenas noches"
fi 
