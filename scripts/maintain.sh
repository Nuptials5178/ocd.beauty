#!/bin/bash
# SPDX-FileCopyrightText: 2026 Nuptials5178 <nuptials5178@ocd.beauty>
#
# SPDX-License-Identifier: AGPL-3.0-or-later
set -euo pipefail

journalctl --vacuum-time=7d

sudo apt autoremove -y --purge
sudo apt clean

docker system prune -af
docker volume prune -f

clear
echo "🛠️ Maintained!"
