#!/bin/bash

if [[ $1 == "--date" ]]; then
  echo "Dzisiejsza data: $(date +%d-%m-%Y)"

elif [[ $1 == "--logs" ]]; then
  for ((i=1; i<=100; i++)); do
    nazwa_pliku="log$i.txt"
    echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
    echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
    echo "Data utworzenia: $(date +%d-%m-%Y)" >> $nazwa_pliku
  done

fi

