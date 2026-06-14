#!/usr/bin/env bash
set -euo pipefail

DEST="${HOME}/.cursor/rules"
SRC="$(cd "$(dirname "$0")/rules" && pwd)"

mkdir -p "$DEST"

for f in "$SRC"/org-*.mdc; do
  name="$(basename "$f")"
  target="$DEST/$name"
  if [[ -L "$target" || -f "$target" ]]; then
    echo "skip (exists): $target"
  else
    ln -s "$f" "$target"
    echo "linked: $target -> $f"
  fi
done

echo ""
echo "Org rules installed. Keep superpowers-default.mdc or replace with org-superpowers-workflow.mdc."
echo "Team plan: paste team-rules/*.md into Cursor Dashboard -> Team Content."
