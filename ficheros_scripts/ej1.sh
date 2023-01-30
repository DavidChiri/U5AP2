#! /bin/bash

# Lee el número de subdirectorios personal que se deben crear
num_subdirs=$1

# Lee los nombres desde el archivo nombres.txt
while read linea; do
  # Crea la estructura de directorios
  for i in $(seq 1 $num_subdirs); do
    mkdir -p $linea/personal$i
  done
done < nombres.txt
