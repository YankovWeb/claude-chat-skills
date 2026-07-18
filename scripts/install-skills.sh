#!/usr/bin/env bash
# Install skill folders for Claude / Cursor / Codex.
# Usage: ./scripts/install-skills.sh {claude|cursor|codex|agents} [target-dir] [--global]
# Claude.ai: upload packages/*.skill instead.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TOOL=""
TARGET="."
GLOBAL=0
for arg in "$@"; do
  case "$arg" in
    --global) GLOBAL=1 ;;
    claude|cursor|codex|agents) TOOL="$arg" ;;
    -*) echo "Unknown flag: $arg" >&2; exit 1 ;;
    *) TARGET="$arg" ;;
  esac
done
SKILLS=(
  analogy-engine assumption-xray decision-record explain-ladder
  fermi-dojo naming-forge negotiation-war-room premortem-ritual
  recall-forge red-team-my-text socratic-tutor steelman-arena
)
case "$TOOL" in
  claude) REL=".claude/skills" ;;
  cursor) REL=".cursor/skills" ;;
  codex)  REL=".codex/skills" ;;
  agents) REL=".agents/skills" ;;
  *)
    echo "Usage: $0 {claude|cursor|codex|agents} [target-dir] [--global]" >&2
    exit 1
    ;;
esac
if [[ "$GLOBAL" -eq 1 ]]; then DEST="$HOME/$REL"; else DEST="$TARGET/$REL"; fi
mkdir -p "$DEST"
for s in "${SKILLS[@]}"; do
  rm -rf "$DEST/$s"
  cp -R "$ROOT/$s" "$DEST/$s"
  echo "installed $s → $DEST/$s"
done
echo "Done ($TOOL)."
