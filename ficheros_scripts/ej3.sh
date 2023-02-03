#! /bin/bash

# Leer todas las líneas del archivo "listado.txt"
contenido=$(cat "listado.txt")

# Inicializar las variables para contar el número de usuarios y procesos
usuarios_linux=0
usuarios_windows=0
procesos_linux=0
procesos_windows=0

# Recorrer cada línea del archivo
for linea in $contenido; do
  # Separar la línea en tres partes: usuario, sistema operativo y número de procesos
  usuario=$(echo $linea | cut -d " " -f 1)
  sistema_operativo=$(echo $linea | cut -d " " -f 2)
  procesos=$(echo $linea | cut -d " " -f 3)

  # Contar el número de usuarios y procesos según el sistema operativo
  if [ "$sistema_operativo" == "Linux" ]; then
    usuarios_linux=$((usuarios_linux + 1))
    procesos_linux=$((procesos_linux + procesos))
  elif [ "$sistema_operativo" == "Windows" ]; then
    usuarios_windows=$((usuarios_windows + 1))
    procesos_windows=$((procesos_windows + procesos))
  fi
done

# Imprimir los resultados
echo "Número de usuarios con Linux y procesos: $usuarios_linux - $procesos_linux "
echo "Número de usuarios con Windows y procesos: $usuarios_windows - $procesos_windows "

