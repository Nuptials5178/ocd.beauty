#!/bin/bash
# SPDX-FileCopyrightText: 2026 Nuptials5178 <nuptials5178@ocd.beauty>
#
# SPDX-License-Identifier: AGPL-3.0-or-later
set -euo pipefail

for stack in "docker/stacks"/*
do
  docker compose -f "$stack/compose.yaml" down
done

sudo tailscale serve reset

clear
echo "❌ Stopped!"
