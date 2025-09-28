#!/bin/bash
echo "🚀 Iniciando contenedor web..."

# Detener contenedor existente si está corriendo
docker stop mi_web 2>/dev/null || true

# Eliminar contenedor existente para evitar conflictos
docker rm mi_web 2>/dev/null || true

# Iniciar con docker-compose
docker-compose up -d

echo "✅ Listo! Abre: http://localhost:8080"
echo "📊 Ver estado: docker ps"
echo "📋 Ver logs: docker logs mi_web"
echo "🛑 Detener: docker-compose down"
