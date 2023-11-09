#!/bin/bash

# Verificar si se proporciona al menos un parámetro
if [ "$#" -lt 1 ]; then
    echo "Por favor, proporciona la ruta de un archivo o directorio como parámetro."
    exit 1
fi

# Obtener el primer parámetro (ruta del archivo o directorio)
ruta="$1"

# Verificar si la ruta existe
if [ -e "$ruta" ]; then
    # Verificar si es un archivo
    if [ -f "$ruta" ]; then
        echo "La ruta '$ruta' existe y es un archivo."
    # Verificar si es un directorio
    elif [ -d "$ruta" ]; then
        echo "La ruta '$ruta' existe y es un directorio."
    else
        echo "La ruta '$ruta' existe, pero no es ni un archivo ni un directorio."
    fi
else
    echo "La ruta '$ruta' no existe."
fi

