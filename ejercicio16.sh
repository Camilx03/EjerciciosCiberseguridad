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
    echo "La ruta '$ruta' existe."
else
    echo "La ruta '$ruta' no existe."
fi

