#!/bin/bash

# Verificar si se proporcionan al menos dos parámetros
if [ "$#" -lt 2 ]; then
    echo "Por favor, proporciona la ruta del directorio y la ruta del archivo como parámetros."
    exit 1
fi

# Obtener el primer parámetro (ruta del directorio a crear)
directorio_a_crear="$1"

# Obtener el segundo parámetro (ruta del archivo a copiar)
archivo_a_copiar="$2"

# Crear el directorio y verificar si la creación fue exitosa
mkdir -p "$directorio_a_crear"
if [ $? -eq 0 ]; then
    echo "Directorio creado exitosamente: $directorio_a_crear"
else
    echo "Error al crear el directorio."
    exit 1
fi

# Copiar el archivo al directorio y verificar si la copia fue exitosa
cp "$archivo_a_copiar" "$directorio_a_crear"
if [ $? -eq 0 ]; then
    echo "Archivo copiado exitosamente a: $directorio_a_crear"
else
    echo "Error al copiar el archivo."
fi

