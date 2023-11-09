#!/bin/bash

# Verificar si se proporcionan al menos dos parámetros
if [ "$#" -lt 2 ]; then
    echo "Por favor, proporciona la ruta del archivo como segundo parámetro."
    exit 1
fi

# Obtener el segundo parámetro (ruta del archivo a mostrar)
archivo_a_mostrar="$2"

# Verificar si el archivo no existe
if [ ! -e "$archivo_a_mostrar" ]; then
    echo "El archivo no existe: $archivo_a_mostrar"
    exit 1
fi

# Verificar si no tienes permisos de lectura sobre el archivo
if [ ! -r "$archivo_a_mostrar" ]; then
    echo "No tienes permisos de lectura sobre el archivo: $archivo_a_mostrar"
    exit 1
fi

# Mostrar el contenido del archivo
cat "$archivo_a_mostrar"
exit_code=$?

# Imprimir el código de salida del comando cat
echo "Exit code: $exit_code"

