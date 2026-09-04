#!/bin/bash
set -euo pipefail

scripts/stop.sh
scripts/start.sh

clear
echo "🔄 Restarted!"
