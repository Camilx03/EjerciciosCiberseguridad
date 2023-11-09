#!/bin/bash

# Verificar si se proporciona al menos un parámetro
if [ "$#" -lt 1 ]; then
    echo "Por favor, proporciona al menos un parámetro."
    exit 1
fi

# Establecer el separador de campos internos (IFS) como "|"
IFS="|"

# Imprimir todos los parámetros con el nuevo separador
echo "Parámetros introducidos: $*"

