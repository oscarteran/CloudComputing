#!/bin/bash

# Función para convertir el nombre del servicio a un nombre de despliegue válido
get_valid_deployment_name() {
    local service_name="$1"
    # Convierte a minúsculas y reemplaza espacios y guiones con guiones bajos
    echo "${service_name,,}" | tr ' -' '_'
}

# Función para verificar la salida del comando de despliegue
check_deployment() {
    local service_name="$1"
    local config_file="$2"

    # Obtener un nombre de despliegue válido
    local deployment_name=$(get_valid_deployment_name "$service_name")

    echo "----------------------------------------------"
    echo "Begin $service_name Creation"
    
    # Ejecutamos el comando y guardamos la salida en una variable
    output=$(gcloud deployment-manager deployments create "$deployment_name-deploy" --config "$config_file" 2>&1)
    
    # Imprimimos la salida para referencia
    echo "$output"
    
    # Verificamos si hay errores en la salida
    #if echo "$output" | grep -q "STATE: COMPLETED" && ! echo "$output" | grep -q "ERRORS: \[.*\]"; then
    if echo "$output" | grep -q "completed successfully"; then 
        echo "$service_name created successfully"
        # Aquí puedes añadir acciones adicionales en caso de éxito
    else
        echo "$service_name creation failed"
        # Aquí puedes añadir acciones de recuperación en caso de fallo
        echo "Error details: $output"
    fi
    
    echo "----------------------------------------------"
}

echo "----------------------------------------------"
echo "-------------Begin deployment-----------------"
echo "----------------------------------------------"

# VPC Creation
check_deployment "VPC" "deployments/network.yaml"

# Cluster Creation
check_deployment "Cluster" "deployments/gke.yaml"

# PubSub Creation
check_deployment "PubSub" "deployments/pubsub.yaml"

# BigQuery Creation
check_deployment "BigQuery" "deployments/bigquery.yaml"

# Bucket Creation
check_deployment "Bucket" "deployments/bucket.yaml"

# Functions Creation (comentado en tu script original)
# check_deployment "Functions" "deployments/functions.yaml"

echo "----------------------------------------------"
echo "-------------End deployment-------------------"
echo "----------------------------------------------"