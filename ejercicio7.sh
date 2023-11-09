#!/bin/bash

# Verificar si se proporciona al menos un parámetro
if [ "$#" -lt 1 ]; then
    echo "Por favor, proporciona al menos un parámetro."
    exit 1
fi

# Imprimir el primer parámetro sin salto de línea
echo -n "Parámetros introducidos: $1"

# Iterar sobre los parámetros restantes y agregarlos a la cadena con un guión
shift
while [ "$#" -gt 0 ]; do
    echo -n "-$1"
    shift
done

# Agregar un salto de línea al final para mejorar el formato
echo

