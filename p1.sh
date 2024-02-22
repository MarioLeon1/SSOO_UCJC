#!/bin/bash

# Verificamos que se proporcionan tres parámetros

if [ "$#" -ne 3 ]; then #$# representa el número de argumentos pasados al script y -ne es un operador de comparación que significa "no igual". 
    echo "Uso: $0 <carpeta> <archivo1> <archivo2>"
    exit 1
fi

# Asignamos parámetros a variables
carpeta="$1"
archivo1="$2"
archivo2="$3"

# Creamos una nueva carpeta
mkdir "$carpeta"
echo "Carpeta creada: $carpeta"

# Copiamos los archivos dentro de la carpeta
touch "$carpeta/$archivo1"
touch "$carpeta/$archivo2"
echo "Archivos creados: $archivo1, $archivo2"
