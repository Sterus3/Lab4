#!/bin/bash

if [[ $1 == "--date" ]]; then
  echo "Dzisiejsza data: $(date +%d-%m-%Y)"
fi
