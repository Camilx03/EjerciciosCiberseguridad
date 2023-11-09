#!/bin/bash

# Verificar si se proporcionan al menos dos parámetros
if [ "$#" -lt 2 ]; then
    echo "Por favor, proporciona la ruta del directorio y la ruta del archivo como parámetros."
    exit 1
fi

# Obtener el primer parámetro (ruta del directorio a crear)
directorio_a_crear="$1"

# Verificar si el directorio ya existe
if [ -d "$directorio_a_crear" ]; then
    echo "El directorio '$directorio_a_crear' ya existe."
else
    # Crear el directorio si no existe
    mkdir -p "$directorio_a_crear"

    # Verificar si la creación del directorio fue exitosa
    if [ $? -eq 0 ]; then
        echo "Directorio no existe, creado exitosamente: $directorio_a_crear"
    else
        echo "Error al crear el directorio '$directorio_a_crear'."
        exit 1
    fi
fi

# Obtener el segundo parámetro (ruta del archivo a copiar)
archivo_a_copiar="$2"

# Copiar el archivo al directorio
cp "$archivo_a_copiar" "$directorio_a_crear"

# Verificar si la copia del archivo fue exitosa
if [ $? -eq 0 ]; then
    echo "Archivo copiado exitosamente a: $directorio_a_crear"
else
    echo "Error al copiar el archivo."
fi

