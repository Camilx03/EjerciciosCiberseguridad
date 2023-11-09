#!/bin/bash

# Verificar si no se proporciona ningún parámetro
if [ "$#" -eq 0 ]; then
    echo "No has introducido ningún parámetro."
    exit 1
fi

# Imprimir el número de parámetros recibidos
echo "Número de parámetros recibidos: $#"

# Imprimir todos los parámetros recibidos
echo "Parámetros recibidos: $@"

