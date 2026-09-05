#!/bin/bash
set -euo pipefail

for stack in "docker/stacks"/*; do
    docker compose -f "$stack/compose.yaml" down
done

sudo tailscale serve reset

clear
echo "❌ Stopped!"
