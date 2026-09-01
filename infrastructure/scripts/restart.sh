#!/bin/bash
# SPDX-FileCopyrightText: 2026 Nuptials5178 <nuptials5178@ocd.beauty>
#
# SPDX-License-Identifier: AGPL-3.0-or-later
set -euo pipefail

scripts/stop.sh
scripts/start.sh

clear
echo "🔄 Restarted!"
