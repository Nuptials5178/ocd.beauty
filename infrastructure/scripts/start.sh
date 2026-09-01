#!/bin/bash
# SPDX-FileCopyrightText: 2026 Nuptials5178 <nuptials5178@ocd.beauty>
#
# SPDX-License-Identifier: AGPL-3.0-or-later
set -euo pipefail

for stack in "docker/stacks"/*
do
  infisical run --env=prod -- docker compose -f "$stack/compose.yaml" up -d
done

sudo tailscale serve --bg --https=8090 http://localhost:8090 # Beszel
sudo tailscale serve --bg --https=8080 http://localhost:8080 # Dozzle

clear
echo "✅ Started!"
