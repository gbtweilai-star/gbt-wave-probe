#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_wave_probe info
PYTHONPATH=src python -m gbt_wave_probe check --payload '{}'
PYTHONPATH=src python -m gbt_wave_probe run   --payload '{}'
