#!/bin/bash
set -euo pipefail

for service in "services"/*; do
    infisical run -- docker compose -f "$service/compose.yaml" up -d
done

sudo tailscale serve --bg --https=8090 http://localhost:8090 # Beszel
sudo tailscale serve --bg --https=8080 http://localhost:8080 # Dozzle

clear
echo "✅ Started!"
