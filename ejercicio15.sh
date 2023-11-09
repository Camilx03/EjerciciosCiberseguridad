#!/bin/bash

# Verificar si se proporcionan al menos dos parámetros
if [ "$#" -lt 2 ]; then
    echo "Por favor, proporciona al menos dos parámetros."
    exit 1
fi

# Imprimir el número de parámetros
echo "Número de parámetros: $#"

# Imprimir los primeros 10 parámetros (se deben acceder como $1, $2, ..., $9, ${10})
echo "Parámetro 1: $1"
echo "Parámetro 2: $2"
echo "Parámetro 3: $3"
echo "Parámetro 4: $4"
echo "Parámetro 5: $5"
echo "Parámetro 6: $6"
echo "Parámetro 7: $7"
echo "Parámetro 8: $8"
echo "Parámetro 9: $9"
echo "Parámetro 10: ${10}"

