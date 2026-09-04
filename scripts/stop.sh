#!/bin/bash
set -euo pipefail

for service in "services"/*; do
    docker compose -f "$service/compose.yaml" down
done

sudo tailscale serve reset

clear
echo "❌ Stopped!"
