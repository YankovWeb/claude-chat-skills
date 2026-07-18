#!/usr/bin/env bash
# Rebuild packages/*.skill from each skill folder. Maintainer only — not needed to install.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/packages"
mkdir -p "$OUT"
cd "$ROOT"
for dir in */; do
  name="${dir%/}"
  case "$name" in packages|scripts) continue ;; esac
  [[ -f "$name/SKILL.md" ]] || continue
  rm -f "$OUT/${name}.skill"
  zip -r -q "$OUT/${name}.skill" "$name"
  echo "packed $name"
done
echo "Done → packages/"
