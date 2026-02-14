# 🚀 RiPlEx Blueprint

Este es el esquema maestro de mi servidor multimedia y domótica basado en Debian 12.

## 📦 Stacks Incluidos
- **RiPlex**: Plex, Riven, Zilean y Jellyfin.
- **Infra**: Caddy, Pi-hole, Dockge y Homepage.
- **HA**: Home Assistant y Matter.
- **Servarr**: Radarr, Sonarr y Prowlarr.
- **Metas**: Shoko Server, Kometa y Meilisearch.
- **Market**: Changedetection.io con Playwright.

## 🛠️ Instalación
1. Clonar el repositorio.
2. Crear archivo `.env` basado en `.env.example`.
3. Levantar con `docker compose up -d`.

## 💾 Backups
Incluye un script (`backup_riplex.sh`) para respaldar las configuraciones en archivos comprimidos.
