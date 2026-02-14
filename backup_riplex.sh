#!/bin/bash
FECHA=$(date +%Y-%m-%d_%H-%M)
DESTINO="/home/raynelv/backups"
NOMBRE_BACKUP="riplex_blueprint_$FECHA.tar.gz"
# Lista maestra de tus 6 carpetas
RUTAS=("/home/raynelv/riplex" "/home/raynelv/infra" "/home/raynelv/ha" "/home/raynelv/servarr" "/home/raynelv/market" "/home/raynelv/metas")

mkdir -p $DESTINO
echo "🚀 Iniciando respaldo total del ecosistema RiPlex..."

# Limpieza de archivos basura detectados en el análisis previo
rm -f /home/raynelv/riplex/GET /home/raynelv/riplex/Accept: /home/raynelv/riplex/Host: /home/raynelv/riplex/User-Agent: 2>/dev/null

# Comprimir (excluyendo datos pesados que no son configuración)
tar --exclude='*/cache' --exclude='*/transcodes' --exclude='*/shoko/logs' \
    -czf $DESTINO/$NOMBRE_BACKUP ${RUTAS[@]}

echo "✅ Respaldo completado: $DESTINO/$NOMBRE_BACKUP"
echo "📊 Tamaño: $(du -h $DESTINO/$NOMBRE_BACKUP | cut -f1)"
