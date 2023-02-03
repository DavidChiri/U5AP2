#! /bin/bash

# Leer todas las líneas del archivo "numeros.txt"
numeros=$(cat "numeros.txt")

# Dividir los números en pares e impares
pares=""
impares=""
for num in $numeros; do
  if [ $(($num % 2)) -eq 0 ]; then
    pares="$pares $num"
  else
    impares="$impares $num"
  fi
done

# Imprimir los resultados
echo "Números pares: $pares"
echo "Números impares: $impares"
echo "Total de números pares: $(echo $pares | wc -w)"
echo "Total de números impares: $(echo $impares | wc -w)"

