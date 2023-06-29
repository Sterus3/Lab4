#!/bin/bash

if [[ $1 == "-d" || $1 == "--date" ]]; then
  echo "Dzisiejsza data: $(date +%d-%m-%Y)"

elif [[ $1 == "-l" || $1 == "--logs" ]]; then
  wprowadzona_liczba=$2

  if [[ -z $wprowadzona_liczba ]]; then
    echo "Nie podano liczby plików. Po użyciu -l/--logs, podaj liczbę plików, które chcesz utworzyć"
    exit 1
  fi

  for ((i=1; i<=$wprowadzona_liczba; i++)); do
    nazwa_pliku="log$i.txt"
    echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
    echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
    echo "Data utworzenia: $(date +%d-%m-%Y)" >> $nazwa_pliku
  done

elif [[ $1 == "-h" || $1 == "--help" ]]; then
  echo "Dostępne opcje:"
  echo "# -d/--date: Wyświetla dzisiejszą datę."
  echo "# -l/--logs <liczba_plikow>: Tworzy określoną liczbę plików log."
  echo "# -h/--help: Wyświetla wszystkie dostępne opcje."

elif [[ $1 == "-e" || $1 == "--error" ]]; then
  wprowadzona_liczba=$2

  if [[ -z $wprowadzona_liczba ]]; then
    wprowadzona_liczba=100
  fi

  for ((i=1; i<=$wprowadzona_liczba; i++)); do
    nazwa_pliku="error$i/error$i.txt"
    mkdir "error$i"
    echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
    echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
    echo "Data utworzenia: $(date +%d-%m-%Y)" >> $nazwa_pliku
  done

fi

