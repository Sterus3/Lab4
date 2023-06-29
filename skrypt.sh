#!/bin/bash

if [[ $1 == "--date" ]]; then
  echo "Dzisiejsza data: $(date +%d-%m-%Y)"

elif [[ $1 == "--logs" ]]; then
  wprowadzona_liczba=$2

  if [[ -z $wprowadzona_liczba ]]; then
    echo "Nie podano liczby plików. Po użyciu funkcji --logs, wpisz ilość plików, które chcesz utworzyć"
    exit 1
  fi

  for ((i=1; i<=$wprowadzona_liczba; i++)); do
    nazwa_pliku="log$i.txt"
    echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
    echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
    echo "Data utworzenia: $(date +%d-%m-%Y)" >> $nazwa_pliku
  done
fi

