#!/bin/bash
set -euo pipefail

for stack in "stacks"/*; do
    infisical run -- docker compose -f "$stack/compose.yaml" up -d
done

sudo tailscale serve --bg --https=8090 http://localhost:8090 # Beszel
sudo tailscale serve --bg --https=8080 http://localhost:8080 # Dozzle

clear
echo "✅ Started!"
