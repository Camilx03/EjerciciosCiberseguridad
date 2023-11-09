#!/bin/bash

# Verificar si se proporciona al menos un parámetro
if [ "$#" -lt 1 ]; then
    echo "Por favor, proporciona la ruta del directorio como primer parámetro."
    exit 1
fi

# Obtener el primer parámetro (ruta del directorio a crear)
directorio_a_crear="$1"

# Crear el directorio y verificar si la creación fue exitosa
mkdir -p "$directorio_a_crear"
if [ $? -eq 0 ]; then
    echo "Directorio creado exitosamente: $directorio_a_crear"
else
    echo "Error al crear el directorio."
fi

