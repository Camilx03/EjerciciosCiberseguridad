#!/bin/bash

# Verificar si se proporcionan al menos dos parámetros
if [ "$#" -lt 2 ]; then
    echo "Por favor, proporciona al menos dos parámetros."
    exit 1
fi

# Inicializar una cadena vacía para almacenar los parámetros
cadena_parametros=""

# Iterar sobre cada parámetro y agregarlo a la cadena
for parametro in "$@"; do
    cadena_parametros="$cadena_parametros $parametro"
done

# Imprimir la cadena que contiene todos los parámetros
echo "Parámetros introducidos: $cadena_parametros"

